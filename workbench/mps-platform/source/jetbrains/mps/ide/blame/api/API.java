/*
 * Copyright 2003-2021 JetBrains s.r.o.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package jetbrains.mps.ide.blame.api;

public class API {
  public static class Project {
    public String $type;
    public String id;
    public String name;
    public String shortName;
    public Project() {}
  }
  public static class Field {
    public String $type;
    public String id;
    public String name;
    public Field() {}
  }
  public static class CustomField {
    public String $type;
    public String id;
    public String name;
    public String emptyFieldText;
    public Boolean canBeEmpty;
    public Field field;
    public Project project;
    public CustomField() {}
  }
  public static class FieldValue {
    public String $type;
    public String id;
    public String name;
    public FieldValue() {}
  }
  public static class IssueCustomField {
    public String $type;
    public String id;
    public String name;
    public Object value;
    public IssueCustomField() {}
  }
  public static class SingleEnumIssueCustomField {
    public String name;
    public SingleEnumIssueCustomField() {}
  }
  public static class BundleElement {
    public String $type;
    public String id;
    public String name;
    public BundleElement() {}
    public BundleElement(String name) { this.name = name; }
  }
  public static class VersionBundleElement {
    String id;
    String name;
    public VersionBundleElement() {}
  }
  public static class VersionBundle {
    VersionBundleElement[] values;
    public VersionBundle() {}
  }
  public static class VersionProjectCustomField {
    public String $type;
    public String id;
    public String name;
    VersionBundle bundle;
    VersionBundleElement[] defaultValues;
    Project project;
    public String emptyFieldText;
    public Object value;
    public VersionProjectCustomField() {}
  }
  public static class IssueTag {
    public String id;
    public String name;
    public IssueTag() {}
  }
  public static class IssueAttachment {
    public String name;
    public String extension;
    public String base64Content;
    public String url;
    public LimitedVisibility visibility;
    public IssueAttachment() {}
  }
  public static class User {
    public String id;
    public String ringId;
    public String login;
    public String fullName;
    public User() {}
  }
  public static class UserGroup {
    public String $type;
    public String id;
    public String ringId;
    public String name;
    public Project teamForProject;
    public UserGroup() {}
  }
  public static class LimitedVisibility {
    public String $type = "LimitedVisibility";
    public UserGroup[] permittedGroups;
    public User[] permittedUsers;
    public LimitedVisibility() {}
  }
  public static class Issue {
    public String id;
    public String idReadable;
    public Project project;
    public String summary;
    public String description;
    public IssueTag[] tags;
    public LimitedVisibility visibility;
    public IssueCustomField[] customFields;
    public User reporter;
    public User updater;
    public IssueAttachment[] attachments;
    public Issue() {}
  }
}
