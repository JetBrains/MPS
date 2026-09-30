import org.apache.tools.tar.TarEntry;
import org.apache.tools.tar.TarInputStream;
import org.apache.tools.tar.TarOutputStream;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.StandardCopyOption;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.TreeSet;
import java.util.zip.GZIPInputStream;

public final class PrepareOverlayTar {
  private static final String OVERLAY_PREFIX = "__overlay__/";
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
          if (!name.startsWith("plugins/")) {
            throw new IOException("Unexpected overlay path: " + sourceName);
          }
          if (entry.isLink()) {
            String linkPrefix = OVERLAY_PREFIX + platform + "/";
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
        Files.move(item.getValue(), destination, StandardCopyOption.REPLACE_EXISTING);
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

  private static TarOutputStream open(Path path) throws IOException {
    TarOutputStream output = new TarOutputStream(new BufferedOutputStream(Files.newOutputStream(path)));
    output.setLongFileMode(TarOutputStream.LONGFILE_GNU);
    return output;
  }
}
