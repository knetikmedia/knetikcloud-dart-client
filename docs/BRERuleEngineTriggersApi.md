# swagger.api.BRERuleEngineTriggersApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://localhost:8080/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createTriggerUsingPOST**](BRERuleEngineTriggersApi.md#createTriggerUsingPOST) | **POST** /bre/triggers | Create a trigger
[**deleteTriggerUsingDELETE**](BRERuleEngineTriggersApi.md#deleteTriggerUsingDELETE) | **DELETE** /bre/triggers/{event_name} | Delete a trigger
[**getTriggerUsingGET**](BRERuleEngineTriggersApi.md#getTriggerUsingGET) | **GET** /bre/triggers/{event_name} | Get a single trigger
[**getTriggersUsingGET**](BRERuleEngineTriggersApi.md#getTriggersUsingGET) | **GET** /bre/triggers | List triggers
[**updateTriggerUsingPUT**](BRERuleEngineTriggersApi.md#updateTriggerUsingPUT) | **PUT** /bre/triggers/{event_name} | Update a trigger


# **createTriggerUsingPOST**
> BreTriggerResource createTriggerUsingPOST(breTriggerResource)

Create a trigger

Customer added triggers will not be fired automatically or have rules associated with them by default. Custom rules must be added to get use from the trigger and it must then be fired from the outside. See the Bre Event services

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new BRERuleEngineTriggersApi();
var breTriggerResource = new BreTriggerResource(); // BreTriggerResource | The BRE trigger resource object

try { 
    var result = api_instance.createTriggerUsingPOST(breTriggerResource);
    print(result);
} catch (e) {
    print("Exception when calling BRERuleEngineTriggersApi->createTriggerUsingPOST: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **breTriggerResource** | [**BreTriggerResource**](BreTriggerResource.md)| The BRE trigger resource object | [optional] 

### Return type

[**BreTriggerResource**](BreTriggerResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteTriggerUsingDELETE**
> deleteTriggerUsingDELETE(eventName)

Delete a trigger

May fail if there are existing rules against it. Cannot delete core triggers

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new BRERuleEngineTriggersApi();
var eventName = eventName_example; // String | The trigger event name

try { 
    api_instance.deleteTriggerUsingDELETE(eventName);
} catch (e) {
    print("Exception when calling BRERuleEngineTriggersApi->deleteTriggerUsingDELETE: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **eventName** | **String**| The trigger event name | 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTriggerUsingGET**
> BreTriggerResource getTriggerUsingGET(eventName)

Get a single trigger

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new BRERuleEngineTriggersApi();
var eventName = eventName_example; // String | The trigger event name

try { 
    var result = api_instance.getTriggerUsingGET(eventName);
    print(result);
} catch (e) {
    print("Exception when calling BRERuleEngineTriggersApi->getTriggerUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **eventName** | **String**| The trigger event name | 

### Return type

[**BreTriggerResource**](BreTriggerResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTriggersUsingGET**
> PageResource«BreTriggerResource» getTriggersUsingGET(filterSystem, filterCategory, filterName, size, page)

List triggers

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new BRERuleEngineTriggersApi();
var filterSystem = true; // bool | Filter for triggers that are system triggers when true, or not when false. Leave off for both mixed
var filterCategory = filterCategory_example; // String | Filter for triggers that are within a specific category
var filterName = filterName_example; // String | Filter for triggers that have names containing the given string
var size = 56; // int | The number of objects returned per page
var page = 56; // int | The number of the page returned, starting with 1

try { 
    var result = api_instance.getTriggersUsingGET(filterSystem, filterCategory, filterName, size, page);
    print(result);
} catch (e) {
    print("Exception when calling BRERuleEngineTriggersApi->getTriggersUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterSystem** | **bool**| Filter for triggers that are system triggers when true, or not when false. Leave off for both mixed | [optional] 
 **filterCategory** | **String**| Filter for triggers that are within a specific category | [optional] 
 **filterName** | **String**| Filter for triggers that have names containing the given string | [optional] 
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]

### Return type

[**PageResource«BreTriggerResource»**](PageResource«BreTriggerResource».md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateTriggerUsingPUT**
> updateTriggerUsingPUT(eventName, breTriggerResource)

Update a trigger

May fail if new parameters mismatch requirements of existing rules. Cannot update core triggers

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new BRERuleEngineTriggersApi();
var eventName = eventName_example; // String | The trigger event name
var breTriggerResource = new BreTriggerResource(); // BreTriggerResource | The BRE trigger resource object

try { 
    api_instance.updateTriggerUsingPUT(eventName, breTriggerResource);
} catch (e) {
    print("Exception when calling BRERuleEngineTriggersApi->updateTriggerUsingPUT: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **eventName** | **String**| The trigger event name | 
 **breTriggerResource** | [**BreTriggerResource**](BreTriggerResource.md)| The BRE trigger resource object | [optional] 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

