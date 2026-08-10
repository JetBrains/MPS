package jetbrains.mps.ide.findusages.view;

import jetbrains.mps.ide.findusages.view.treeholder.treeview.ViewOptions;
import org.jdom.Element;
import org.junit.Test;

import static org.junit.Assert.assertFalse;
import static org.junit.Assert.assertTrue;

public class ViewOptionsTest {

  @Test
  public void freshInstanceHasVirtualPackageGroupingOff() {
    ViewOptions options = new ViewOptions();
    assertFalse(options.myVirtualPackage);
  }

  @Test
  public void writeThenReadRoundTripsTrue() {
    ViewOptions written = new ViewOptions();
    written.myVirtualPackage = true;
    Element element = new Element("state");
    written.write(element, null);

    ViewOptions read = new ViewOptions();
    read.myVirtualPackage = false;
    read.read(element, null);
    assertTrue(read.myVirtualPackage);
  }

  @Test
  public void writeThenReadRoundTripsFalse() {
    ViewOptions written = new ViewOptions();
    written.myVirtualPackage = false;
    Element element = new Element("state");
    written.write(element, null);

    ViewOptions read = new ViewOptions();
    read.myVirtualPackage = true;
    read.read(element, null);
    assertFalse(read.myVirtualPackage);
  }

  @Test
  public void readOfMissingAttributeDefaultsToTrue() {
    // Pre-feature saved state has no "virtual_package_option" attribute at all: the read() rule
    // grants default-on grouping so it does not silently regress for existing users.
    Element element = new Element("state");
    element.addContent(new Element("options"));

    ViewOptions options = new ViewOptions();
    options.myVirtualPackage = false;
    options.read(element, null);
    assertTrue(options.myVirtualPackage);
  }

  @Test
  public void setValuesCopiesVirtualPackageFlag() {
    ViewOptions source = new ViewOptions();
    source.myVirtualPackage = true;
    ViewOptions target = new ViewOptions();
    target.myVirtualPackage = false;

    target.setValues(source);
    assertTrue(target.myVirtualPackage);

    source.myVirtualPackage = false;
    target.setValues(source);
    assertFalse(target.myVirtualPackage);
  }
}
