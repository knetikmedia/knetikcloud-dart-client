# swagger.api.BRERuleEngineEventsApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://localhost:8080/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**sendBREEvent**](BRERuleEngineEventsApi.md#sendBREEvent) | **POST** /bre/events | Fire a new event, based on an existing trigger


# **sendBREEvent**
> sendBREEvent(breEvent)

Fire a new event, based on an existing trigger

Parameters within the event must match names and types from the trigger. Actual rule execution is asynchornous.

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new BRERuleEngineEventsApi();
var breEvent = new BreEvent(); // BreEvent | The BRE event object

try { 
    api_instance.sendBREEvent(breEvent);
} catch (e) {
    print("Exception when calling BRERuleEngineEventsApi->sendBREEvent: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **breEvent** | [**BreEvent**](BreEvent.md)| The BRE event object | [optional] 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

