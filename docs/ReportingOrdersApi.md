# swagger.api.ReportingOrdersApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://localhost:8080/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getInvoiceReports**](ReportingOrdersApi.md#getInvoiceReports) | **GET** /reporting/orders/count/{currency_code} | Retrieve invoice counts aggregated by time ranges


# **getInvoiceReports**
> PageResource«AggregateInvoiceReportResource» getInvoiceReports(currencyCode, granularity, filterPaymentStatus, filterFulfillmentStatus, startDate, endDate)

Retrieve invoice counts aggregated by time ranges

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new ReportingOrdersApi();
var currencyCode = currencyCode_example; // String | The code for a currency to get sales data for
var granularity = granularity_example; // String | The time duration to aggregate by
var filterPaymentStatus = filterPaymentStatus_example; // String | A payment status to filter results by, can be a comma separated list
var filterFulfillmentStatus = filterFulfillmentStatus_example; // String | An invoice fulfillment status to filter results by, can be a comma separated list
var startDate = 789; // int | The start of the time range to return, unix timestamp in seconds. Default is beginning of time
var endDate = 789; // int | The end of the time range to return, unix timestamp in seconds. Default is end of time

try { 
    var result = api_instance.getInvoiceReports(currencyCode, granularity, filterPaymentStatus, filterFulfillmentStatus, startDate, endDate);
    print(result);
} catch (e) {
    print("Exception when calling ReportingOrdersApi->getInvoiceReports: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **currencyCode** | **String**| The code for a currency to get sales data for | 
 **granularity** | **String**| The time duration to aggregate by | [optional] [default to day]
 **filterPaymentStatus** | **String**| A payment status to filter results by, can be a comma separated list | [optional] 
 **filterFulfillmentStatus** | **String**| An invoice fulfillment status to filter results by, can be a comma separated list | [optional] 
 **startDate** | **int**| The start of the time range to return, unix timestamp in seconds. Default is beginning of time | [optional] 
 **endDate** | **int**| The end of the time range to return, unix timestamp in seconds. Default is end of time | [optional] 

### Return type

[**PageResource«AggregateInvoiceReportResource»**](PageResource«AggregateInvoiceReportResource».md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
