# swagger.api.Rule_Engine_GlobalsApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://jsapi-integration.us-east-1.elasticbeanstalk.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createBREGlobal**](Rule_Engine_GlobalsApi.md#createBREGlobal) | **POST** /bre/globals/definitions | Create a global definition
[**deleteBREGlobal**](Rule_Engine_GlobalsApi.md#deleteBREGlobal) | **DELETE** /bre/globals/definitions/{id} | Delete a global
[**getBREGlobal**](Rule_Engine_GlobalsApi.md#getBREGlobal) | **GET** /bre/globals/definitions/{id} | Get a single global definition
[**getBREGlobals**](Rule_Engine_GlobalsApi.md#getBREGlobals) | **GET** /bre/globals/definitions | List global definitions
[**updateBREGlobal**](Rule_Engine_GlobalsApi.md#updateBREGlobal) | **PUT** /bre/globals/definitions/{id} | Update a global definition


# **createBREGlobal**
> BreGlobalResource createBREGlobal(breGlobalResource)

Create a global definition

Once created you can then use in a custom rule. Note that global definitions cannot be modified or deleted if in use. <br><br><b>Permissions Needed:</b> BRE_RULE_ENGINE_GLOBALS_ADMIN

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new Rule_Engine_GlobalsApi();
var breGlobalResource = new BreGlobalResource(); // BreGlobalResource | The BRE global resource object

try { 
    var result = api_instance.createBREGlobal(breGlobalResource);
    print(result);
} catch (e) {
    print("Exception when calling Rule_Engine_GlobalsApi->createBREGlobal: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **breGlobalResource** | [**BreGlobalResource**](BreGlobalResource.md)| The BRE global resource object | [optional] 

### Return type

[**BreGlobalResource**](BreGlobalResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteBREGlobal**
> deleteBREGlobal(id)

Delete a global

May fail if there are existing rules against it. Cannot delete core globals. <br><br><b>Permissions Needed:</b> BRE_RULE_ENGINE_GLOBALS_ADMIN

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new Rule_Engine_GlobalsApi();
var id = id_example; // String | The id of the global definition

try { 
    api_instance.deleteBREGlobal(id);
} catch (e) {
    print("Exception when calling Rule_Engine_GlobalsApi->deleteBREGlobal: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the global definition | 

### Return type

void (empty response body)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getBREGlobal**
> BreGlobalResource getBREGlobal(id)

Get a single global definition

<b>Permissions Needed:</b> BRE_RULE_ENGINE_GLOBALS_USER

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new Rule_Engine_GlobalsApi();
var id = id_example; // String | The id of the global definition

try { 
    var result = api_instance.getBREGlobal(id);
    print(result);
} catch (e) {
    print("Exception when calling Rule_Engine_GlobalsApi->getBREGlobal: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the global definition | 

### Return type

[**BreGlobalResource**](BreGlobalResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getBREGlobals**
> PageResource«BreGlobalResource» getBREGlobals(filterSystem, size, page)

List global definitions

<b>Permissions Needed:</b> BRE_RULE_ENGINE_GLOBALS_USER

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new Rule_Engine_GlobalsApi();
var filterSystem = true; // bool | Filter for globals that are system globals when true, or not when false. Leave off for both mixed
var size = 56; // int | The number of objects returned per page
var page = 56; // int | The number of the page returned, starting with 1

try { 
    var result = api_instance.getBREGlobals(filterSystem, size, page);
    print(result);
} catch (e) {
    print("Exception when calling Rule_Engine_GlobalsApi->getBREGlobals: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterSystem** | **bool**| Filter for globals that are system globals when true, or not when false. Leave off for both mixed | [optional] 
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]

### Return type

[**PageResource«BreGlobalResource»**](PageResource«BreGlobalResource».md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateBREGlobal**
> BreGlobalResource updateBREGlobal(id, breGlobalResource)

Update a global definition

May fail if new parameters mismatch requirements of existing rules. Cannot update core globals. <br><br><b>Permissions Needed:</b> BRE_RULE_ENGINE_GLOBALS_ADMIN

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new Rule_Engine_GlobalsApi();
var id = id_example; // String | The id of the global definition
var breGlobalResource = new BreGlobalResource(); // BreGlobalResource | The BRE global resource object

try { 
    var result = api_instance.updateBREGlobal(id, breGlobalResource);
    print(result);
} catch (e) {
    print("Exception when calling Rule_Engine_GlobalsApi->updateBREGlobal: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the global definition | 
 **breGlobalResource** | [**BreGlobalResource**](BreGlobalResource.md)| The BRE global resource object | [optional] 

### Return type

[**BreGlobalResource**](BreGlobalResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

