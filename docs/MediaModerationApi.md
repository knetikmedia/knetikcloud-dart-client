# swagger.api.MediaModerationApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://localhost:8080/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getFlagReportUsingGET**](MediaModerationApi.md#getFlagReportUsingGET) | **GET** /moderation/reports/{id} | Get a flag report
[**getFlagsReportUsingGET**](MediaModerationApi.md#getFlagsReportUsingGET) | **GET** /moderation/reports | Returns a page of flag reports
[**setFlagResolutionUsingPUT**](MediaModerationApi.md#setFlagResolutionUsingPUT) | **PUT** /moderation/reports/{id} | Update a flag report


# **getFlagReportUsingGET**
> getFlagReportUsingGET(id)

Get a flag report

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new MediaModerationApi();
var id = 789; // int | The flag report id

try { 
    api_instance.getFlagReportUsingGET(id);
} catch (e) {
    print("Exception when calling MediaModerationApi->getFlagReportUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The flag report id | 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getFlagsReportUsingGET**
> Page«FlagReportResource» getFlagsReportUsingGET(excludeResolved, filterContext, size, page)

Returns a page of flag reports

Context can be either a free-form string or a pre-defined context name

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new MediaModerationApi();
var excludeResolved = true; // bool | Ignore resolved context
var filterContext = filterContext_example; // String | Filter by moderation context
var size = 56; // int | The number of objects returned per page
var page = 56; // int | The number of the page returned, starting with 1

try { 
    var result = api_instance.getFlagsReportUsingGET(excludeResolved, filterContext, size, page);
    print(result);
} catch (e) {
    print("Exception when calling MediaModerationApi->getFlagsReportUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **excludeResolved** | **bool**| Ignore resolved context | [optional] [default to true]
 **filterContext** | **String**| Filter by moderation context | [optional] 
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]

### Return type

[**Page«FlagReportResource»**](Page«FlagReportResource».md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **setFlagResolutionUsingPUT**
> setFlagResolutionUsingPUT(id, flagReportResource)

Update a flag report

Lets you set the resolution of a report. Resolution types is {banned,ignore} in case of 'banned' you will need to pass the reason.

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new MediaModerationApi();
var id = 789; // int | The flag report id
var flagReportResource = new FlagReportResource(); // FlagReportResource | The new flag report

try { 
    api_instance.setFlagResolutionUsingPUT(id, flagReportResource);
} catch (e) {
    print("Exception when calling MediaModerationApi->setFlagResolutionUsingPUT: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The flag report id | 
 **flagReportResource** | [**FlagReportResource**](FlagReportResource.md)| The new flag report | [optional] 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

