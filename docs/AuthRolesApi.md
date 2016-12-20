# swagger.api.AuthRolesApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://localhost:8080/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**assignClientRolesUsingPUT**](AuthRolesApi.md#assignClientRolesUsingPUT) | **PUT** /auth/clients/{client_key}/roles | Set roles for a client
[**assignPermissionsUsingPUT**](AuthRolesApi.md#assignPermissionsUsingPUT) | **PUT** /auth/roles/{role}/permissions | Set permissions for a role
[**assignUserRolesExternalUsingPUT**](AuthRolesApi.md#assignUserRolesExternalUsingPUT) | **PUT** /auth/users/{user_id}/roles | Set roles for a user
[**createRoleUsingPOST**](AuthRolesApi.md#createRoleUsingPOST) | **POST** /auth/roles | Create a new role
[**deleteRoleUsingDELETE**](AuthRolesApi.md#deleteRoleUsingDELETE) | **DELETE** /auth/roles/{role} | Delete a role
[**getClientRolesUsingGET**](AuthRolesApi.md#getClientRolesUsingGET) | **GET** /auth/clients/{client_key}/roles | Get roles for a client
[**getRoleUsingGET**](AuthRolesApi.md#getRoleUsingGET) | **GET** /auth/roles/{role} | Get a single role
[**getRolesUsingGET**](AuthRolesApi.md#getRolesUsingGET) | **GET** /auth/roles | List and search roles
[**getUserRolesUsingGET**](AuthRolesApi.md#getUserRolesUsingGET) | **GET** /auth/users/{user_id}/roles | Get roles for a user
[**updateRoleUsingPUT**](AuthRolesApi.md#updateRoleUsingPUT) | **PUT** /auth/roles/{role} | Update a role


# **assignClientRolesUsingPUT**
> assignClientRolesUsingPUT(clientKey, rolesList)

Set roles for a client

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new AuthRolesApi();
var clientKey = clientKey_example; // String | The client key
var rolesList = [new List&lt;String&gt;()]; // List<String> | The list of unique roles

try { 
    api_instance.assignClientRolesUsingPUT(clientKey, rolesList);
} catch (e) {
    print("Exception when calling AuthRolesApi->assignClientRolesUsingPUT: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **clientKey** | **String**| The client key | 
 **rolesList** | **List&lt;String&gt;**| The list of unique roles | [optional] 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **assignPermissionsUsingPUT**
> assignPermissionsUsingPUT(role, permissionsList)

Set permissions for a role

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new AuthRolesApi();
var role = role_example; // String | The role value
var permissionsList = [new List&lt;String&gt;()]; // List<String> | The list of unique permissions

try { 
    api_instance.assignPermissionsUsingPUT(role, permissionsList);
} catch (e) {
    print("Exception when calling AuthRolesApi->assignPermissionsUsingPUT: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **role** | **String**| The role value | 
 **permissionsList** | **List&lt;String&gt;**| The list of unique permissions | [optional] 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **assignUserRolesExternalUsingPUT**
> assignUserRolesExternalUsingPUT(userId, rolesList)

Set roles for a user

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new AuthRolesApi();
var userId = 56; // int | The user's id
var rolesList = [new List&lt;String&gt;()]; // List<String> | The list of unique roles

try { 
    api_instance.assignUserRolesExternalUsingPUT(userId, rolesList);
} catch (e) {
    print("Exception when calling AuthRolesApi->assignUserRolesExternalUsingPUT: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **int**| The user&#39;s id | 
 **rolesList** | **List&lt;String&gt;**| The list of unique roles | [optional] 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createRoleUsingPOST**
> RoleResource createRoleUsingPOST(roleResource)

Create a new role

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new AuthRolesApi();
var roleResource = new RoleResource(); // RoleResource | The role resource object

try { 
    var result = api_instance.createRoleUsingPOST(roleResource);
    print(result);
} catch (e) {
    print("Exception when calling AuthRolesApi->createRoleUsingPOST: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **roleResource** | [**RoleResource**](RoleResource.md)| The role resource object | [optional] 

### Return type

[**RoleResource**](RoleResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteRoleUsingDELETE**
> deleteRoleUsingDELETE(role, force)

Delete a role

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new AuthRolesApi();
var role = role_example; // String | The role value
var force = true; // bool | If true, removes role from users/clients

try { 
    api_instance.deleteRoleUsingDELETE(role, force);
} catch (e) {
    print("Exception when calling AuthRolesApi->deleteRoleUsingDELETE: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **role** | **String**| The role value | 
 **force** | **bool**| If true, removes role from users/clients | [optional] 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getClientRolesUsingGET**
> List<RoleResource> getClientRolesUsingGET(clientKey)

Get roles for a client

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new AuthRolesApi();
var clientKey = clientKey_example; // String | The client key

try { 
    var result = api_instance.getClientRolesUsingGET(clientKey);
    print(result);
} catch (e) {
    print("Exception when calling AuthRolesApi->getClientRolesUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **clientKey** | **String**| The client key | 

### Return type

[**List<RoleResource>**](RoleResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getRoleUsingGET**
> RoleResource getRoleUsingGET(role)

Get a single role

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new AuthRolesApi();
var role = role_example; // String | The role value

try { 
    var result = api_instance.getRoleUsingGET(role);
    print(result);
} catch (e) {
    print("Exception when calling AuthRolesApi->getRoleUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **role** | **String**| The role value | 

### Return type

[**RoleResource**](RoleResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getRolesUsingGET**
> PageResource«RoleResource» getRolesUsingGET(size, page, order)

List and search roles

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new AuthRolesApi();
var size = 56; // int | The number of objects returned per page
var page = 56; // int | The number of the page returned, starting with 1
var order = order_example; // String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]

try { 
    var result = api_instance.getRolesUsingGET(size, page, order);
    print(result);
} catch (e) {
    print("Exception when calling AuthRolesApi->getRolesUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **String**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to name:ASC]

### Return type

[**PageResource«RoleResource»**](PageResource«RoleResource».md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUserRolesUsingGET**
> List<RoleResource> getUserRolesUsingGET(userId)

Get roles for a user

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new AuthRolesApi();
var userId = 56; // int | The user's id

try { 
    var result = api_instance.getUserRolesUsingGET(userId);
    print(result);
} catch (e) {
    print("Exception when calling AuthRolesApi->getUserRolesUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **int**| The user&#39;s id | 

### Return type

[**List<RoleResource>**](RoleResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateRoleUsingPUT**
> updateRoleUsingPUT(role, roleResource)

Update a role

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new AuthRolesApi();
var role = role_example; // String | The role value
var roleResource = new RoleResource(); // RoleResource | The role resource object

try { 
    api_instance.updateRoleUsingPUT(role, roleResource);
} catch (e) {
    print("Exception when calling AuthRolesApi->updateRoleUsingPUT: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **role** | **String**| The role value | 
 **roleResource** | [**RoleResource**](RoleResource.md)| The role resource object | [optional] 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

