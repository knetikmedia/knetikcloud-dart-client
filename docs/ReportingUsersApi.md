# swagger.api.ReportingUsersApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://localhost:8080/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**executiveRevenueItemSalesUsingGET1**](ReportingUsersApi.md#executiveRevenueItemSalesUsingGET1) | **GET** /reporting/users/registrations | Get user registration info


# **executiveRevenueItemSalesUsingGET1**
> Page«AggregateCountResource» executiveRevenueItemSalesUsingGET1(granularity, startDate, endDate)

Get user registration info

Get user registration counts grouped by time range

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new ReportingUsersApi();
var granularity = granularity_example; // String | The time duration to aggregate by
var startDate = 789; // int | The start of the time range to aggregate, unix timestamp in seconds. Default is beginning of time
var endDate = 789; // int | The end of the time range to aggregate, unix timestamp in seconds. Default is end of time

try { 
    var result = api_instance.executiveRevenueItemSalesUsingGET1(granularity, startDate, endDate);
    print(result);
} catch (e) {
    print("Exception when calling ReportingUsersApi->executiveRevenueItemSalesUsingGET1: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **granularity** | **String**| The time duration to aggregate by | [optional] [default to day]
 **startDate** | **int**| The start of the time range to aggregate, unix timestamp in seconds. Default is beginning of time | [optional] 
 **endDate** | **int**| The end of the time range to aggregate, unix timestamp in seconds. Default is end of time | [optional] 

### Return type

[**Page«AggregateCountResource»**](Page«AggregateCountResource».md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

