import org.apache.tools.tar.TarEntry;
import org.apache.tools.tar.TarInputStream;
import org.apache.tools.tar.TarOutputStream;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.IOException;
import java.nio.channels.Channels;
import java.nio.channels.FileChannel;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.StandardCopyOption;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.TreeSet;
import java.util.zip.GZIPInputStream;

public final class PrepareOverlayTar {
  private static final int TAR_RECORD_SIZE = 512;
  private static final String OVERLAY_PREFIX = "__overlay__/";
  private static final String PLUGINS_PREFIX = "plugins/";
  private static final String[] PLATFORMS = {
    "mac.x64", "mac.aarch64", "unix.x64", "unix.aarch64", "win.x64", "win.aarch64"
  };

  public static void main(String[] args) throws IOException {
    if (args.length != 2) {
      throw new IllegalArgumentException("Usage: PrepareOverlayTar mps-platform.tar.gz output-directory");
    }

    Path source = Path.of(args[0]);
    Path outputDirectory = Path.of(args[1]);
    Files.createDirectories(outputDirectory);
    Map<String, Path> temporaryFiles = new LinkedHashMap<>();
    for (String platform : PLATFORMS) {
      temporaryFiles.put(platform, outputDirectory.resolve(platform + ".tar.tmp"));
    }

    try {
      TreeSet<String> symlinks = new TreeSet<>();
      Map<String, Integer> counts = new LinkedHashMap<>();
      try (TarOutputStream macX64 = open(temporaryFiles.get("mac.x64"));
           TarOutputStream macAarch64 = open(temporaryFiles.get("mac.aarch64"));
           TarOutputStream unixX64 = open(temporaryFiles.get("unix.x64"));
           TarOutputStream unixAarch64 = open(temporaryFiles.get("unix.aarch64"));
           TarOutputStream winX64 = open(temporaryFiles.get("win.x64"));
           TarOutputStream winAarch64 = open(temporaryFiles.get("win.aarch64"));
           TarInputStream input = new TarInputStream(
             new GZIPInputStream(new BufferedInputStream(Files.newInputStream(source))))) {
        Map<String, TarOutputStream> outputs = Map.of(
          "mac.x64", macX64, "mac.aarch64", macAarch64,
          "unix.x64", unixX64, "unix.aarch64", unixAarch64,
          "win.x64", winX64, "win.aarch64", winAarch64
        );

        TarEntry entry;
        while ((entry = input.getNextEntry()) != null) {
          String sourceName = entry.getName();
          if (!sourceName.startsWith(OVERLAY_PREFIX)) {
            continue;
          }
          int separator = sourceName.indexOf('/', OVERLAY_PREFIX.length());
          if (separator < 0 || separator == sourceName.length() - 1) {
            continue;
          }
          String platform = sourceName.substring(OVERLAY_PREFIX.length(), separator);
          TarOutputStream output = outputs.get(platform);
          if (output == null) {
            throw new IOException("Unknown overlay platform: " + platform);
          }
          String name = sourceName.substring(separator + 1);
          if (!name.startsWith(PLUGINS_PREFIX)) {
            throw new IOException("Unexpected overlay path: " + sourceName);
          }
          if (name.equals(PLUGINS_PREFIX)) {
            continue;
          }
          name = name.substring(PLUGINS_PREFIX.length());
          if (entry.isLink()) {
            String linkPrefix = OVERLAY_PREFIX + platform + "/" + PLUGINS_PREFIX;
            if (entry.getLinkName().startsWith(linkPrefix)) {
              entry.setLinkName(entry.getLinkName().substring(linkPrefix.length()));
            }
          }
          entry.setName(name);
          output.putNextEntry(entry);
          input.transferTo(output);
          output.closeEntry();
          counts.merge(platform, 1, Integer::sum);
          if (entry.isSymbolicLink()) {
            symlinks.add(platform + "/" + name + " -> " + entry.getLinkName());
          }
        }
      }

      for (Map.Entry<String, Path> item : temporaryFiles.entrySet()) {
        Path destination = outputDirectory.resolve(item.getKey() + ".tar");
        reorderBySize(item.getValue());
        Files.move(item.getValue(), destination, StandardCopyOption.REPLACE_EXISTING);
        Files.deleteIfExists(outputDirectory.resolve(item.getKey() + ".tar.gz"));
        System.out.println(item.getKey() + ": " + counts.getOrDefault(item.getKey(), 0) + " entries");
      }
      System.out.println("Overlay symlinks: " + symlinks);
    }
    finally {
      for (Path file : temporaryFiles.values()) {
        Files.deleteIfExists(file);
      }
    }
  }

  // Ant's <tarfileset src> re-reads the archive from the start for every entry, so small entries go first.
  // Temporary for 2026.2, until the platform build orders overlay entries itself.
  private static void reorderBySize(Path archive) throws IOException {
    Path sorted = archive.resolveSibling(archive.getFileName() + ".sorted");
    try {
      try (FileChannel source = FileChannel.open(archive);
           TarOutputStream output = open(sorted)) {
        // Tar input streams stay open: closing them would close the shared channel.
        List<EntryPosition> entries = new ArrayList<>();
        for (long offset = 0; ; ) {
          source.position(offset);
          // One-record blocks prevent reading ahead, keeping the data position exact.
          TarEntry entry = new TarInputStream(Channels.newInputStream(source), TAR_RECORD_SIZE).getNextEntry();
          if (entry == null) {
            break;
          }
          entries.add(new EntryPosition(offset, entry.getSize(), entry.isLink()));
          offset = source.position() + Math.ceilDiv(entry.getSize(), TAR_RECORD_SIZE) * TAR_RECORD_SIZE;
        }
        // The stable sort keeps directories (size 0) before their content; hard links must follow their targets.
        entries.sort(Comparator.comparing(EntryPosition::hardLink).thenComparingLong(EntryPosition::size));
        for (EntryPosition entry : entries) {
          source.position(entry.offset());
          TarInputStream input = new TarInputStream(Channels.newInputStream(source));
          output.putNextEntry(input.getNextEntry());
          input.transferTo(output);
          output.closeEntry();
        }
      }
      Files.move(sorted, archive, StandardCopyOption.REPLACE_EXISTING);
    }
    finally {
      Files.deleteIfExists(sorted);
    }
  }

  private record EntryPosition(long offset, long size, boolean hardLink) {}

  private static TarOutputStream open(Path path) throws IOException {
    TarOutputStream output = new TarOutputStream(new BufferedOutputStream(Files.newOutputStream(path)));
    output.setLongFileMode(TarOutputStream.LONGFILE_GNU);
    return output;
  }
}
