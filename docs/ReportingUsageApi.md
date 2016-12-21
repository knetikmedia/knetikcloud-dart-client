# swagger.api.ReportingUsageApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://localhost:8080/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getUsageByDayUsingGET**](ReportingUsageApi.md#getUsageByDayUsingGET) | **GET** /reporting/usage/day | Returns aggregated endpoint usage information by the day
[**getUsageByHourUsingGET**](ReportingUsageApi.md#getUsageByHourUsingGET) | **GET** /reporting/usage/hour | Returns aggregated endpoint usage information by hour
[**getUsageByMinuteUsingGET**](ReportingUsageApi.md#getUsageByMinuteUsingGET) | **GET** /reporting/usage/minute | Returns aggregated endpoint usage information by minute
[**getUsageByMonthUsingGET**](ReportingUsageApi.md#getUsageByMonthUsingGET) | **GET** /reporting/usage/month | Returns aggregated endpoint usage information by month
[**getUsageByYearUsingGET**](ReportingUsageApi.md#getUsageByYearUsingGET) | **GET** /reporting/usage/year | Returns aggregated endpoint usage information by year


# **getUsageByDayUsingGET**
> PageResource«UsageInfo» getUsageByDayUsingGET(startDate, endDate, combineEndpoints, size, page)

Returns aggregated endpoint usage information by the day

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: knetik_oauth
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new ReportingUsageApi();
var startDate = 789; // int | The beginning of the range being requested, unix timestamp in seconds
var endDate = 789; // int | The ending of the range being requested, unix timestamp in seconds
var combineEndpoints = true; // bool | Whether to combine counts from different endpoint. Removes the url and method from the result object
var size = 56; // int | The number of objects returned per page
var page = 56; // int | The number of the page returned, starting with 1

try { 
    var result = api_instance.getUsageByDayUsingGET(startDate, endDate, combineEndpoints, size, page);
    print(result);
} catch (e) {
    print("Exception when calling ReportingUsageApi->getUsageByDayUsingGET: $e\n");
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

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUsageByHourUsingGET**
> PageResource«UsageInfo» getUsageByHourUsingGET(startDate, endDate, combineEndpoints, size, page)

Returns aggregated endpoint usage information by hour

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: knetik_oauth
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new ReportingUsageApi();
var startDate = 789; // int | The beginning of the range being requested, unix timestamp in seconds
var endDate = 789; // int | The ending of the range being requested, unix timestamp in seconds
var combineEndpoints = true; // bool | Whether to combine counts from different endpoint. Removes the url and method from the result object
var size = 56; // int | The number of objects returned per page
var page = 56; // int | The number of the page returned, starting with 1

try { 
    var result = api_instance.getUsageByHourUsingGET(startDate, endDate, combineEndpoints, size, page);
    print(result);
} catch (e) {
    print("Exception when calling ReportingUsageApi->getUsageByHourUsingGET: $e\n");
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

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUsageByMinuteUsingGET**
> PageResource«UsageInfo» getUsageByMinuteUsingGET(startDate, endDate, combineEndpoints, size, page)

Returns aggregated endpoint usage information by minute

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: knetik_oauth
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new ReportingUsageApi();
var startDate = 789; // int | The beginning of the range being requested, unix timestamp in seconds
var endDate = 789; // int | The ending of the range being requested, unix timestamp in seconds
var combineEndpoints = true; // bool | Whether to combine counts from different endpoint. Removes the url and method from the result object
var size = 56; // int | The number of objects returned per page
var page = 56; // int | The number of the page returned, starting with 1

try { 
    var result = api_instance.getUsageByMinuteUsingGET(startDate, endDate, combineEndpoints, size, page);
    print(result);
} catch (e) {
    print("Exception when calling ReportingUsageApi->getUsageByMinuteUsingGET: $e\n");
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

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUsageByMonthUsingGET**
> PageResource«UsageInfo» getUsageByMonthUsingGET(startDate, endDate, combineEndpoints, size, page)

Returns aggregated endpoint usage information by month

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: knetik_oauth
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new ReportingUsageApi();
var startDate = 789; // int | The beginning of the range being requested, unix timestamp in seconds
var endDate = 789; // int | The ending of the range being requested, unix timestamp in seconds
var combineEndpoints = true; // bool | Whether to combine counts from different endpoint. Removes the url and method from the result object
var size = 56; // int | The number of objects returned per page
var page = 56; // int | The number of the page returned, starting with 1

try { 
    var result = api_instance.getUsageByMonthUsingGET(startDate, endDate, combineEndpoints, size, page);
    print(result);
} catch (e) {
    print("Exception when calling ReportingUsageApi->getUsageByMonthUsingGET: $e\n");
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

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUsageByYearUsingGET**
> PageResource«UsageInfo» getUsageByYearUsingGET(startDate, endDate, combineEndpoints, size, page)

Returns aggregated endpoint usage information by year

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: knetik_oauth
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new ReportingUsageApi();
var startDate = 789; // int | The beginning of the range being requested, unix timestamp in seconds
var endDate = 789; // int | The ending of the range being requested, unix timestamp in seconds
var combineEndpoints = true; // bool | Whether to combine counts from different endpoint. Removes the url and method from the result object
var size = 56; // int | The number of objects returned per page
var page = 56; // int | The number of the page returned, starting with 1

try { 
    var result = api_instance.getUsageByYearUsingGET(startDate, endDate, combineEndpoints, size, page);
    print(result);
} catch (e) {
    print("Exception when calling ReportingUsageApi->getUsageByYearUsingGET: $e\n");
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

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

