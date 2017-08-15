# swagger.api.UsersGroupsApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://sandbox.knetikcloud.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addMemberToGroup**](UsersGroupsApi.md#addMemberToGroup) | **POST** /users/groups/{unique_name}/members | Adds a new member to the group
[**addMembersToGroup**](UsersGroupsApi.md#addMembersToGroup) | **POST** /users/groups/{unique_name}/members/batch-add | Adds multiple members to the group
[**createGroup**](UsersGroupsApi.md#createGroup) | **POST** /users/groups | Create a group
[**createGroupTemplate**](UsersGroupsApi.md#createGroupTemplate) | **POST** /users/groups/templates | Create a group template
[**deleteGroup**](UsersGroupsApi.md#deleteGroup) | **DELETE** /users/groups/{unique_name} | Removes a group from the system IF no resources are attached to it
[**deleteGroupTemplate**](UsersGroupsApi.md#deleteGroupTemplate) | **DELETE** /users/groups/templates/{id} | Delete a group template
[**getGroup**](UsersGroupsApi.md#getGroup) | **GET** /users/groups/{unique_name} | Loads a specific group&#39;s details
[**getGroupMember**](UsersGroupsApi.md#getGroupMember) | **GET** /users/groups/{unique_name}/members/{user_id} | Get a user from a group
[**getGroupMembers**](UsersGroupsApi.md#getGroupMembers) | **GET** /users/groups/{unique_name}/members | Lists members of the group
[**getGroupTemplate**](UsersGroupsApi.md#getGroupTemplate) | **GET** /users/groups/templates/{id} | Get a single group template
[**getGroupTemplates**](UsersGroupsApi.md#getGroupTemplates) | **GET** /users/groups/templates | List and search group templates
[**getGroupsForUser**](UsersGroupsApi.md#getGroupsForUser) | **GET** /users/{user_id}/groups | List groups a user is in
[**removeGroupMember**](UsersGroupsApi.md#removeGroupMember) | **DELETE** /users/groups/{unique_name}/members/{user_id} | Removes a user from a group
[**updateGroup**](UsersGroupsApi.md#updateGroup) | **PUT** /users/groups/{unique_name} | Update a group
[**updateGroupMemberStatus**](UsersGroupsApi.md#updateGroupMemberStatus) | **PUT** /users/groups/{unique_name}/members/{user_id}/status | Change a user&#39;s status
[**updateGroupTemplate**](UsersGroupsApi.md#updateGroupTemplate) | **PUT** /users/groups/templates/{id} | Update a group template
[**updateGroups**](UsersGroupsApi.md#updateGroups) | **GET** /users/groups | List and search groups


# **addMemberToGroup**
> GroupMemberResource addMemberToGroup(uniqueName, user)

Adds a new member to the group

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new UsersGroupsApi();
var uniqueName = uniqueName_example; // String | The group unique name
var user = new GroupMemberResource(); // GroupMemberResource | The id and status for a user to add to the group

try { 
    var result = api_instance.addMemberToGroup(uniqueName, user);
    print(result);
} catch (e) {
    print("Exception when calling UsersGroupsApi->addMemberToGroup: $e\n");
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

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **addMembersToGroup**
> List<GroupMemberResource> addMembersToGroup(uniqueName, users)

Adds multiple members to the group

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new UsersGroupsApi();
var uniqueName = uniqueName_example; // String | The group unique name
var users = [new List&lt;GroupMemberResource&gt;()]; // List<GroupMemberResource> | The id and status for a list of users to add to the group

try { 
    var result = api_instance.addMembersToGroup(uniqueName, users);
    print(result);
} catch (e) {
    print("Exception when calling UsersGroupsApi->addMembersToGroup: $e\n");
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

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createGroup**
> GroupResource createGroup(groupResource)

Create a group

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new UsersGroupsApi();
var groupResource = new GroupResource(); // GroupResource | The new group

try { 
    var result = api_instance.createGroup(groupResource);
    print(result);
} catch (e) {
    print("Exception when calling UsersGroupsApi->createGroup: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groupResource** | [**GroupResource**](GroupResource.md)| The new group | [optional] 

### Return type

[**GroupResource**](GroupResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createGroupTemplate**
> TemplateResource createGroupTemplate(groupTemplateResource)

Create a group template

Group Templates define a type of group and the properties they have

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new UsersGroupsApi();
var groupTemplateResource = new TemplateResource(); // TemplateResource | The group template resource object

try { 
    var result = api_instance.createGroupTemplate(groupTemplateResource);
    print(result);
} catch (e) {
    print("Exception when calling UsersGroupsApi->createGroupTemplate: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groupTemplateResource** | [**TemplateResource**](TemplateResource.md)| The group template resource object | [optional] 

### Return type

[**TemplateResource**](TemplateResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteGroup**
> deleteGroup(uniqueName)

Removes a group from the system IF no resources are attached to it

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new UsersGroupsApi();
var uniqueName = uniqueName_example; // String | The group unique name

try { 
    api_instance.deleteGroup(uniqueName);
} catch (e) {
    print("Exception when calling UsersGroupsApi->deleteGroup: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uniqueName** | **String**| The group unique name | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteGroupTemplate**
> deleteGroupTemplate(id, cascade)

Delete a group template

If cascade = 'detach', it will force delete the template even if it's attached to other objects

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new UsersGroupsApi();
var id = id_example; // String | The id of the template
var cascade = cascade_example; // String | The value needed to delete used templates

try { 
    api_instance.deleteGroupTemplate(id, cascade);
} catch (e) {
    print("Exception when calling UsersGroupsApi->deleteGroupTemplate: $e\n");
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

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getGroup**
> GroupResource getGroup(uniqueName)

Loads a specific group's details

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new UsersGroupsApi();
var uniqueName = uniqueName_example; // String | The group unique name

try { 
    var result = api_instance.getGroup(uniqueName);
    print(result);
} catch (e) {
    print("Exception when calling UsersGroupsApi->getGroup: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uniqueName** | **String**| The group unique name | 

### Return type

[**GroupResource**](GroupResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getGroupMember**
> GroupMemberResource getGroupMember(uniqueName, userId)

Get a user from a group

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new UsersGroupsApi();
var uniqueName = uniqueName_example; // String | The group unique name
var userId = 56; // int | The id of the user

try { 
    var result = api_instance.getGroupMember(uniqueName, userId);
    print(result);
} catch (e) {
    print("Exception when calling UsersGroupsApi->getGroupMember: $e\n");
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

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getGroupMembers**
> PageResource«GroupMemberResource» getGroupMembers(uniqueName, size, page, order)

Lists members of the group

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new UsersGroupsApi();
var uniqueName = uniqueName_example; // String | The group unique name
var size = 56; // int | The number of objects returned per page
var page = 56; // int | The number of the page returned, starting with 1
var order = order_example; // String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]

try { 
    var result = api_instance.getGroupMembers(uniqueName, size, page, order);
    print(result);
} catch (e) {
    print("Exception when calling UsersGroupsApi->getGroupMembers: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uniqueName** | **String**| The group unique name | 
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **String**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to id:ASC]

### Return type

[**PageResource«GroupMemberResource»**](PageResource«GroupMemberResource».md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getGroupTemplate**
> TemplateResource getGroupTemplate(id)

Get a single group template

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new UsersGroupsApi();
var id = id_example; // String | The id of the template

try { 
    var result = api_instance.getGroupTemplate(id);
    print(result);
} catch (e) {
    print("Exception when calling UsersGroupsApi->getGroupTemplate: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the template | 

### Return type

[**TemplateResource**](TemplateResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getGroupTemplates**
> PageResource«TemplateResource» getGroupTemplates(size, page, order)

List and search group templates

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new UsersGroupsApi();
var size = 56; // int | The number of objects returned per page
var page = 56; // int | The number of the page returned, starting with 1
var order = order_example; // String | a comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]

try { 
    var result = api_instance.getGroupTemplates(size, page, order);
    print(result);
} catch (e) {
    print("Exception when calling UsersGroupsApi->getGroupTemplates: $e\n");
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

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getGroupsForUser**
> List<String> getGroupsForUser(userId)

List groups a user is in

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new UsersGroupsApi();
var userId = 56; // int | The id of the user

try { 
    var result = api_instance.getGroupsForUser(userId);
    print(result);
} catch (e) {
    print("Exception when calling UsersGroupsApi->getGroupsForUser: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **int**| The id of the user | 

### Return type

**List<String>**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **removeGroupMember**
> removeGroupMember(uniqueName, userId)

Removes a user from a group

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new UsersGroupsApi();
var uniqueName = uniqueName_example; // String | The group unique name
var userId = 56; // int | The id of the user to remove

try { 
    api_instance.removeGroupMember(uniqueName, userId);
} catch (e) {
    print("Exception when calling UsersGroupsApi->removeGroupMember: $e\n");
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

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateGroup**
> updateGroup(uniqueName, groupResource)

Update a group

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new UsersGroupsApi();
var uniqueName = uniqueName_example; // String | The group unique name
var groupResource = new GroupResource(); // GroupResource | The updated group

try { 
    api_instance.updateGroup(uniqueName, groupResource);
} catch (e) {
    print("Exception when calling UsersGroupsApi->updateGroup: $e\n");
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

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateGroupMemberStatus**
> updateGroupMemberStatus(uniqueName, userId, status)

Change a user's status

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new UsersGroupsApi();
var uniqueName = uniqueName_example; // String | The group unique name
var userId = 56; // int | The user id of the member to modify
var status = new String(); // String | The new status for the user

try { 
    api_instance.updateGroupMemberStatus(uniqueName, userId, status);
} catch (e) {
    print("Exception when calling UsersGroupsApi->updateGroupMemberStatus: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uniqueName** | **String**| The group unique name | 
 **userId** | **int**| The user id of the member to modify | 
 **status** | **String**| The new status for the user | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateGroupTemplate**
> TemplateResource updateGroupTemplate(id, groupTemplateResource)

Update a group template

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new UsersGroupsApi();
var id = id_example; // String | The id of the template
var groupTemplateResource = new TemplateResource(); // TemplateResource | The group template resource object

try { 
    var result = api_instance.updateGroupTemplate(id, groupTemplateResource);
    print(result);
} catch (e) {
    print("Exception when calling UsersGroupsApi->updateGroupTemplate: $e\n");
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

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateGroups**
> PageResource«GroupResource» updateGroups(filterTemplate, filterMemberCount, filterName, filterUniqueName, filterParent, filterStatus, size, page, order)

List and search groups

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new UsersGroupsApi();
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
    var result = api_instance.updateGroups(filterTemplate, filterMemberCount, filterName, filterUniqueName, filterParent, filterStatus, size, page, order);
    print(result);
} catch (e) {
    print("Exception when calling UsersGroupsApi->updateGroups: $e\n");
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

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

