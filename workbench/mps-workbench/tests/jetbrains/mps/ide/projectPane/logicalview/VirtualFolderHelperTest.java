package jetbrains.mps.ide.projectPane.logicalview;

import org.junit.Test;

import java.util.*;
import java.util.function.Function;
import java.util.stream.Collectors;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertFalse;
import static org.junit.Assert.assertTrue;


public class VirtualFolderHelperTest {

    @Test
    public void testFoldersCreationAndStructure() {
        List<String> values = Arrays.asList("value1", "value2", "value3", "value4");
        Function<String, String> getVirtualFolder = value -> {
            switch (value) {
                case "value1": return "folder1.folder11";
                case "value2": return "folder1.folder12";
                case "value3": return "folder2";
                case "value4": return "";
                default: return ""; // top-level for everything else
            }
        };

        VirtualFolderHelper<String> helper = new VirtualFolderHelper<>(values, getVirtualFolder);

        // Assert correct folder hierarchy
        assertEquals(List.of("","folder1","folder1.folder11", "folder1.folder12", "folder2"),
                helper.allFolders("").collect(Collectors.toList())
        );

        // Assert "folder1" hierarchy
        List<String> folder1Children = helper.folders("folder1.").collect(Collectors.toList());
        assertEquals(List.of("folder1.folder11", "folder1.folder12"), folder1Children);
    }

    @Test
    public void testValuesInFolders() {
        List<String> values = Arrays.asList("value1", "value2", "value3");
        Function<String, String> getVirtualFolder = value -> {
            switch (value) {
                case "value1": return "folder1";
                case "value2": return "folder1.folder11";
                case "value3": return "folder2";
                default: return "";
            }
        };

        VirtualFolderHelper<String> helper = new VirtualFolderHelper<>(values, getVirtualFolder);

        // Assert values in folder1
        List<String> folder1Values = helper.values("folder1").collect(Collectors.toList());
        assertEquals(List.of("value1"), folder1Values);

        // Assert recursive folder structure
        List<String> allValuesInFolder1 = helper.allValues("folder1").collect(Collectors.toList());
        assertEquals(List.of("value1", "value2"), allValuesInFolder1);

        // Assert values in folder2
        assertEquals(List.of("value3"), helper.values("folder2").collect(Collectors.toList()));
    }

    @Test
    public void testAuxiliaryValues() {
        List<String> values = Arrays.asList("value1", "value2", "value3");
        Function<String, String> getVirtualFolder = value -> {
            switch (value) {
                case "value1": return "folder1";
                case "value2": return "folder1.folder11";
                case "value3": return "folder2";
                default: return "";
            }
        };

        Function<String, Collection<? extends String>> getAuxValues = value -> {
            if ("value1".equals(value)) return Collections.singleton("auxValue1");
            else if ("value2".equals(value)) return Arrays.asList("auxValue2", "auxValue3");
            else return Collections.emptyList();
        };

        VirtualFolderHelper<String> helper = new VirtualFolderHelper<String>(values, getVirtualFolder, getAuxValues);

        // Assert auxiliary values are accessible
      assertEquals(List.of("auxValue2", "auxValue3"), helper.auxValues("folder1.folder11").collect(Collectors.toList()));
      assertEquals(List.of("auxValue1"), helper.auxValues("folder1").collect(Collectors.toList()));
      assertEquals(List.of(), helper.auxValues("folder3").collect(Collectors.toList()));
    }

    @Test
    public void testVirtualFolderToPrefix() {
        List<String> values = Arrays.asList("value1", "value2");
        Function<String, String> getVirtualFolder = value -> "folder." + value;

        VirtualFolderHelper<String> helper = new VirtualFolderHelper<>(values, getVirtualFolder);

        // Assert correct mapping of virtual folder to prefix
        assertEquals("folder.", helper.virtualFolderToPrefix("folder"));
        assertEquals("folder.subfolder.", helper.virtualFolderToPrefix("folder.subfolder"));
        assertEquals("", helper.virtualFolderToPrefix(""));
    }

