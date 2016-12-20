# swagger.api.AuthPermissionsApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://localhost:8080/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createPermissionUsingPOST**](AuthPermissionsApi.md#createPermissionUsingPOST) | **POST** /auth/permissions | Create a new permission
[**deletePermissionUsingDELETE**](AuthPermissionsApi.md#deletePermissionUsingDELETE) | **DELETE** /auth/permissions/{permission} | Delete a permission
[**getPermissionUsingGET**](AuthPermissionsApi.md#getPermissionUsingGET) | **GET** /auth/permissions/{permission} | Get a single permission
[**getPermissionUsingGET1**](AuthPermissionsApi.md#getPermissionUsingGET1) | **GET** /auth/permissions | List and search permissions
[**updatePermissionUsingPUT**](AuthPermissionsApi.md#updatePermissionUsingPUT) | **PUT** /auth/permissions/{permission} | Update a permission


# **createPermissionUsingPOST**
> PermissionResource createPermissionUsingPOST(permissionResource)

Create a new permission

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new AuthPermissionsApi();
var permissionResource = new PermissionResource(); // PermissionResource | The permission resource object

try { 
    var result = api_instance.createPermissionUsingPOST(permissionResource);
    print(result);
} catch (e) {
    print("Exception when calling AuthPermissionsApi->createPermissionUsingPOST: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **permissionResource** | [**PermissionResource**](PermissionResource.md)| The permission resource object | [optional] 

### Return type

[**PermissionResource**](PermissionResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deletePermissionUsingDELETE**
> deletePermissionUsingDELETE(permission, force)

Delete a permission

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new AuthPermissionsApi();
var permission = permission_example; // String | The permission value
var force = true; // bool | If true, removes permission assigned to roles

try { 
    api_instance.deletePermissionUsingDELETE(permission, force);
} catch (e) {
    print("Exception when calling AuthPermissionsApi->deletePermissionUsingDELETE: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **permission** | **String**| The permission value | 
 **force** | **bool**| If true, removes permission assigned to roles | [optional] 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPermissionUsingGET**
> PermissionResource getPermissionUsingGET(permission)

Get a single permission

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new AuthPermissionsApi();
var permission = permission_example; // String | The permission value

try { 
    var result = api_instance.getPermissionUsingGET(permission);
    print(result);
} catch (e) {
    print("Exception when calling AuthPermissionsApi->getPermissionUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **permission** | **String**| The permission value | 

### Return type

[**PermissionResource**](PermissionResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPermissionUsingGET1**
> Page«PermissionResource» getPermissionUsingGET1(size, page, order)

List and search permissions

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new AuthPermissionsApi();
var size = 56; // int | The number of objects returned per page
var page = 56; // int | The number of the page returned, starting with 1
var order = order_example; // String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]

try { 
    var result = api_instance.getPermissionUsingGET1(size, page, order);
    print(result);
} catch (e) {
    print("Exception when calling AuthPermissionsApi->getPermissionUsingGET1: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **String**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to permission:ASC]

### Return type

[**Page«PermissionResource»**](Page«PermissionResource».md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updatePermissionUsingPUT**
> updatePermissionUsingPUT(permission, permissionResource)

Update a permission

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new AuthPermissionsApi();
var permission = permission_example; // String | The permission value
var permissionResource = new PermissionResource(); // PermissionResource | The permission resource object

try { 
    api_instance.updatePermissionUsingPUT(permission, permissionResource);
} catch (e) {
    print("Exception when calling AuthPermissionsApi->updatePermissionUsingPUT: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **permission** | **String**| The permission value | 
 **permissionResource** | [**PermissionResource**](PermissionResource.md)| The permission resource object | [optional] 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

