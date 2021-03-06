# swagger.api.Reporting_OrdersApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://jsapi-integration.us-east-1.elasticbeanstalk.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getInvoiceReports**](Reporting_OrdersApi.md#getInvoiceReports) | **GET** /reporting/orders/count/{currency_code} | Retrieve invoice counts aggregated by time ranges


# **getInvoiceReports**
> PageResource«AggregateInvoiceReportResource» getInvoiceReports(currencyCode, granularity, filterPaymentStatus, filterFulfillmentStatus, startDate, endDate, size, page)

Retrieve invoice counts aggregated by time ranges

<b>Permissions Needed:</b> REPORTING_ORDERS_ADMIN

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new Reporting_OrdersApi();
var currencyCode = currencyCode_example; // String | The code for a currency to get sales data for
var granularity = granularity_example; // String | The time duration to aggregate by
var filterPaymentStatus = filterPaymentStatus_example; // String | A payment status to filter results by, can be a comma separated list
var filterFulfillmentStatus = filterFulfillmentStatus_example; // String | An invoice fulfillment status to filter results by, can be a comma separated list
var startDate = 789; // int | The start of the time range to return, unix timestamp in seconds. Default is beginning of time
var endDate = 789; // int | The end of the time range to return, unix timestamp in seconds. Default is end of time
var size = 56; // int | The number of objects returned per page
var page = 56; // int | The number of the page returned

try { 
    var result = api_instance.getInvoiceReports(currencyCode, granularity, filterPaymentStatus, filterFulfillmentStatus, startDate, endDate, size, page);
    print(result);
} catch (e) {
    print("Exception when calling Reporting_OrdersApi->getInvoiceReports: $e\n");
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
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned | [optional] [default to 1]

### Return type

[**PageResource«AggregateInvoiceReportResource»**](PageResource«AggregateInvoiceReportResource».md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

