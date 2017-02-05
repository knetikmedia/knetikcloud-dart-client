# swagger.api.PaymentsTransactionsApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://integration.knetikcloud.com/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getTransactionUsingGET**](PaymentsTransactionsApi.md#getTransactionUsingGET) | **GET** /transactions/{id} | Get the details for a single transaction
[**getTransactionsUsingGET**](PaymentsTransactionsApi.md#getTransactionsUsingGET) | **GET** /transactions | List and search transactions
[**refundTransactionUsingPOST**](PaymentsTransactionsApi.md#refundTransactionUsingPOST) | **POST** /transactions/{id}/refunds | Refund a payment transaction, in full or in part


# **getTransactionUsingGET**
> TransactionResource getTransactionUsingGET(id)

Get the details for a single transaction

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: knetik_oauth
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new PaymentsTransactionsApi();
var id = 56; // int | id

try { 
    var result = api_instance.getTransactionUsingGET(id);
    print(result);
} catch (e) {
    print("Exception when calling PaymentsTransactionsApi->getTransactionUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| id | 

### Return type

[**TransactionResource**](TransactionResource.md)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTransactionsUsingGET**
> PageResource«TransactionResource» getTransactionsUsingGET(filterInvoice, size, page, order)

List and search transactions

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: knetik_oauth
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new PaymentsTransactionsApi();
var filterInvoice = 56; // int | Filter for transactions from a specific invoice
var size = 56; // int | The number of objects returned per page
var page = 56; // int | The number of the page returned, starting with 1
var order = order_example; // String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]

try { 
    var result = api_instance.getTransactionsUsingGET(filterInvoice, size, page, order);
    print(result);
} catch (e) {
    print("Exception when calling PaymentsTransactionsApi->getTransactionsUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterInvoice** | **int**| Filter for transactions from a specific invoice | [optional] 
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **String**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to id:ASC]

### Return type

[**PageResource«TransactionResource»**](PageResource«TransactionResource».md)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **refundTransactionUsingPOST**
> RefundResource refundTransactionUsingPOST(id, request)

Refund a payment transaction, in full or in part

Will not allow for refunding more than the full amount even with multiple partial refunds. Money is refunded to the payment method used to make the original payment. Payment method must support refunds.

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: knetik_oauth
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new PaymentsTransactionsApi();
var id = 56; // int | The id of the transaction to refund
var request = new RefundRequest(); // RefundRequest | Request containing refund details

try { 
    var result = api_instance.refundTransactionUsingPOST(id, request);
    print(result);
} catch (e) {
    print("Exception when calling PaymentsTransactionsApi->refundTransactionUsingPOST: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The id of the transaction to refund | 
 **request** | [**RefundRequest**](RefundRequest.md)| Request containing refund details | [optional] 

### Return type

[**RefundResource**](RefundResource.md)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

