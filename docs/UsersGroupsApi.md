# swagger.api.UsersGroupsApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://localhost:8080/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addGroupUsingPOST**](UsersGroupsApi.md#addGroupUsingPOST) | **POST** /users/groups | Adds a new group in the system
[**addMemberUsingPOST**](UsersGroupsApi.md#addMemberUsingPOST) | **POST** /users/groups/{unique_name}/members | Adds a new member to the group
[**createGroupTemplateUsingPOST**](UsersGroupsApi.md#createGroupTemplateUsingPOST) | **POST** /users/groups/templates | Create a group template
[**deleteGroupTemplateUsingDELETE**](UsersGroupsApi.md#deleteGroupTemplateUsingDELETE) | **DELETE** /users/groups/templates/{id} | Delete a group template
[**deleteGroupUsingDELETE**](UsersGroupsApi.md#deleteGroupUsingDELETE) | **DELETE** /users/groups/{unique_name}/members/{user_id} | Removes a user from a group
[**deleteGroupUsingDELETE1**](UsersGroupsApi.md#deleteGroupUsingDELETE1) | **DELETE** /users/groups/{unique_name} | Removes a group from the system IF no resources are attached to it
[**getGroupTemplateUsingGET**](UsersGroupsApi.md#getGroupTemplateUsingGET) | **GET** /users/groups/templates/{id} | Get a single group template
[**getGroupTemplatesUsingGET**](UsersGroupsApi.md#getGroupTemplatesUsingGET) | **GET** /users/groups/templates | List and search group templates
[**getGroupUsingGET**](UsersGroupsApi.md#getGroupUsingGET) | **GET** /users/groups/{unique_name} | Loads a specific group&#39;s details
[**searchGroupsUsingGET**](UsersGroupsApi.md#searchGroupsUsingGET) | **GET** /users/groups/{unique_name}/members | Lists members of the group
[**searchGroupsUsingGET1**](UsersGroupsApi.md#searchGroupsUsingGET1) | **GET** /users/groups | List and search groups
[**updateGroupTemplateUsingPUT**](UsersGroupsApi.md#updateGroupTemplateUsingPUT) | **PUT** /users/groups/templates/{id} | Update a group template
[**updateGroupUsingPUT**](UsersGroupsApi.md#updateGroupUsingPUT) | **PUT** /users/groups/{unique_name} | Modifies a group&#39;s details
[**updateMemberStatusUsingPUT**](UsersGroupsApi.md#updateMemberStatusUsingPUT) | **PUT** /users/groups/{unique_name}/members/{user_id}/status | Change a user&#39;s status


# **addGroupUsingPOST**
> GroupResource addGroupUsingPOST(groupResource)

Adds a new group in the system

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new UsersGroupsApi();
var groupResource = new GroupResource(); // GroupResource | The new group

try { 
    var result = api_instance.addGroupUsingPOST(groupResource);
    print(result);
} catch (e) {
    print("Exception when calling UsersGroupsApi->addGroupUsingPOST: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groupResource** | [**GroupResource**](GroupResource.md)| The new group | [optional] 

### Return type

[**GroupResource**](GroupResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **addMemberUsingPOST**
> GroupMemberResource addMemberUsingPOST(uniqueName, username)

Adds a new member to the group

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new UsersGroupsApi();
var uniqueName = uniqueName_example; // String | The group unique name
var username = new GroupMemberResource(); // GroupMemberResource | The username of a user to add to the group

try { 
    var result = api_instance.addMemberUsingPOST(uniqueName, username);
    print(result);
} catch (e) {
    print("Exception when calling UsersGroupsApi->addMemberUsingPOST: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uniqueName** | **String**| The group unique name | 
 **username** | [**GroupMemberResource**](GroupMemberResource.md)| The username of a user to add to the group | 

### Return type

[**GroupMemberResource**](GroupMemberResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createGroupTemplateUsingPOST**
> TemplateResource createGroupTemplateUsingPOST(groupTemplateResource)

Create a group template

Group Templates define a type of group and the properties they have

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new UsersGroupsApi();
var groupTemplateResource = new TemplateResource(); // TemplateResource | The group template resource object

try { 
    var result = api_instance.createGroupTemplateUsingPOST(groupTemplateResource);
    print(result);
} catch (e) {
    print("Exception when calling UsersGroupsApi->createGroupTemplateUsingPOST: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groupTemplateResource** | [**TemplateResource**](TemplateResource.md)| The group template resource object | [optional] 

### Return type

[**TemplateResource**](TemplateResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteGroupTemplateUsingDELETE**
> deleteGroupTemplateUsingDELETE(id, cascade)

Delete a group template

If cascade = 'detach', it will force delete the template even if it's attached to other objects

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new UsersGroupsApi();
var id = id_example; // String | The id of the template
var cascade = cascade_example; // String | The value needed to delete used templates

try { 
    api_instance.deleteGroupTemplateUsingDELETE(id, cascade);
} catch (e) {
    print("Exception when calling UsersGroupsApi->deleteGroupTemplateUsingDELETE: $e\n");
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

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteGroupUsingDELETE**
> deleteGroupUsingDELETE(uniqueName, userId)

Removes a user from a group

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new UsersGroupsApi();
var uniqueName = uniqueName_example; // String | The group unique name
var userId = 56; // int | The id of the user to remove

try { 
    api_instance.deleteGroupUsingDELETE(uniqueName, userId);
} catch (e) {
    print("Exception when calling UsersGroupsApi->deleteGroupUsingDELETE: $e\n");
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

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteGroupUsingDELETE1**
> deleteGroupUsingDELETE1(uniqueName)

Removes a group from the system IF no resources are attached to it

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new UsersGroupsApi();
var uniqueName = uniqueName_example; // String | The group unique name

try { 
    api_instance.deleteGroupUsingDELETE1(uniqueName);
} catch (e) {
    print("Exception when calling UsersGroupsApi->deleteGroupUsingDELETE1: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uniqueName** | **String**| The group unique name | 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getGroupTemplateUsingGET**
> TemplateResource getGroupTemplateUsingGET(id)

Get a single group template

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new UsersGroupsApi();
var id = id_example; // String | The id of the template

try { 
    var result = api_instance.getGroupTemplateUsingGET(id);
    print(result);
} catch (e) {
    print("Exception when calling UsersGroupsApi->getGroupTemplateUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the template | 

### Return type

[**TemplateResource**](TemplateResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getGroupTemplatesUsingGET**
> Page«TemplateResource» getGroupTemplatesUsingGET(size, page, order)

List and search group templates

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new UsersGroupsApi();
var size = 56; // int | The number of objects returned per page
var page = 56; // int | The number of the page returned, starting with 1
var order = order_example; // String | a comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]

try { 
    var result = api_instance.getGroupTemplatesUsingGET(size, page, order);
    print(result);
} catch (e) {
    print("Exception when calling UsersGroupsApi->getGroupTemplatesUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **String**| a comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to id:ASC]

### Return type

[**Page«TemplateResource»**](Page«TemplateResource».md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getGroupUsingGET**
> GroupResource getGroupUsingGET(uniqueName)

Loads a specific group's details

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new UsersGroupsApi();
var uniqueName = uniqueName_example; // String | The group unique name

try { 
    var result = api_instance.getGroupUsingGET(uniqueName);
    print(result);
} catch (e) {
    print("Exception when calling UsersGroupsApi->getGroupUsingGET: $e\n");
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
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchGroupsUsingGET**
> Page«GroupMemberResource» searchGroupsUsingGET(uniqueName, size, page, order)

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
    var result = api_instance.searchGroupsUsingGET(uniqueName, size, page, order);
    print(result);
} catch (e) {
    print("Exception when calling UsersGroupsApi->searchGroupsUsingGET: $e\n");
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

[**Page«GroupMemberResource»**](Page«GroupMemberResource».md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchGroupsUsingGET1**
> Page«GroupResource» searchGroupsUsingGET1(size, page, order)

List and search groups

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new UsersGroupsApi();
var size = 56; // int | The number of objects returned per page
var page = 56; // int | The number of the page returned, starting with 1
var order = order_example; // String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]

try { 
    var result = api_instance.searchGroupsUsingGET1(size, page, order);
    print(result);
} catch (e) {
    print("Exception when calling UsersGroupsApi->searchGroupsUsingGET1: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **String**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to name:ASC]

### Return type

[**Page«GroupResource»**](Page«GroupResource».md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateGroupTemplateUsingPUT**
> updateGroupTemplateUsingPUT(id, groupTemplateResource)

Update a group template

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new UsersGroupsApi();
var id = id_example; // String | The id of the template
var groupTemplateResource = new TemplateResource(); // TemplateResource | The group template resource object

try { 
    api_instance.updateGroupTemplateUsingPUT(id, groupTemplateResource);
} catch (e) {
    print("Exception when calling UsersGroupsApi->updateGroupTemplateUsingPUT: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the template | 
 **groupTemplateResource** | [**TemplateResource**](TemplateResource.md)| The group template resource object | [optional] 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateGroupUsingPUT**
> updateGroupUsingPUT(uniqueName, groupResource)

Modifies a group's details

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new UsersGroupsApi();
var uniqueName = uniqueName_example; // String | The group unique name
var groupResource = new GroupResource(); // GroupResource | The updated group

try { 
    api_instance.updateGroupUsingPUT(uniqueName, groupResource);
} catch (e) {
    print("Exception when calling UsersGroupsApi->updateGroupUsingPUT: $e\n");
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

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateMemberStatusUsingPUT**
> updateMemberStatusUsingPUT(uniqueName, userId, status)

Change a user's status

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new UsersGroupsApi();
var uniqueName = uniqueName_example; // String | The group unique name
var userId = 56; // int | The user id of the member to modify
var status = new String(); // String | The new status for the user

try { 
    api_instance.updateMemberStatusUsingPUT(uniqueName, userId, status);
} catch (e) {
    print("Exception when calling UsersGroupsApi->updateMemberStatusUsingPUT: $e\n");
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

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

