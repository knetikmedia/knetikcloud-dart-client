# swagger.api.Users_GroupsApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://jsapi-integration.us-east-1.elasticbeanstalk.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addMemberToGroup**](Users_GroupsApi.md#addMemberToGroup) | **POST** /users/groups/{unique_name}/members | Adds a new member to the group
[**addMembersToGroup**](Users_GroupsApi.md#addMembersToGroup) | **POST** /users/groups/{unique_name}/members/batch-add | Adds multiple members to the group
[**createGroup**](Users_GroupsApi.md#createGroup) | **POST** /users/groups | Create a group
[**createGroupMemberTemplate**](Users_GroupsApi.md#createGroupMemberTemplate) | **POST** /users/groups/members/templates | Create an group member template
[**createGroupTemplate**](Users_GroupsApi.md#createGroupTemplate) | **POST** /users/groups/templates | Create a group template
[**deleteGroup**](Users_GroupsApi.md#deleteGroup) | **DELETE** /users/groups/{unique_name} | Removes a group from the system
[**deleteGroupMemberTemplate**](Users_GroupsApi.md#deleteGroupMemberTemplate) | **DELETE** /users/groups/members/templates/{id} | Delete an group member template
[**deleteGroupTemplate**](Users_GroupsApi.md#deleteGroupTemplate) | **DELETE** /users/groups/templates/{id} | Delete a group template
[**disableGroupNotification**](Users_GroupsApi.md#disableGroupNotification) | **PUT** /users/groups/{unique_name}/members/{user_id}/messages/disabled | Enable or disable notification of group messages
[**getGroup**](Users_GroupsApi.md#getGroup) | **GET** /users/groups/{unique_name} | Loads a specific group&#39;s details
[**getGroupAncestors**](Users_GroupsApi.md#getGroupAncestors) | **GET** /users/groups/{unique_name}/ancestors | Get group ancestors
[**getGroupMember**](Users_GroupsApi.md#getGroupMember) | **GET** /users/groups/{unique_name}/members/{user_id} | Get a user from a group
[**getGroupMemberTemplate**](Users_GroupsApi.md#getGroupMemberTemplate) | **GET** /users/groups/members/templates/{id} | Get a single group member template
[**getGroupMemberTemplates**](Users_GroupsApi.md#getGroupMemberTemplates) | **GET** /users/groups/members/templates | List and search group member templates
[**getGroupMembers**](Users_GroupsApi.md#getGroupMembers) | **GET** /users/groups/{unique_name}/members | Lists members of the group
[**getGroupMessages**](Users_GroupsApi.md#getGroupMessages) | **GET** /users/groups/{unique_name}/messages | Get a list of group messages
[**getGroupTemplate**](Users_GroupsApi.md#getGroupTemplate) | **GET** /users/groups/templates/{id} | Get a single group template
[**getGroupTemplates**](Users_GroupsApi.md#getGroupTemplates) | **GET** /users/groups/templates | List and search group templates
[**getGroupsForUser**](Users_GroupsApi.md#getGroupsForUser) | **GET** /users/{user_id}/groups | List groups a user is in
[**listGroups**](Users_GroupsApi.md#listGroups) | **GET** /users/groups | List and search groups
[**postGroupMessage**](Users_GroupsApi.md#postGroupMessage) | **POST** /users/groups/{unique_name}/messages | Send a group message
[**removeGroupMember**](Users_GroupsApi.md#removeGroupMember) | **DELETE** /users/groups/{unique_name}/members/{user_id} | Removes a user from a group
[**updateGroup**](Users_GroupsApi.md#updateGroup) | **PUT** /users/groups/{unique_name} | Update a group
[**updateGroupMemberProperties**](Users_GroupsApi.md#updateGroupMemberProperties) | **PUT** /users/groups/{unique_name}/members/{user_id}/order | Change a user&#39;s order
[**updateGroupMemberProperties1**](Users_GroupsApi.md#updateGroupMemberProperties1) | **PUT** /users/groups/{unique_name}/members/{user_id}/properties | Change a user&#39;s membership properties
[**updateGroupMemberStatus**](Users_GroupsApi.md#updateGroupMemberStatus) | **PUT** /users/groups/{unique_name}/members/{user_id}/status | Change a user&#39;s status
[**updateGroupMemberTemplate**](Users_GroupsApi.md#updateGroupMemberTemplate) | **PUT** /users/groups/members/templates/{id} | Update an group member template
[**updateGroupTemplate**](Users_GroupsApi.md#updateGroupTemplate) | **PUT** /users/groups/templates/{id} | Update a group template


# **addMemberToGroup**
> GroupMemberResource addMemberToGroup(uniqueName, user)

Adds a new member to the group

<b>Permissions Needed:</b> GROUP_ADMIN or self if open

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new Users_GroupsApi();
var uniqueName = uniqueName_example; // String | The group unique name
var user = new GroupMemberResource(); // GroupMemberResource | The id and status for a user to add to the group

try { 
    var result = api_instance.addMemberToGroup(uniqueName, user);
    print(result);
} catch (e) {
    print("Exception when calling Users_GroupsApi->addMemberToGroup: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uniqueName** | **String**| The group unique name | 
 **user** | [**GroupMemberResource**](GroupMemberResource.md)| The id and status for a user to add to the group | 

### Return type

[**GroupMemberResource**](GroupMemberResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **addMembersToGroup**
> List<GroupMemberResource> addMembersToGroup(uniqueName, users)

Adds multiple members to the group

<b>Permissions Needed:</b> GROUP_ADMIN

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new Users_GroupsApi();
var uniqueName = uniqueName_example; // String | The group unique name
var users = [new List&lt;GroupMemberResource&gt;()]; // List<GroupMemberResource> | The id and status for a list of users to add to the group

try { 
    var result = api_instance.addMembersToGroup(uniqueName, users);
    print(result);
} catch (e) {
    print("Exception when calling Users_GroupsApi->addMembersToGroup: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uniqueName** | **String**| The group unique name | 
 **users** | [**List&lt;GroupMemberResource&gt;**](GroupMemberResource.md)| The id and status for a list of users to add to the group | 

### Return type

[**List<GroupMemberResource>**](GroupMemberResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createGroup**
> GroupResource createGroup(groupResource)

Create a group

<b>Permissions Needed:</b> GROUP_ADMIN

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new Users_GroupsApi();
var groupResource = new GroupResource(); // GroupResource | The new group

try { 
    var result = api_instance.createGroup(groupResource);
    print(result);
} catch (e) {
    print("Exception when calling Users_GroupsApi->createGroup: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groupResource** | [**GroupResource**](GroupResource.md)| The new group | [optional] 

### Return type

[**GroupResource**](GroupResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createGroupMemberTemplate**
> TemplateResource createGroupMemberTemplate(groupMemberTemplateResource)

Create an group member template

GroupMember Templates define a type of group member and the properties they have. <br><br><b>Permissions Needed:</b> TEMPLATE_ADMIN

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new Users_GroupsApi();
var groupMemberTemplateResource = new TemplateResource(); // TemplateResource | The group member template resource object

try { 
    var result = api_instance.createGroupMemberTemplate(groupMemberTemplateResource);
    print(result);
} catch (e) {
    print("Exception when calling Users_GroupsApi->createGroupMemberTemplate: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groupMemberTemplateResource** | [**TemplateResource**](TemplateResource.md)| The group member template resource object | [optional] 

### Return type

[**TemplateResource**](TemplateResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createGroupTemplate**
> TemplateResource createGroupTemplate(groupTemplateResource)

Create a group template

Group Templates define a type of group and the properties they have. <br><br><b>Permissions Needed:</b> TEMPLATE_ADMIN

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new Users_GroupsApi();
var groupTemplateResource = new TemplateResource(); // TemplateResource | The group template resource object

try { 
    var result = api_instance.createGroupTemplate(groupTemplateResource);
    print(result);
} catch (e) {
    print("Exception when calling Users_GroupsApi->createGroupTemplate: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groupTemplateResource** | [**TemplateResource**](TemplateResource.md)| The group template resource object | [optional] 

### Return type

[**TemplateResource**](TemplateResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteGroup**
> deleteGroup(uniqueName)

Removes a group from the system

All groups listing this as the parent are also removed and users are in turn removed from this and those groups. This may result in users no longer being in this group's parent if they were not added to it directly as well. <br><br><b>Permissions Needed:</b> GROUP_ADMIN

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new Users_GroupsApi();
var uniqueName = uniqueName_example; // String | The group unique name

try { 
    api_instance.deleteGroup(uniqueName);
} catch (e) {
    print("Exception when calling Users_GroupsApi->deleteGroup: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uniqueName** | **String**| The group unique name | 

### Return type

void (empty response body)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteGroupMemberTemplate**
> deleteGroupMemberTemplate(id, cascade)

Delete an group member template

If cascade = 'detach', it will force delete the template even if it's attached to other objects. <br><br><b>Permissions Needed:</b> TEMPLATE_ADMIN

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new Users_GroupsApi();
var id = id_example; // String | The id of the template
var cascade = cascade_example; // String | The value needed to delete used templates

try { 
    api_instance.deleteGroupMemberTemplate(id, cascade);
} catch (e) {
    print("Exception when calling Users_GroupsApi->deleteGroupMemberTemplate: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the template | 
 **cascade** | **String**| The value needed to delete used templates | [optional] 

### Return type

void (empty response body)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteGroupTemplate**
> deleteGroupTemplate(id, cascade)

Delete a group template

If cascade = 'detach', it will force delete the template even if it's attached to other objects. <br><br><b>Permissions Needed:</b> TEMPLATE_ADMIN

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new Users_GroupsApi();
var id = id_example; // String | The id of the template
var cascade = cascade_example; // String | The value needed to delete used templates

try { 
    api_instance.deleteGroupTemplate(id, cascade);
} catch (e) {
    print("Exception when calling Users_GroupsApi->deleteGroupTemplate: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the template | 
 **cascade** | **String**| The value needed to delete used templates | [optional] 

### Return type

void (empty response body)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **disableGroupNotification**
> disableGroupNotification(uniqueName, userId, disabled)

Enable or disable notification of group messages

<b>Permissions Needed:</b> TOPICS_ADMIN or self

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new Users_GroupsApi();
var uniqueName = uniqueName_example; // String | The group unique name
var userId = userId_example; // String | The user id of the member or 'me'
var disabled = new ValueWrapper«boolean»(); // ValueWrapper«boolean» | disabled

try { 
    api_instance.disableGroupNotification(uniqueName, userId, disabled);
} catch (e) {
    print("Exception when calling Users_GroupsApi->disableGroupNotification: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uniqueName** | **String**| The group unique name | 
 **userId** | **String**| The user id of the member or &#39;me&#39; | 
 **disabled** | [**ValueWrapper«boolean»**](ValueWrapper«boolean».md)| disabled | 

### Return type

void (empty response body)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getGroup**
> GroupResource getGroup(uniqueName)

Loads a specific group's details

<b>Permissions Needed:</b> ANY

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new Users_GroupsApi();
var uniqueName = uniqueName_example; // String | The group unique name

try { 
    var result = api_instance.getGroup(uniqueName);
    print(result);
} catch (e) {
    print("Exception when calling Users_GroupsApi->getGroup: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uniqueName** | **String**| The group unique name | 

### Return type

[**GroupResource**](GroupResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getGroupAncestors**
> List<GroupResource> getGroupAncestors(uniqueName)

Get group ancestors

Returns a list of ancestor groups in reverse order (parent, then grandparent, etc). <br><br><b>Permissions Needed:</b> ANY

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new Users_GroupsApi();
var uniqueName = uniqueName_example; // String | The group unique name

try { 
    var result = api_instance.getGroupAncestors(uniqueName);
    print(result);
} catch (e) {
    print("Exception when calling Users_GroupsApi->getGroupAncestors: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uniqueName** | **String**| The group unique name | 

### Return type

[**List<GroupResource>**](GroupResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getGroupMember**
> GroupMemberResource getGroupMember(uniqueName, userId)

Get a user from a group

<b>Permissions Needed:</b> ANY

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new Users_GroupsApi();
var uniqueName = uniqueName_example; // String | The group unique name
var userId = 56; // int | The id of the user

try { 
    var result = api_instance.getGroupMember(uniqueName, userId);
    print(result);
} catch (e) {
    print("Exception when calling Users_GroupsApi->getGroupMember: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uniqueName** | **String**| The group unique name | 
 **userId** | **int**| The id of the user | 

### Return type

[**GroupMemberResource**](GroupMemberResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getGroupMemberTemplate**
> TemplateResource getGroupMemberTemplate(id)

Get a single group member template

<b>Permissions Needed:</b> TEMPLATE_ADMIN or GROUP_ADMIN

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new Users_GroupsApi();
var id = id_example; // String | The id of the template

try { 
    var result = api_instance.getGroupMemberTemplate(id);
    print(result);
} catch (e) {
    print("Exception when calling Users_GroupsApi->getGroupMemberTemplate: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the template | 

### Return type

[**TemplateResource**](TemplateResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getGroupMemberTemplates**
> PageResource«TemplateResource» getGroupMemberTemplates(size, page, order)

List and search group member templates

<b>Permissions Needed:</b> TEMPLATE_ADMIN or GROUP_ADMIN

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new Users_GroupsApi();
var size = 56; // int | The number of objects returned per page
var page = 56; // int | The number of the page returned, starting with 1
var order = order_example; // String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]

try { 
    var result = api_instance.getGroupMemberTemplates(size, page, order);
    print(result);
} catch (e) {
    print("Exception when calling Users_GroupsApi->getGroupMemberTemplates: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **String**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to id:ASC]

### Return type

[**PageResource«TemplateResource»**](PageResource«TemplateResource».md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getGroupMembers**
> PageResource«GroupMemberResource» getGroupMembers(uniqueName, size, page, order)

Lists members of the group

<b>Permissions Needed:</b> ANY

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new Users_GroupsApi();
var uniqueName = uniqueName_example; // String | The group unique name
var size = 56; // int | The number of objects returned per page
var page = 56; // int | The number of the page returned, starting with 1
var order = order_example; // String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]

try { 
    var result = api_instance.getGroupMembers(uniqueName, size, page, order);
    print(result);
} catch (e) {
    print("Exception when calling Users_GroupsApi->getGroupMembers: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uniqueName** | **String**| The group unique name | 
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **String**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to order:ASC]

### Return type

[**PageResource«GroupMemberResource»**](PageResource«GroupMemberResource».md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getGroupMessages**
> PageResource«ChatMessageResource» getGroupMessages(uniqueName, size, page)

Get a list of group messages

<b>Permissions Needed:</b> ANY

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new Users_GroupsApi();
var uniqueName = uniqueName_example; // String | The group unique name
var size = 56; // int | The number of objects returned per page
var page = 56; // int | The number of the page returned, starting with 1

try { 
    var result = api_instance.getGroupMessages(uniqueName, size, page);
    print(result);
} catch (e) {
    print("Exception when calling Users_GroupsApi->getGroupMessages: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uniqueName** | **String**| The group unique name | 
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]

### Return type

[**PageResource«ChatMessageResource»**](PageResource«ChatMessageResource».md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getGroupTemplate**
> TemplateResource getGroupTemplate(id)

Get a single group template

<b>Permissions Needed:</b> TEMPLATE_ADMIN or GROUP_ADMIN

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new Users_GroupsApi();
var id = id_example; // String | The id of the template

try { 
    var result = api_instance.getGroupTemplate(id);
    print(result);
} catch (e) {
    print("Exception when calling Users_GroupsApi->getGroupTemplate: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the template | 

### Return type

[**TemplateResource**](TemplateResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getGroupTemplates**
> PageResource«TemplateResource» getGroupTemplates(size, page, order)

List and search group templates

<b>Permissions Needed:</b> TEMPLATE_ADMIN or GROUP_ADMIN

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new Users_GroupsApi();
var size = 56; // int | The number of objects returned per page
var page = 56; // int | The number of the page returned, starting with 1
var order = order_example; // String | a comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]

try { 
    var result = api_instance.getGroupTemplates(size, page, order);
    print(result);
} catch (e) {
    print("Exception when calling Users_GroupsApi->getGroupTemplates: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **String**| a comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to id:ASC]

### Return type

[**PageResource«TemplateResource»**](PageResource«TemplateResource».md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getGroupsForUser**
> List<String> getGroupsForUser(userId, filterChildren)

List groups a user is in

<b>Permissions Needed:</b> ANY

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new Users_GroupsApi();
var userId = 56; // int | The id of the user
var filterChildren = true; // bool | Whether to limit group list to children of groups only. If true, shows only groups with parents. If false, shows only groups with no parent.

try { 
    var result = api_instance.getGroupsForUser(userId, filterChildren);
    print(result);
} catch (e) {
    print("Exception when calling Users_GroupsApi->getGroupsForUser: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **int**| The id of the user | 
 **filterChildren** | **bool**| Whether to limit group list to children of groups only. If true, shows only groups with parents. If false, shows only groups with no parent. | [optional] 

### Return type

**List<String>**

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listGroups**
> PageResource«GroupResource» listGroups(filterTemplate, filterMemberCount, filterName, filterUniqueName, filterParent, filterStatus, size, page, order)

List and search groups

<b>Permissions Needed:</b> ANY

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new Users_GroupsApi();
var filterTemplate = filterTemplate_example; // String | Filter for groups using a specific template, by id
var filterMemberCount = filterMemberCount_example; // String | Filters groups by member count. Multiple values possible for range search. Format: filter_member_count=OP,ts&... where OP in (GT, LT, GOE, LOE, EQ). Ex: filter_member_count=GT,14,LT,17
var filterName = filterName_example; // String | Filter for groups with names starting with the given string
var filterUniqueName = filterUniqueName_example; // String | Filter for groups whose unique_name starts with provided string
var filterParent = filterParent_example; // String | Filter for groups with a specific parent, by unique name
var filterStatus = filterStatus_example; // String | Filter for groups with a certain status
var size = 56; // int | The number of objects returned per page
var page = 56; // int | The number of the page returned, starting with 1
var order = order_example; // String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]

try { 
    var result = api_instance.listGroups(filterTemplate, filterMemberCount, filterName, filterUniqueName, filterParent, filterStatus, size, page, order);
    print(result);
} catch (e) {
    print("Exception when calling Users_GroupsApi->listGroups: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterTemplate** | **String**| Filter for groups using a specific template, by id | [optional] 
 **filterMemberCount** | **String**| Filters groups by member count. Multiple values possible for range search. Format: filter_member_count&#x3D;OP,ts&amp;... where OP in (GT, LT, GOE, LOE, EQ). Ex: filter_member_count&#x3D;GT,14,LT,17 | [optional] 
 **filterName** | **String**| Filter for groups with names starting with the given string | [optional] 
 **filterUniqueName** | **String**| Filter for groups whose unique_name starts with provided string | [optional] 
 **filterParent** | **String**| Filter for groups with a specific parent, by unique name | [optional] 
 **filterStatus** | **String**| Filter for groups with a certain status | [optional] 
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **String**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to name:ASC]

### Return type

[**PageResource«GroupResource»**](PageResource«GroupResource».md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postGroupMessage**
> ChatMessageResource postGroupMessage(uniqueName, chatMessageRequest)

Send a group message

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new Users_GroupsApi();
var uniqueName = uniqueName_example; // String | The group unique name
var chatMessageRequest = new ChatMessageRequest(); // ChatMessageRequest | The chat message request

try { 
    var result = api_instance.postGroupMessage(uniqueName, chatMessageRequest);
    print(result);
} catch (e) {
    print("Exception when calling Users_GroupsApi->postGroupMessage: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uniqueName** | **String**| The group unique name | 
 **chatMessageRequest** | [**ChatMessageRequest**](ChatMessageRequest.md)| The chat message request | [optional] 

### Return type

[**ChatMessageResource**](ChatMessageResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **removeGroupMember**
> removeGroupMember(uniqueName, userId)

Removes a user from a group

<b>Permissions Needed:</b> GROUP_ADMIN or self if open

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new Users_GroupsApi();
var uniqueName = uniqueName_example; // String | The group unique name
var userId = 56; // int | The id of the user to remove

try { 
    api_instance.removeGroupMember(uniqueName, userId);
} catch (e) {
    print("Exception when calling Users_GroupsApi->removeGroupMember: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uniqueName** | **String**| The group unique name | 
 **userId** | **int**| The id of the user to remove | 

### Return type

void (empty response body)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateGroup**
> updateGroup(uniqueName, groupResource)

Update a group

If adding/removing/changing parent, user membership in group/new parent groups may be modified. The parent being removed will remove members from this sub group unless they were added explicitly to the parent and the new parent will gain members unless they were already a part of it. <br><br><b>Permissions Needed:</b> GROUP_ADMIN or admin of the group

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new Users_GroupsApi();
var uniqueName = uniqueName_example; // String | The group unique name
var groupResource = new GroupResource(); // GroupResource | The updated group

try { 
    api_instance.updateGroup(uniqueName, groupResource);
} catch (e) {
    print("Exception when calling Users_GroupsApi->updateGroup: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uniqueName** | **String**| The group unique name | 
 **groupResource** | [**GroupResource**](GroupResource.md)| The updated group | [optional] 

### Return type

void (empty response body)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateGroupMemberProperties**
> updateGroupMemberProperties(uniqueName, userId, order)

Change a user's order

<b>Permissions Needed:</b> GROUP_ADMIN

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new Users_GroupsApi();
var uniqueName = uniqueName_example; // String | The group unique name
var userId = 56; // int | The user id of the member to modify
var order = new StringWrapper(); // StringWrapper | The new order for the membership

try { 
    api_instance.updateGroupMemberProperties(uniqueName, userId, order);
} catch (e) {
    print("Exception when calling Users_GroupsApi->updateGroupMemberProperties: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uniqueName** | **String**| The group unique name | 
 **userId** | **int**| The user id of the member to modify | 
 **order** | [**StringWrapper**](StringWrapper.md)| The new order for the membership | 

### Return type

void (empty response body)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateGroupMemberProperties1**
> updateGroupMemberProperties1(uniqueName, userId, properties)

Change a user's membership properties

<b>Permissions Needed:</b> GROUP_ADMIN

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new Users_GroupsApi();
var uniqueName = uniqueName_example; // String | The group unique name
var userId = 56; // int | The user id of the member to modify
var properties = new Object(); // Object | The new properties for the membership

try { 
    api_instance.updateGroupMemberProperties1(uniqueName, userId, properties);
} catch (e) {
    print("Exception when calling Users_GroupsApi->updateGroupMemberProperties1: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uniqueName** | **String**| The group unique name | 
 **userId** | **int**| The user id of the member to modify | 
 **properties** | [**Object**](Object.md)| The new properties for the membership | 

### Return type

void (empty response body)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateGroupMemberStatus**
> updateGroupMemberStatus(uniqueName, userId, status)

Change a user's status

<b>Permissions Needed:</b> GROUP_ADMIN

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new Users_GroupsApi();
var uniqueName = uniqueName_example; // String | The group unique name
var userId = 56; // int | The user id of the member to modify
var status = new GroupMemberStatusWrapper(); // GroupMemberStatusWrapper | The new status for the user

try { 
    api_instance.updateGroupMemberStatus(uniqueName, userId, status);
} catch (e) {
    print("Exception when calling Users_GroupsApi->updateGroupMemberStatus: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uniqueName** | **String**| The group unique name | 
 **userId** | **int**| The user id of the member to modify | 
 **status** | [**GroupMemberStatusWrapper**](GroupMemberStatusWrapper.md)| The new status for the user | 

### Return type

void (empty response body)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateGroupMemberTemplate**
> TemplateResource updateGroupMemberTemplate(id, groupMemberTemplateResource)

Update an group member template

<b>Permissions Needed:</b> TEMPLATE_ADMIN

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new Users_GroupsApi();
var id = id_example; // String | The id of the template
var groupMemberTemplateResource = new TemplateResource(); // TemplateResource | The group member template resource object

try { 
    var result = api_instance.updateGroupMemberTemplate(id, groupMemberTemplateResource);
    print(result);
} catch (e) {
    print("Exception when calling Users_GroupsApi->updateGroupMemberTemplate: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the template | 
 **groupMemberTemplateResource** | [**TemplateResource**](TemplateResource.md)| The group member template resource object | [optional] 

### Return type

[**TemplateResource**](TemplateResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateGroupTemplate**
> TemplateResource updateGroupTemplate(id, groupTemplateResource)

Update a group template

<b>Permissions Needed:</b> TEMPLATE_ADMIN

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new Users_GroupsApi();
var id = id_example; // String | The id of the template
var groupTemplateResource = new TemplateResource(); // TemplateResource | The group template resource object

try { 
    var result = api_instance.updateGroupTemplate(id, groupTemplateResource);
    print(result);
} catch (e) {
    print("Exception when calling Users_GroupsApi->updateGroupTemplate: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the template | 
 **groupTemplateResource** | [**TemplateResource**](TemplateResource.md)| The group template resource object | [optional] 

### Return type

[**TemplateResource**](TemplateResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

