/*
 * Copyright 2003-2022 JetBrains s.r.o.
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

import com.google.gson.Gson;
import org.apache.http.HttpResponse;
import org.apache.http.client.HttpClient;
import org.apache.http.client.config.RequestConfig;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.entity.ContentType;
import org.apache.http.entity.StringEntity;
import org.apache.http.entity.mime.MultipartEntityBuilder;
import org.apache.http.impl.client.HttpClients;
import org.apache.http.util.EntityUtils;
import org.jetbrains.annotations.Nullable;

import java.io.File;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public class Reporter {
  public static final String YOUTRACK_BASE_URL = "https://youtrack.jetbrains.com";
  private static final String ISSUE_BASE_URL = YOUTRACK_BASE_URL + "/issue/";        // add issue id and open browser with this URL

  private static final String AUTHORIZATION_HEADER = "Authorization";
  private static final String ACCEPT_HEADER = "Accept";
  private static final String CONTENT_TYPE_HEADER = "Content-Type";
  private static final String JSON_TYPE = "application/json";

  private static final String MPS_PROJECT = "MPS";
  private static final String MPS_PROJECT_ID = "22-10";
  private static final String MPS_TEAM_GROUP_ID = "673-3";        // "MPS Team", the project team of MPS

  private static final String AFFECTED_VERSIONS_FIELD = "Affected versions";
  private static final String AFFECTED_VERSIONS_FIELD_ID = "112-27";
  private static final String AFFECTED_VERSIONS_FIELD_TYPE = "MultiVersionIssueCustomField";
  private static final String SUBSYSTEM_FIELD = "Subsystem";
  private static final String SUBSYSTEM_FIELD_TYPE = "SingleEnumIssueCustomField";
  public static final String SUBSYSTEM_VERSION_CONTROL = "Version Control";
  private static final String TYPE_FIELD = "Type";
  private static final String TYPE_FIELD_TYPE = "SingleEnumIssueCustomField";
  public static final String TYPE_AUTOREPORTED_EXCEPTION = "Auto-reported Exception";
  public static final String TYPE_PROBLEM = "Problem";

  private static final String ISSUES = "/api/issues";
  private static final String ADD_ISSUE_URL = YOUTRACK_BASE_URL + ISSUES + "?fields=id,idReadable";
  private static final String LIST_VERSIONS_URL = YOUTRACK_BASE_URL + "/api/admin/customFieldSettings/customFields/" + AFFECTED_VERSIONS_FIELD_ID + "/instances?fields=project(id),bundle(values(name,id))";

  private static final String DEFAULT_AUTHORIZATION_TOKEN = "perm:bXBzZXhjZXB0aW9u.OTItMjYwNg==.w1IOC3x0H62oXeNCNb0qqzAHlrA7Vi";
  private static final int DEFAULT_TIMEOUT = 5000;

  private final String myAuthorizationToken;
  private final HttpClient myHttpClient;
  private final Gson myGson;

  public Reporter(@Nullable String authorizationToken) {
    myAuthorizationToken = authorizationToken != null ? authorizationToken : DEFAULT_AUTHORIZATION_TOKEN;
    myHttpClient = HttpClients.custom().setDefaultRequestConfig(RequestConfig.custom()
                                                                             .setConnectTimeout(DEFAULT_TIMEOUT)
                                                                             .setConnectionRequestTimeout(DEFAULT_TIMEOUT).build())
                              .build();
    myGson = new Gson();
  }

  public static String getIssueUrl(String idReadable) {
    return ISSUE_BASE_URL + idReadable;
  }

  public static String getAllIssuesUrl() {
    return YOUTRACK_BASE_URL + "issues/" + MPS_PROJECT;
  }

  private HttpResponse addHeadersAndExecute(HttpUriRequest method) throws IOException {
    method.addHeader(AUTHORIZATION_HEADER, "Bearer " + myAuthorizationToken);
    method.addHeader(ACCEPT_HEADER, JSON_TYPE);
    method.addHeader(CONTENT_TYPE_HEADER, JSON_TYPE);
    return myHttpClient.execute(method);
  }

  private API.VersionBundle getMPSVersions() throws IOException {
    HttpGet getMethod = new HttpGet(LIST_VERSIONS_URL);
    HttpResponse httpResponse = addHeadersAndExecute(getMethod);
    int statusCode = httpResponse.getStatusLine().getStatusCode();
    if (statusCode != 200) {
      throw new IOException("Can't get MPS Versions:\n" + EntityUtils.toString(httpResponse.getEntity()));
    }
    API.VersionProjectCustomField[] rsp = myGson.fromJson(new InputStreamReader(httpResponse.getEntity().getContent()), API.VersionProjectCustomField[].class);
    for (API.VersionProjectCustomField f : rsp) {
      if (MPS_PROJECT_ID.equals(f.project.id))  return f.bundle;
    }
    throw new IOException("Can't find MPS Versions:\n");
  }

  private API.Issue createIssue(API.Issue issue) throws IOException {
    HttpPost postMethod = new HttpPost(ADD_ISSUE_URL);
    String content = myGson.toJson(issue);
    postMethod.setEntity(new StringEntity(content, ContentType.APPLICATION_JSON));
    HttpResponse httpResponse = addHeadersAndExecute(postMethod);
    int statusCode = httpResponse.getStatusLine().getStatusCode();
    String responseString = EntityUtils.toString(httpResponse.getEntity());
    if (statusCode != 200) {
      throw new IOException("Can't create issue:\n" + responseString);
    }
    return myGson.fromJson(responseString, API.Issue.class);
  }

  private void attachFilesToIssue(String issueId, File[] files) throws IOException {
    HttpPost postMethod = new HttpPost(YOUTRACK_BASE_URL + ISSUES + "/" + issueId + "/attachments?fields=id,name");
    MultipartEntityBuilder builder = MultipartEntityBuilder.create();
    for (File file : files) {
      builder.addBinaryBody(file.getName(), file);
    }
    postMethod.setEntity(builder.build());
    postMethod.addHeader(AUTHORIZATION_HEADER, "Bearer " + myAuthorizationToken);
    HttpResponse httpResponse = myHttpClient.execute(postMethod);

    int statusCode = httpResponse.getStatusLine().getStatusCode();
    if (statusCode != 200) {
      throw new IOException("Can't attach files to issue:\n" + EntityUtils.toString(httpResponse.getEntity()));
    }
  }

  public String postIssue(String summary, String description, String affectedVersion, boolean hidden, @Nullable String type, @Nullable String subsystem, File... files) throws IOException {
    // prepare all fields except files
    API.Issue issue = new API.Issue();
    issue.project = new API.Project();
    issue.project.id = MPS_PROJECT_ID;
    issue.summary = summary;
    issue.description = description;

    // create array of custom fields
    List<API.IssueCustomField> customFields = new ArrayList<>();
    // Affected version
    if (affectedVersion != null) {
      API.IssueCustomField fieldVersion = new API.IssueCustomField();
      fieldVersion.name = AFFECTED_VERSIONS_FIELD;
      fieldVersion.$type = AFFECTED_VERSIONS_FIELD_TYPE;
      fieldVersion.value = new API.BundleElement[]{new API.BundleElement(affectedVersion)};
      customFields.add(fieldVersion);
    }
    // Type
    if (type != null) {
      API.IssueCustomField fieldType = new API.IssueCustomField();
      fieldType.name = TYPE_FIELD;
      fieldType.$type = TYPE_FIELD_TYPE;
      fieldType.value = new API.BundleElement(type);
      customFields.add(fieldType);
    }
    // Subsystem
    if (subsystem != null) {
      API.IssueCustomField fieldSubsystem = new API.IssueCustomField();
      fieldSubsystem.name = SUBSYSTEM_FIELD;
      fieldSubsystem.$type = SUBSYSTEM_FIELD_TYPE;
      fieldSubsystem.value = new API.BundleElement(subsystem);
      customFields.add(fieldSubsystem);
    }
    issue.customFields = customFields.toArray(new API.IssueCustomField[0]);

    if (hidden) {
      // YouTrack locates a user group in a request body by id only: ringId is read-only, and name is writable, hence
      // sending it next to the id would read as a request to rename the group.
      API.UserGroup group = new API.UserGroup();
      group.id = MPS_TEAM_GROUP_ID;

      issue.visibility = new API.LimitedVisibility();
      issue.visibility.permittedGroups = new API.UserGroup[] { group };
    }

    API.Issue issueCreated = createIssue(issue);

    // attach files to issue
    if (files.length > 0) {
      attachFilesToIssue(issueCreated.id, files);
    }
    return issueCreated.idReadable;
  }

  public boolean checkAffectedVersion(String version) throws IOException {
    for (API.VersionBundleElement element : getMPSVersions().values) {
      if (version.equals(element.name))  return true;
    }
    return false;
  }

  public void countUnresolvedIssues(Map<String, Integer> ignoredUsers2counts) {
    // do we need this test?
  }
}
