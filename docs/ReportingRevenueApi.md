# swagger.api.ReportingRevenueApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://localhost:8080/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**executiveRevenueCountrySalesUsingGET**](ReportingRevenueApi.md#executiveRevenueCountrySalesUsingGET) | **GET** /reporting/revenue/countries/{currency_code} | Get revenue info by country
[**executiveRevenueItemSalesUsingGET**](ReportingRevenueApi.md#executiveRevenueItemSalesUsingGET) | **GET** /reporting/revenue/item-sales/{currency_code} | Get item revenue info
[**executiveRevenueProductSalesUsingGET**](ReportingRevenueApi.md#executiveRevenueProductSalesUsingGET) | **GET** /reporting/revenue/products/{currency_code} | Get revenue info by item
[**executiveRevenueRefundsUsingGET**](ReportingRevenueApi.md#executiveRevenueRefundsUsingGET) | **GET** /reporting/revenue/refunds/{currency_code} | Get refund revenue info
[**executiveRevenueSubscriptionSalesUsingGET**](ReportingRevenueApi.md#executiveRevenueSubscriptionSalesUsingGET) | **GET** /reporting/revenue/subscription-sales/{currency_code} | Get subscription revenue info


# **executiveRevenueCountrySalesUsingGET**
> PageResource«RevenueCountryReportResource» executiveRevenueCountrySalesUsingGET(currencyCode, startDate, endDate, size, page)

Get revenue info by country

Get basic info about revenue from sales of all types, summed up within a time range and split out by country. Sorted for largest revenue at the top

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: knetik_oauth
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new ReportingRevenueApi();
var currencyCode = currencyCode_example; // String | The code for a currency to get sales data for
var startDate = 789; // int | The start of the time range to aggregate, unix timestamp in seconds. Default is beginning of time
var endDate = 789; // int | The end of the time range to aggregate, unix timestamp in seconds. Default is end of time
var size = 56; // int | The number of objects returned per page
var page = 56; // int | The number of the page returned, starting with 1

try { 
    var result = api_instance.executiveRevenueCountrySalesUsingGET(currencyCode, startDate, endDate, size, page);
    print(result);
} catch (e) {
    print("Exception when calling ReportingRevenueApi->executiveRevenueCountrySalesUsingGET: $e\n");
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

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **executiveRevenueItemSalesUsingGET**
> RevenueReportResource executiveRevenueItemSalesUsingGET(currencyCode, startDate, endDate)

Get item revenue info

Get basic info about revenue from sales of items and bundles (not subscriptions, shipping, etc), summed up within a time range

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: knetik_oauth
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new ReportingRevenueApi();
var currencyCode = currencyCode_example; // String | The code for a currency to get sales data for
var startDate = 789; // int | The start of the time range to aggregate, unix timestamp in seconds. Default is beginning of time
var endDate = 789; // int | The end of the time range to aggregate, unix timestamp in seconds. Default is end of time

try { 
    var result = api_instance.executiveRevenueItemSalesUsingGET(currencyCode, startDate, endDate);
    print(result);
} catch (e) {
    print("Exception when calling ReportingRevenueApi->executiveRevenueItemSalesUsingGET: $e\n");
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

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **executiveRevenueProductSalesUsingGET**
> PageResource«RevenueProductReportResource» executiveRevenueProductSalesUsingGET(currencyCode, startDate, endDate, size, page)

Get revenue info by item

Get basic info about revenue from sales of all types, summed up within a time range and split out by specific item. Sorted for largest revenue at the top

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: knetik_oauth
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new ReportingRevenueApi();
var currencyCode = currencyCode_example; // String | The code for a currency to get sales data for
var startDate = 789; // int | The start of the time range to aggregate, unix timestamp in seconds. Default is beginning of time
var endDate = 789; // int | The end of the time range to aggregate, unix timestamp in seconds. Default is end of time
var size = 56; // int | The number of objects returned per page
var page = 56; // int | The number of the page returned, starting with 1

try { 
    var result = api_instance.executiveRevenueProductSalesUsingGET(currencyCode, startDate, endDate, size, page);
    print(result);
} catch (e) {
    print("Exception when calling ReportingRevenueApi->executiveRevenueProductSalesUsingGET: $e\n");
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

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **executiveRevenueRefundsUsingGET**
> RevenueReportResource executiveRevenueRefundsUsingGET(currencyCode, startDate, endDate)

Get refund revenue info

Get basic info about revenue loss from refunds (for all item types), summed up within a time range.

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: knetik_oauth
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new ReportingRevenueApi();
var currencyCode = currencyCode_example; // String | The code for a currency to get refund data for
var startDate = 789; // int | The start of the time range to aggregate, unix timestamp in seconds. Default is beginning of time
var endDate = 789; // int | The end of the time range to aggregate, unix timestamp in seconds. Default is end of time

try { 
    var result = api_instance.executiveRevenueRefundsUsingGET(currencyCode, startDate, endDate);
    print(result);
} catch (e) {
    print("Exception when calling ReportingRevenueApi->executiveRevenueRefundsUsingGET: $e\n");
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

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **executiveRevenueSubscriptionSalesUsingGET**
> RevenueReportResource executiveRevenueSubscriptionSalesUsingGET(currencyCode, startDate, endDate)

Get subscription revenue info

Get basic info about revenue from sales of new subscriptions as well as recurring payemnts, summed up within a time range

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: knetik_oauth
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new ReportingRevenueApi();
var currencyCode = currencyCode_example; // String | The code for a currency to get sales data for
var startDate = 789; // int | The start of the time range to aggregate, unix timestamp in seconds. Default is beginning of time
var endDate = 789; // int | The end of the time range to aggregate, unix timestamp in seconds. Default is end of time

try { 
    var result = api_instance.executiveRevenueSubscriptionSalesUsingGET(currencyCode, startDate, endDate);
    print(result);
} catch (e) {
    print("Exception when calling ReportingRevenueApi->executiveRevenueSubscriptionSalesUsingGET: $e\n");
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

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

