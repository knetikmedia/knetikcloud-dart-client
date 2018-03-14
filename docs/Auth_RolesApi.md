# swagger.api.Auth_RolesApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://jsapi-integration.us-east-1.elasticbeanstalk.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createRole**](Auth_RolesApi.md#createRole) | **POST** /auth/roles | Create a new role
[**deleteRole**](Auth_RolesApi.md#deleteRole) | **DELETE** /auth/roles/{role} | Delete a role
[**getClientRoles**](Auth_RolesApi.md#getClientRoles) | **GET** /auth/clients/{client_key}/roles | Get roles for a client
[**getRole**](Auth_RolesApi.md#getRole) | **GET** /auth/roles/{role} | Get a single role
[**getRoles**](Auth_RolesApi.md#getRoles) | **GET** /auth/roles | List and search roles
[**getUserRoles**](Auth_RolesApi.md#getUserRoles) | **GET** /auth/users/{user_id}/roles | Get roles for a user
[**setClientRoles**](Auth_RolesApi.md#setClientRoles) | **PUT** /auth/clients/{client_key}/roles | Set roles for a client
[**setPermissionsForRole**](Auth_RolesApi.md#setPermissionsForRole) | **PUT** /auth/roles/{role}/permissions | Set permissions for a role
[**setUserRoles**](Auth_RolesApi.md#setUserRoles) | **PUT** /auth/users/{user_id}/roles | Set roles for a user
[**updateRole**](Auth_RolesApi.md#updateRole) | **PUT** /auth/roles/{role} | Update a role


# **createRole**
> RoleResource createRole(roleResource)

Create a new role

<b>Permissions Needed:</b> ROLES_ADMIN

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new Auth_RolesApi();
var roleResource = new RoleResource(); // RoleResource | The role resource object

try { 
    var result = api_instance.createRole(roleResource);
    print(result);
} catch (e) {
    print("Exception when calling Auth_RolesApi->createRole: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **roleResource** | [**RoleResource**](RoleResource.md)| The role resource object | [optional] 

### Return type

[**RoleResource**](RoleResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteRole**
> deleteRole(role, force)

Delete a role

<b>Permissions Needed:</b> ROLES_ADMIN

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new Auth_RolesApi();
var role = role_example; // String | The role value
var force = true; // bool | If true, removes role from users/clients

try { 
    api_instance.deleteRole(role, force);
} catch (e) {
    print("Exception when calling Auth_RolesApi->deleteRole: $e\n");
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

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getClientRoles**
> List<RoleResource> getClientRoles(clientKey)

Get roles for a client

<b>Permissions Needed:</b> ROLES_ADMIN

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new Auth_RolesApi();
var clientKey = clientKey_example; // String | The client key

try { 
    var result = api_instance.getClientRoles(clientKey);
    print(result);
} catch (e) {
    print("Exception when calling Auth_RolesApi->getClientRoles: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **clientKey** | **String**| The client key | 

### Return type

[**List<RoleResource>**](RoleResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getRole**
> RoleResource getRole(role)

Get a single role

<b>Permissions Needed:</b> ROLES_ADMIN

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new Auth_RolesApi();
var role = role_example; // String | The role value

try { 
    var result = api_instance.getRole(role);
    print(result);
} catch (e) {
    print("Exception when calling Auth_RolesApi->getRole: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **role** | **String**| The role value | 

### Return type

[**RoleResource**](RoleResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getRoles**
> PageResource«RoleResource» getRoles(filterName, filterRole, size, page, order)

List and search roles

<b>Permissions Needed:</b> ROLES_ADMIN

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new Auth_RolesApi();
var filterName = filterName_example; // String | Filter for roles that have a name starting with specified string
var filterRole = filterRole_example; // String | Filter for roles that have a role starting with specified string
var size = 56; // int | The number of objects returned per page
var page = 56; // int | The number of the page returned, starting with 1
var order = order_example; // String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]

try { 
    var result = api_instance.getRoles(filterName, filterRole, size, page, order);
    print(result);
} catch (e) {
    print("Exception when calling Auth_RolesApi->getRoles: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterName** | **String**| Filter for roles that have a name starting with specified string | [optional] 
 **filterRole** | **String**| Filter for roles that have a role starting with specified string | [optional] 
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **String**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] 

### Return type

[**PageResource«RoleResource»**](PageResource«RoleResource».md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUserRoles**
> List<RoleResource> getUserRoles(userId)

Get roles for a user

<b>Permissions Needed:</b> ROLES_ADMIN

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new Auth_RolesApi();
var userId = 56; // int | The user's id

try { 
    var result = api_instance.getUserRoles(userId);
    print(result);
} catch (e) {
    print("Exception when calling Auth_RolesApi->getUserRoles: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **int**| The user&#39;s id | 

### Return type

[**List<RoleResource>**](RoleResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **setClientRoles**
> ClientResource setClientRoles(clientKey, rolesList)

Set roles for a client

<b>Permissions Needed:</b> ROLES_ADMIN

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new Auth_RolesApi();
var clientKey = clientKey_example; // String | The client key
var rolesList = [new List&lt;String&gt;()]; // List<String> | The list of unique roles

try { 
    var result = api_instance.setClientRoles(clientKey, rolesList);
    print(result);
} catch (e) {
    print("Exception when calling Auth_RolesApi->setClientRoles: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **clientKey** | **String**| The client key | 
 **rolesList** | **List&lt;String&gt;**| The list of unique roles | [optional] 

### Return type

[**ClientResource**](ClientResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **setPermissionsForRole**
> RoleResource setPermissionsForRole(role, permissionsList)

Set permissions for a role

<b>Permissions Needed:</b> ROLES_ADMIN

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new Auth_RolesApi();
var role = role_example; // String | The role value
var permissionsList = [new List&lt;String&gt;()]; // List<String> | The list of unique permissions

try { 
    var result = api_instance.setPermissionsForRole(role, permissionsList);
    print(result);
} catch (e) {
    print("Exception when calling Auth_RolesApi->setPermissionsForRole: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **role** | **String**| The role value | 
 **permissionsList** | **List&lt;String&gt;**| The list of unique permissions | [optional] 

### Return type

[**RoleResource**](RoleResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **setUserRoles**
> UserResource setUserRoles(userId, rolesList)

Set roles for a user

<b>Permissions Needed:</b> ROLES_ADMIN

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new Auth_RolesApi();
var userId = 56; // int | The user's id
var rolesList = [new List&lt;String&gt;()]; // List<String> | The list of unique roles

try { 
    var result = api_instance.setUserRoles(userId, rolesList);
    print(result);
} catch (e) {
    print("Exception when calling Auth_RolesApi->setUserRoles: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **int**| The user&#39;s id | 
 **rolesList** | **List&lt;String&gt;**| The list of unique roles | [optional] 

### Return type

[**UserResource**](UserResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateRole**
> RoleResource updateRole(role, roleResource)

Update a role

<b>Permissions Needed:</b> ROLES_ADMIN

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new Auth_RolesApi();
var role = role_example; // String | The role value
var roleResource = new RoleResource(); // RoleResource | The role resource object

try { 
    var result = api_instance.updateRole(role, roleResource);
    print(result);
} catch (e) {
    print("Exception when calling Auth_RolesApi->updateRole: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **role** | **String**| The role value | 
 **roleResource** | [**RoleResource**](RoleResource.md)| The role resource object | [optional] 

### Return type

[**RoleResource**](RoleResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

