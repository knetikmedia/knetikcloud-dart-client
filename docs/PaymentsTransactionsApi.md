# swagger.api.PaymentsTransactionsApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://sandbox.knetikcloud.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getTransaction**](PaymentsTransactionsApi.md#getTransaction) | **GET** /transactions/{id} | Get the details for a single transaction
[**getTransactions**](PaymentsTransactionsApi.md#getTransactions) | **GET** /transactions | List and search transactions
[**refundTransaction**](PaymentsTransactionsApi.md#refundTransaction) | **POST** /transactions/{id}/refunds | Refund a payment transaction, in full or in part


# **getTransaction**
> TransactionResource getTransaction(id)

Get the details for a single transaction

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new PaymentsTransactionsApi();
var id = 56; // int | id

try { 
    var result = api_instance.getTransaction(id);
    print(result);
} catch (e) {
    print("Exception when calling PaymentsTransactionsApi->getTransaction: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| id | 

### Return type

[**TransactionResource**](TransactionResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTransactions**
> PageResource«TransactionResource» getTransactions(filterInvoice, size, page, order)

List and search transactions

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new PaymentsTransactionsApi();
var filterInvoice = 56; // int | Filter for transactions from a specific invoice
var size = 56; // int | The number of objects returned per page
var page = 56; // int | The number of the page returned, starting with 1
var order = order_example; // String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]

try { 
    var result = api_instance.getTransactions(filterInvoice, size, page, order);
    print(result);
} catch (e) {
    print("Exception when calling PaymentsTransactionsApi->getTransactions: $e\n");
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

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **refundTransaction**
> RefundResource refundTransaction(id, request)

Refund a payment transaction, in full or in part

Will not allow for refunding more than the full amount even with multiple partial refunds. Money is refunded to the payment method used to make the original payment. Payment method must support refunds.

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new PaymentsTransactionsApi();
var id = 56; // int | The id of the transaction to refund
var request = new RefundRequest(); // RefundRequest | Request containing refund details

try { 
    var result = api_instance.refundTransaction(id, request);
    print(result);
} catch (e) {
    print("Exception when calling PaymentsTransactionsApi->refundTransaction: $e\n");
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

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

