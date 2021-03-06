# swagger.api.Auth_PermissionsApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://jsapi-integration.us-east-1.elasticbeanstalk.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createPermission**](Auth_PermissionsApi.md#createPermission) | **POST** /auth/permissions | Create a new permission
[**deletePermission**](Auth_PermissionsApi.md#deletePermission) | **DELETE** /auth/permissions/{permission} | Delete a permission
[**getPermission**](Auth_PermissionsApi.md#getPermission) | **GET** /auth/permissions/{permission} | Get a single permission
[**getPermissions**](Auth_PermissionsApi.md#getPermissions) | **GET** /auth/permissions | List and search permissions
[**updatePermission**](Auth_PermissionsApi.md#updatePermission) | **PUT** /auth/permissions/{permission} | Update a permission


# **createPermission**
> PermissionResource createPermission(permissionResource)

Create a new permission

<b>Permissions Needed:</b> PERMISSIONS_ADMIN

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new Auth_PermissionsApi();
var permissionResource = new PermissionResource(); // PermissionResource | The permission resource object

try { 
    var result = api_instance.createPermission(permissionResource);
    print(result);
} catch (e) {
    print("Exception when calling Auth_PermissionsApi->createPermission: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **permissionResource** | [**PermissionResource**](PermissionResource.md)| The permission resource object | [optional] 

### Return type

[**PermissionResource**](PermissionResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deletePermission**
> deletePermission(permission, force)

Delete a permission

<b>Permissions Needed:</b> PERMISSIONS_ADMIN

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new Auth_PermissionsApi();
var permission = permission_example; // String | The permission value
var force = true; // bool | If true, removes permission assigned to roles

try { 
    api_instance.deletePermission(permission, force);
} catch (e) {
    print("Exception when calling Auth_PermissionsApi->deletePermission: $e\n");
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

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPermission**
> PermissionResource getPermission(permission)

Get a single permission

<b>Permissions Needed:</b> PERMISSIONS_ADMIN

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new Auth_PermissionsApi();
var permission = permission_example; // String | The permission value

try { 
    var result = api_instance.getPermission(permission);
    print(result);
} catch (e) {
    print("Exception when calling Auth_PermissionsApi->getPermission: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **permission** | **String**| The permission value | 

### Return type

[**PermissionResource**](PermissionResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPermissions**
> PageResource«PermissionResource» getPermissions(size, page, order)

List and search permissions

<b>Permissions Needed:</b> PERMISSIONS_ADMIN

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new Auth_PermissionsApi();
var size = 56; // int | The number of objects returned per page
var page = 56; // int | The number of the page returned, starting with 1
var order = order_example; // String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]

try { 
    var result = api_instance.getPermissions(size, page, order);
    print(result);
} catch (e) {
    print("Exception when calling Auth_PermissionsApi->getPermissions: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **String**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to permission:ASC]

### Return type

[**PageResource«PermissionResource»**](PageResource«PermissionResource».md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updatePermission**
> PermissionResource updatePermission(permission, permissionResource)

Update a permission

<b>Permissions Needed:</b> PERMISSIONS_ADMIN

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new Auth_PermissionsApi();
var permission = permission_example; // String | The permission value
var permissionResource = new PermissionResource(); // PermissionResource | The permission resource object

try { 
    var result = api_instance.updatePermission(permission, permissionResource);
    print(result);
} catch (e) {
    print("Exception when calling Auth_PermissionsApi->updatePermission: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **permission** | **String**| The permission value | 
 **permissionResource** | [**PermissionResource**](PermissionResource.md)| The permission resource object | [optional] 

### Return type

[**PermissionResource**](PermissionResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

