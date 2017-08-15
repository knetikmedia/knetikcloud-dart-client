# swagger.api.ReportingUsersApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://sandbox.knetikcloud.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getUserRegistrations**](ReportingUsersApi.md#getUserRegistrations) | **GET** /reporting/users/registrations | Get user registration info


# **getUserRegistrations**
> PageResource«AggregateCountResource» getUserRegistrations(granularity, startDate, endDate, size, page)

Get user registration info

Get user registration counts grouped by time range

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new ReportingUsersApi();
var granularity = granularity_example; // String | The time duration to aggregate by
var startDate = 789; // int | The start of the time range to aggregate, unix timestamp in seconds. Default is beginning of time
var endDate = 789; // int | The end of the time range to aggregate, unix timestamp in seconds. Default is end of time
var size = 56; // int | The number of objects returned per page
var page = 56; // int | The number of the page returned, starting with 1

try { 
    var result = api_instance.getUserRegistrations(granularity, startDate, endDate, size, page);
    print(result);
} catch (e) {
    print("Exception when calling ReportingUsersApi->getUserRegistrations: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **granularity** | **String**| The time duration to aggregate by | [optional] [default to day]
 **startDate** | **int**| The start of the time range to aggregate, unix timestamp in seconds. Default is beginning of time | [optional] 
 **endDate** | **int**| The end of the time range to aggregate, unix timestamp in seconds. Default is end of time | [optional] 
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]

### Return type

[**PageResource«AggregateCountResource»**](PageResource«AggregateCountResource».md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

