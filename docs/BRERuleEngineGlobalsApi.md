# swagger.api.BRERuleEngineGlobalsApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://localhost:8080/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createGlobalUsingPOST**](BRERuleEngineGlobalsApi.md#createGlobalUsingPOST) | **POST** /bre/globals/definitions | Create a global definition
[**deleteGlobalUsingDELETE**](BRERuleEngineGlobalsApi.md#deleteGlobalUsingDELETE) | **DELETE** /bre/globals/definitions/{id} | Delete a global
[**getGlobalUsingGET**](BRERuleEngineGlobalsApi.md#getGlobalUsingGET) | **GET** /bre/globals/definitions/{id} | Get a single global definition
[**getGlobalsUsingGET**](BRERuleEngineGlobalsApi.md#getGlobalsUsingGET) | **GET** /bre/globals/definitions | List global definitions
[**updateGlobalUsingPUT**](BRERuleEngineGlobalsApi.md#updateGlobalUsingPUT) | **PUT** /bre/globals/definitions/{id} | Update a global definition


# **createGlobalUsingPOST**
> BreGlobalResource createGlobalUsingPOST(breGlobalResource)

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
    var result = api_instance.createGlobalUsingPOST(breGlobalResource);
    print(result);
} catch (e) {
    print("Exception when calling BRERuleEngineGlobalsApi->createGlobalUsingPOST: $e\n");
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
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteGlobalUsingDELETE**
> deleteGlobalUsingDELETE(id)

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
    api_instance.deleteGlobalUsingDELETE(id);
} catch (e) {
    print("Exception when calling BRERuleEngineGlobalsApi->deleteGlobalUsingDELETE: $e\n");
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
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getGlobalUsingGET**
> BreGlobalResource getGlobalUsingGET(id)

Get a single global definition

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new BRERuleEngineGlobalsApi();
var id = id_example; // String | The id of the global definition

try { 
    var result = api_instance.getGlobalUsingGET(id);
    print(result);
} catch (e) {
    print("Exception when calling BRERuleEngineGlobalsApi->getGlobalUsingGET: $e\n");
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
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getGlobalsUsingGET**
> Page«BreGlobalResource» getGlobalsUsingGET(filterSystem, size, page)

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
    var result = api_instance.getGlobalsUsingGET(filterSystem, size, page);
    print(result);
} catch (e) {
    print("Exception when calling BRERuleEngineGlobalsApi->getGlobalsUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterSystem** | **bool**| Filter for globals that are system globals when true, or not when false. Leave off for both mixed | [optional] 
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]

### Return type

[**Page«BreGlobalResource»**](Page«BreGlobalResource».md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateGlobalUsingPUT**
> updateGlobalUsingPUT(id, breGlobalResource)

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
    api_instance.updateGlobalUsingPUT(id, breGlobalResource);
} catch (e) {
    print("Exception when calling BRERuleEngineGlobalsApi->updateGlobalUsingPUT: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the global definition | 
 **breGlobalResource** | [**BreGlobalResource**](BreGlobalResource.md)| The BRE global resource object | [optional] 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

