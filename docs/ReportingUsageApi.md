# swagger.api.ReportingUsageApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://integration.knetikcloud.com/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getUsageByDay**](ReportingUsageApi.md#getUsageByDay) | **GET** /reporting/usage/day | Returns aggregated endpoint usage information by day
[**getUsageByHour**](ReportingUsageApi.md#getUsageByHour) | **GET** /reporting/usage/hour | Returns aggregated endpoint usage information by hour
[**getUsageByMinute**](ReportingUsageApi.md#getUsageByMinute) | **GET** /reporting/usage/minute | Returns aggregated endpoint usage information by minute
[**getUsageByMonth**](ReportingUsageApi.md#getUsageByMonth) | **GET** /reporting/usage/month | Returns aggregated endpoint usage information by month
[**getUsageByYear**](ReportingUsageApi.md#getUsageByYear) | **GET** /reporting/usage/year | Returns aggregated endpoint usage information by year


# **getUsageByDay**
> PageResource«UsageInfo» getUsageByDay(startDate, endDate, combineEndpoints, size, page)

Returns aggregated endpoint usage information by day

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new ReportingUsageApi();
var startDate = 789; // int | The beginning of the range being requested, unix timestamp in seconds
var endDate = 789; // int | The ending of the range being requested, unix timestamp in seconds
var combineEndpoints = true; // bool | Whether to combine counts from different endpoint. Removes the url and method from the result object
var size = 56; // int | The number of objects returned per page
var page = 56; // int | The number of the page returned, starting with 1

try { 
    var result = api_instance.getUsageByDay(startDate, endDate, combineEndpoints, size, page);
    print(result);
} catch (e) {
    print("Exception when calling ReportingUsageApi->getUsageByDay: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startDate** | **int**| The beginning of the range being requested, unix timestamp in seconds | 
 **endDate** | **int**| The ending of the range being requested, unix timestamp in seconds | 
 **combineEndpoints** | **bool**| Whether to combine counts from different endpoint. Removes the url and method from the result object | [optional] [default to false]
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]

### Return type

[**PageResource«UsageInfo»**](PageResource«UsageInfo».md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUsageByHour**
> PageResource«UsageInfo» getUsageByHour(startDate, endDate, combineEndpoints, size, page)

Returns aggregated endpoint usage information by hour

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new ReportingUsageApi();
var startDate = 789; // int | The beginning of the range being requested, unix timestamp in seconds
var endDate = 789; // int | The ending of the range being requested, unix timestamp in seconds
var combineEndpoints = true; // bool | Whether to combine counts from different endpoint. Removes the url and method from the result object
var size = 56; // int | The number of objects returned per page
var page = 56; // int | The number of the page returned, starting with 1

try { 
    var result = api_instance.getUsageByHour(startDate, endDate, combineEndpoints, size, page);
    print(result);
} catch (e) {
    print("Exception when calling ReportingUsageApi->getUsageByHour: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startDate** | **int**| The beginning of the range being requested, unix timestamp in seconds | 
 **endDate** | **int**| The ending of the range being requested, unix timestamp in seconds | 
 **combineEndpoints** | **bool**| Whether to combine counts from different endpoint. Removes the url and method from the result object | [optional] [default to false]
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]

### Return type

[**PageResource«UsageInfo»**](PageResource«UsageInfo».md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUsageByMinute**
> PageResource«UsageInfo» getUsageByMinute(startDate, endDate, combineEndpoints, size, page)

Returns aggregated endpoint usage information by minute

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new ReportingUsageApi();
var startDate = 789; // int | The beginning of the range being requested, unix timestamp in seconds
var endDate = 789; // int | The ending of the range being requested, unix timestamp in seconds
var combineEndpoints = true; // bool | Whether to combine counts from different endpoint. Removes the url and method from the result object
var size = 56; // int | The number of objects returned per page
var page = 56; // int | The number of the page returned, starting with 1

try { 
    var result = api_instance.getUsageByMinute(startDate, endDate, combineEndpoints, size, page);
    print(result);
} catch (e) {
    print("Exception when calling ReportingUsageApi->getUsageByMinute: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startDate** | **int**| The beginning of the range being requested, unix timestamp in seconds | 
 **endDate** | **int**| The ending of the range being requested, unix timestamp in seconds | 
 **combineEndpoints** | **bool**| Whether to combine counts from different endpoint. Removes the url and method from the result object | [optional] [default to false]
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]

### Return type

[**PageResource«UsageInfo»**](PageResource«UsageInfo».md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUsageByMonth**
> PageResource«UsageInfo» getUsageByMonth(startDate, endDate, combineEndpoints, size, page)

Returns aggregated endpoint usage information by month

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new ReportingUsageApi();
var startDate = 789; // int | The beginning of the range being requested, unix timestamp in seconds
var endDate = 789; // int | The ending of the range being requested, unix timestamp in seconds
var combineEndpoints = true; // bool | Whether to combine counts from different endpoint. Removes the url and method from the result object
var size = 56; // int | The number of objects returned per page
var page = 56; // int | The number of the page returned, starting with 1

try { 
    var result = api_instance.getUsageByMonth(startDate, endDate, combineEndpoints, size, page);
    print(result);
} catch (e) {
    print("Exception when calling ReportingUsageApi->getUsageByMonth: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startDate** | **int**| The beginning of the range being requested, unix timestamp in seconds | 
 **endDate** | **int**| The ending of the range being requested, unix timestamp in seconds | 
 **combineEndpoints** | **bool**| Whether to combine counts from different endpoint. Removes the url and method from the result object | [optional] [default to false]
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]

### Return type

[**PageResource«UsageInfo»**](PageResource«UsageInfo».md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUsageByYear**
> PageResource«UsageInfo» getUsageByYear(startDate, endDate, combineEndpoints, size, page)

Returns aggregated endpoint usage information by year

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new ReportingUsageApi();
var startDate = 789; // int | The beginning of the range being requested, unix timestamp in seconds
var endDate = 789; // int | The ending of the range being requested, unix timestamp in seconds
var combineEndpoints = true; // bool | Whether to combine counts from different endpoint. Removes the url and method from the result object
var size = 56; // int | The number of objects returned per page
var page = 56; // int | The number of the page returned, starting with 1

try { 
    var result = api_instance.getUsageByYear(startDate, endDate, combineEndpoints, size, page);
    print(result);
} catch (e) {
    print("Exception when calling ReportingUsageApi->getUsageByYear: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startDate** | **int**| The beginning of the range being requested, unix timestamp in seconds | 
 **endDate** | **int**| The ending of the range being requested, unix timestamp in seconds | 
 **combineEndpoints** | **bool**| Whether to combine counts from different endpoint. Removes the url and method from the result object | [optional] [default to false]
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]

### Return type

[**PageResource«UsageInfo»**](PageResource«UsageInfo».md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

