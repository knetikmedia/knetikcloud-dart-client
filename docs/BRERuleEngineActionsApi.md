# swagger.api.BRERuleEngineActionsApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://localhost:8080/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getActionsUsingGET**](BRERuleEngineActionsApi.md#getActionsUsingGET) | **GET** /bre/actions | Get a list of available actions


# **getActionsUsingGET**
> List<ActionResource> getActionsUsingGET(filterCategory, filterName)

Get a list of available actions

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new BRERuleEngineActionsApi();
var filterCategory = filterCategory_example; // String | Filter for actions that are within a specific category
var filterName = filterName_example; // String | Filter for actions that have names containing the given string

try { 
    var result = api_instance.getActionsUsingGET(filterCategory, filterName);
    print(result);
} catch (e) {
    print("Exception when calling BRERuleEngineActionsApi->getActionsUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterCategory** | **String**| Filter for actions that are within a specific category | [optional] 
 **filterName** | **String**| Filter for actions that have names containing the given string | [optional] 

### Return type

[**List<ActionResource>**](ActionResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

