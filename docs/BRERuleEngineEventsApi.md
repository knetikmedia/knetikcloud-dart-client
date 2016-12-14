# swagger.api.BRERuleEngineEventsApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://devsandbox.knetikcloud.com/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**fireEventUsingPOST**](BRERuleEngineEventsApi.md#fireEventUsingPOST) | **POST** /bre/events | Fire a new event, based on an existing trigger


# **fireEventUsingPOST**
> fireEventUsingPOST(breEvent, authentication)

Fire a new event, based on an existing trigger

Parameters within the event must match names and types from the trigger. Actual rule execution is asynchornous.

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new BRERuleEngineEventsApi();
var breEvent = new BreEvent(); // BreEvent | The BRE event object
var authentication = new OAuth2Authentication(); // OAuth2Authentication | The authentication object

try { 
    api_instance.fireEventUsingPOST(breEvent, authentication);
} catch (e) {
    print("Exception when calling BRERuleEngineEventsApi->fireEventUsingPOST: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **breEvent** | [**BreEvent**](BreEvent.md)| The BRE event object | [optional] 
 **authentication** | [**OAuth2Authentication**](OAuth2Authentication.md)| The authentication object | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

