# swagger.api.PaymentsAppleApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://localhost:8080/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**verifyReceiptUsingPOST**](PaymentsAppleApi.md#verifyReceiptUsingPOST) | **POST** /payment/provider/apple/receipt | Pay invoice with Apple receipt


# **verifyReceiptUsingPOST**
> String verifyReceiptUsingPOST(request)

Pay invoice with Apple receipt

Mark an invoice paid using Apple payment receipt. A receipt will only be accepted once and the details of the transaction must match the invoice, including the product_id matching the sku text of the item in the invoice. Returns the transaction ID if successful.

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new PaymentsAppleApi();
var request = new ApplyPaymentRequest(); // ApplyPaymentRequest | The request for paying an invoice through an Apple receipt

try { 
    var result = api_instance.verifyReceiptUsingPOST(request);
    print(result);
} catch (e) {
    print("Exception when calling PaymentsAppleApi->verifyReceiptUsingPOST: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**ApplyPaymentRequest**](ApplyPaymentRequest.md)| The request for paying an invoice through an Apple receipt | [optional] 

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

