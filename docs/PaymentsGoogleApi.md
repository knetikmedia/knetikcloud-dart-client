# swagger.api.PaymentsGoogleApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://localhost:8080/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**handleGooglePayment**](PaymentsGoogleApi.md#handleGooglePayment) | **POST** /payment/provider/google/payments | Mark an invoice paid with Google


# **handleGooglePayment**
> int handleGooglePayment(request)

Mark an invoice paid with Google

Mark an invoice paid with Google. Verifies signature from Google and treats the developerPayload field inside the json payload as the id of the invoice to pay. Returns the transaction ID if successful.

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new PaymentsGoogleApi();
var request = new GooglePaymentRequest(); // GooglePaymentRequest | The request for paying an invoice through a Google in-app payment

try { 
    var result = api_instance.handleGooglePayment(request);
    print(result);
} catch (e) {
    print("Exception when calling PaymentsGoogleApi->handleGooglePayment: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**GooglePaymentRequest**](GooglePaymentRequest.md)| The request for paying an invoice through a Google in-app payment | [optional] 

### Return type

**int**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

