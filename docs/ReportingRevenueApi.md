# swagger.api.ReportingRevenueApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://sandbox.knetikcloud.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getItemRevenue**](ReportingRevenueApi.md#getItemRevenue) | **GET** /reporting/revenue/item-sales/{currency_code} | Get item revenue info
[**getRefundRevenue**](ReportingRevenueApi.md#getRefundRevenue) | **GET** /reporting/revenue/refunds/{currency_code} | Get refund revenue info
[**getRevenueByCountry**](ReportingRevenueApi.md#getRevenueByCountry) | **GET** /reporting/revenue/countries/{currency_code} | Get revenue info by country
[**getRevenueByItem**](ReportingRevenueApi.md#getRevenueByItem) | **GET** /reporting/revenue/products/{currency_code} | Get revenue info by item
[**getSubscriptionRevenue**](ReportingRevenueApi.md#getSubscriptionRevenue) | **GET** /reporting/revenue/subscription-sales/{currency_code} | Get subscription revenue info


# **getItemRevenue**
> RevenueReportResource getItemRevenue(currencyCode, startDate, endDate)

Get item revenue info

Get basic info about revenue from sales of items and bundles (not subscriptions, shipping, etc), summed up within a time range

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new ReportingRevenueApi();
var currencyCode = currencyCode_example; // String | The code for a currency to get sales data for
var startDate = 789; // int | The start of the time range to aggregate, unix timestamp in seconds. Default is beginning of time
var endDate = 789; // int | The end of the time range to aggregate, unix timestamp in seconds. Default is end of time

try { 
    var result = api_instance.getItemRevenue(currencyCode, startDate, endDate);
    print(result);
} catch (e) {
    print("Exception when calling ReportingRevenueApi->getItemRevenue: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **currencyCode** | **String**| The code for a currency to get sales data for | 
 **startDate** | **int**| The start of the time range to aggregate, unix timestamp in seconds. Default is beginning of time | [optional] 
 **endDate** | **int**| The end of the time range to aggregate, unix timestamp in seconds. Default is end of time | [optional] 

### Return type

[**RevenueReportResource**](RevenueReportResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getRefundRevenue**
> RevenueReportResource getRefundRevenue(currencyCode, startDate, endDate)

Get refund revenue info

Get basic info about revenue loss from refunds (for all item types), summed up within a time range.

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new ReportingRevenueApi();
var currencyCode = currencyCode_example; // String | The code for a currency to get refund data for
var startDate = 789; // int | The start of the time range to aggregate, unix timestamp in seconds. Default is beginning of time
var endDate = 789; // int | The end of the time range to aggregate, unix timestamp in seconds. Default is end of time

try { 
    var result = api_instance.getRefundRevenue(currencyCode, startDate, endDate);
    print(result);
} catch (e) {
    print("Exception when calling ReportingRevenueApi->getRefundRevenue: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **currencyCode** | **String**| The code for a currency to get refund data for | 
 **startDate** | **int**| The start of the time range to aggregate, unix timestamp in seconds. Default is beginning of time | [optional] 
 **endDate** | **int**| The end of the time range to aggregate, unix timestamp in seconds. Default is end of time | [optional] 

### Return type

[**RevenueReportResource**](RevenueReportResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getRevenueByCountry**
> PageResource«RevenueCountryReportResource» getRevenueByCountry(currencyCode, startDate, endDate, size, page)

Get revenue info by country

Get basic info about revenue from sales of all types, summed up within a time range and split out by country. Sorted for largest revenue at the top

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new ReportingRevenueApi();
var currencyCode = currencyCode_example; // String | The code for a currency to get sales data for
var startDate = 789; // int | The start of the time range to aggregate, unix timestamp in seconds. Default is beginning of time
var endDate = 789; // int | The end of the time range to aggregate, unix timestamp in seconds. Default is end of time
var size = 56; // int | The number of objects returned per page
var page = 56; // int | The number of the page returned, starting with 1

try { 
    var result = api_instance.getRevenueByCountry(currencyCode, startDate, endDate, size, page);
    print(result);
} catch (e) {
    print("Exception when calling ReportingRevenueApi->getRevenueByCountry: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **currencyCode** | **String**| The code for a currency to get sales data for | 
 **startDate** | **int**| The start of the time range to aggregate, unix timestamp in seconds. Default is beginning of time | [optional] 
 **endDate** | **int**| The end of the time range to aggregate, unix timestamp in seconds. Default is end of time | [optional] 
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]

### Return type

[**PageResource«RevenueCountryReportResource»**](PageResource«RevenueCountryReportResource».md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getRevenueByItem**
> PageResource«RevenueProductReportResource» getRevenueByItem(currencyCode, startDate, endDate, size, page)

Get revenue info by item

Get basic info about revenue from sales of all types, summed up within a time range and split out by specific item. Sorted for largest revenue at the top

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new ReportingRevenueApi();
var currencyCode = currencyCode_example; // String | The code for a currency to get sales data for
var startDate = 789; // int | The start of the time range to aggregate, unix timestamp in seconds. Default is beginning of time
var endDate = 789; // int | The end of the time range to aggregate, unix timestamp in seconds. Default is end of time
var size = 56; // int | The number of objects returned per page
var page = 56; // int | The number of the page returned, starting with 1

try { 
    var result = api_instance.getRevenueByItem(currencyCode, startDate, endDate, size, page);
    print(result);
} catch (e) {
    print("Exception when calling ReportingRevenueApi->getRevenueByItem: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **currencyCode** | **String**| The code for a currency to get sales data for | 
 **startDate** | **int**| The start of the time range to aggregate, unix timestamp in seconds. Default is beginning of time | [optional] 
 **endDate** | **int**| The end of the time range to aggregate, unix timestamp in seconds. Default is end of time | [optional] 
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]

### Return type

[**PageResource«RevenueProductReportResource»**](PageResource«RevenueProductReportResource».md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSubscriptionRevenue**
> RevenueReportResource getSubscriptionRevenue(currencyCode, startDate, endDate)

Get subscription revenue info

Get basic info about revenue from sales of new subscriptions as well as recurring payemnts, summed up within a time range

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new ReportingRevenueApi();
var currencyCode = currencyCode_example; // String | The code for a currency to get sales data for
var startDate = 789; // int | The start of the time range to aggregate, unix timestamp in seconds. Default is beginning of time
var endDate = 789; // int | The end of the time range to aggregate, unix timestamp in seconds. Default is end of time

try { 
    var result = api_instance.getSubscriptionRevenue(currencyCode, startDate, endDate);
    print(result);
} catch (e) {
    print("Exception when calling ReportingRevenueApi->getSubscriptionRevenue: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **currencyCode** | **String**| The code for a currency to get sales data for | 
 **startDate** | **int**| The start of the time range to aggregate, unix timestamp in seconds. Default is beginning of time | [optional] 
 **endDate** | **int**| The end of the time range to aggregate, unix timestamp in seconds. Default is end of time | [optional] 

### Return type

[**RevenueReportResource**](RevenueReportResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

