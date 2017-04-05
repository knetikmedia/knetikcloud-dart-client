# swagger.api.BRERuleEngineGlobalsApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://sandbox.knetikcloud.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createBREGlobal**](BRERuleEngineGlobalsApi.md#createBREGlobal) | **POST** /bre/globals/definitions | Create a global definition
[**deleteBREGlobal**](BRERuleEngineGlobalsApi.md#deleteBREGlobal) | **DELETE** /bre/globals/definitions/{id} | Delete a global
[**getBREGlobal**](BRERuleEngineGlobalsApi.md#getBREGlobal) | **GET** /bre/globals/definitions/{id} | Get a single global definition
[**getBREGlobals**](BRERuleEngineGlobalsApi.md#getBREGlobals) | **GET** /bre/globals/definitions | List global definitions
[**updateBREGlobal**](BRERuleEngineGlobalsApi.md#updateBREGlobal) | **PUT** /bre/globals/definitions/{id} | Update a global definition


# **createBREGlobal**
> BreGlobalResource createBREGlobal(breGlobalResource)

Create a global definition

Once created you can then use in a custom rule. Note that global definitions cannot be modified or deleted if in use.

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new BRERuleEngineGlobalsApi();
var breGlobalResource = new BreGlobalResource(); // BreGlobalResource | The BRE global resource object

try { 
    var result = api_instance.createBREGlobal(breGlobalResource);
    print(result);
} catch (e) {
    print("Exception when calling BRERuleEngineGlobalsApi->createBREGlobal: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **breGlobalResource** | [**BreGlobalResource**](BreGlobalResource.md)| The BRE global resource object | [optional] 

### Return type

[**BreGlobalResource**](BreGlobalResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteBREGlobal**
> deleteBREGlobal(id)

Delete a global

May fail if there are existing rules against it. Cannot delete core globals

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new BRERuleEngineGlobalsApi();
var id = id_example; // String | The id of the global definition

try { 
    api_instance.deleteBREGlobal(id);
} catch (e) {
    print("Exception when calling BRERuleEngineGlobalsApi->deleteBREGlobal: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the global definition | 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getBREGlobal**
> BreGlobalResource getBREGlobal(id)

Get a single global definition

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new BRERuleEngineGlobalsApi();
var id = id_example; // String | The id of the global definition

try { 
    var result = api_instance.getBREGlobal(id);
    print(result);
} catch (e) {
    print("Exception when calling BRERuleEngineGlobalsApi->getBREGlobal: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the global definition | 

### Return type

[**BreGlobalResource**](BreGlobalResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getBREGlobals**
> PageResource«BreGlobalResource» getBREGlobals(filterSystem, size, page)

List global definitions

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new BRERuleEngineGlobalsApi();
var filterSystem = true; // bool | Filter for globals that are system globals when true, or not when false. Leave off for both mixed
var size = 56; // int | The number of objects returned per page
var page = 56; // int | The number of the page returned, starting with 1

try { 
    var result = api_instance.getBREGlobals(filterSystem, size, page);
    print(result);
} catch (e) {
    print("Exception when calling BRERuleEngineGlobalsApi->getBREGlobals: $e\n");
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

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateBREGlobal**
> BreGlobalResource updateBREGlobal(id, breGlobalResource)

Update a global definition

May fail if new parameters mismatch requirements of existing rules. Cannot update core globals

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new BRERuleEngineGlobalsApi();
var id = id_example; // String | The id of the global definition
var breGlobalResource = new BreGlobalResource(); // BreGlobalResource | The BRE global resource object

try { 
    var result = api_instance.updateBREGlobal(id, breGlobalResource);
    print(result);
} catch (e) {
    print("Exception when calling BRERuleEngineGlobalsApi->updateBREGlobal: $e\n");
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

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