    @Test
    public void testEmptyFoldersAndValues() {
        List<String> values = Collections.emptyList(); // No values provided
        Function<String, String> getVirtualFolder = value -> "";

        VirtualFolderHelper<String> helper = new VirtualFolderHelper<>(values, getVirtualFolder);

        // Assert no folders exist
        assertTrue(helper.folders("").collect(Collectors.toList()).isEmpty());

        // Assert no values in any folder
        assertTrue(helper.values("").collect(Collectors.toList()).isEmpty());
    }

    @Test
    public void testDotPrefixedFolders() {
        List<String> values = Arrays.asList("value1", "value2", "value3", "value4");
        Function<String, String> getVirtualFolder = value -> {
            switch (value) {
                case "value1": return ".folder1.folder11";
                case "value2": return "folder1.folder12";
                case "value3": return ".folder2";
                case "value4": return ".";
                default: return ""; // top-level for everything else
            }
        };

        VirtualFolderHelper<String> helper = new VirtualFolderHelper<>(values, getVirtualFolder);

        // Assert correct folder hierarchy including dot-prefixed folders
        assertEquals(List.of("", "folder1", "folder1.folder11", "folder1.folder12", "folder2"),
                     helper.allFolders("").collect(Collectors.toList())
        );

        // Assert values in dot-prefixed folder
        assertEquals(List.of("value1"), helper.values("folder1.folder11").collect(Collectors.toList()));
        assertEquals(List.of("value2"), helper.allValues("folder1.folder12").collect(Collectors.toList()));

        // Assert values in normal folder
        assertEquals(List.of("value3"), helper.values("folder2").collect(Collectors.toList()));
    }

    @Test
    public void testFoldersWithConsecutiveDots() {
        List<String> values = Arrays.asList("value1", "value2", "value3");
        Function<String, String> getVirtualFolder = value -> {
            switch (value) {
                case "value1": return "folder..subfolder";
                case "value2": return "..folder2";
                case "value3": return "folder..";
                default:
                    return ""; // top-level for everything else
            }
        };

        VirtualFolderHelper<String> helper = new VirtualFolderHelper<>(values, getVirtualFolder);

        // Assert correct folder hierarchy for consecutive dots
        assertEquals(List.of("", "folder", "folder.subfolder", "folder2"), helper.allFolders("").collect(Collectors.toList()));

        // Assert values are correctly assigned for folders with consecutive dots
        assertEquals(List.of("value1"), helper.values("folder.subfolder").collect(Collectors.toList()));
        assertEquals(List.of("value2"), helper.values("folder2").collect(Collectors.toList()));
        assertEquals(List.of(), helper.values("folder..").collect(Collectors.toList()));
    }

    @Test
    public void testValueInVirtualFolder() {
        List<String> values = Arrays.asList("value1", "value2", "value3");
        Function<String, String> getVirtualFolder = value -> {
            switch (value) {
                case "value1": return "folder1.folder11";
                case "value2": return "folder11";
                case "value3": return "folder2";
                default: return "";
            }
        };
        Function<String, Collection<? extends String>> getAuxValues = value -> {
            if ("value1".equals(value) || "value3".equals(value)) return Collections.singleton("auxValue");
            return Collections.emptyList();
        };

        VirtualFolderHelper<String> helper = new VirtualFolderHelper<>(values, getVirtualFolder, getAuxValues);

        assertTrue(helper.isValueInVirtualFolder("value1", ""));
        assertTrue(helper.isValueInVirtualFolder("value1", "folder1"));
        assertTrue(helper.isValueInVirtualFolder("value1", "folder1.folder11"));
        assertTrue(helper.isValueInVirtualFolder("auxValue", "folder1"));
        assertTrue(helper.isValueInVirtualFolder("auxValue", "folder2"));
        assertFalse(helper.isValueInVirtualFolder("value1", "folder11"));
        assertFalse(helper.isValueInVirtualFolder("value2", "folder1"));
        assertFalse(helper.isValueInVirtualFolder("missing", ""));
    }

}
