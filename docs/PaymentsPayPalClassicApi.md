# swagger.api.PaymentsPayPalClassicApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://localhost:8080/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createBillingAgreementUrlUsingPOST**](PaymentsPayPalClassicApi.md#createBillingAgreementUrlUsingPOST) | **POST** /payment/provider/paypal/classic/agreements/start | Create a PayPal Classic billing agreement for the user
[**expressCheckoutUsingPOST**](PaymentsPayPalClassicApi.md#expressCheckoutUsingPOST) | **POST** /payment/provider/paypal/classic/checkout/start | Create a payment token for PayPal express checkout
[**finalizeBillingAgreementUsingPOST**](PaymentsPayPalClassicApi.md#finalizeBillingAgreementUsingPOST) | **POST** /payment/provider/paypal/classic/agreements/finish | Finalizes a billing agreement after the user has accepted through PayPal
[**finalizeCheckoutUsingPOST**](PaymentsPayPalClassicApi.md#finalizeCheckoutUsingPOST) | **POST** /payment/provider/paypal/classic/checkout/finish | Finalizes a payment after the user has completed checkout with PayPal


# **createBillingAgreementUrlUsingPOST**
> String createBillingAgreementUrlUsingPOST(request)

Create a PayPal Classic billing agreement for the user

Returns the token that should be used to forward the user to PayPal so they can accept the agreement.

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: knetik_oauth
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new PaymentsPayPalClassicApi();
var request = new CreateBillingAgreementRequest(); // CreateBillingAgreementRequest | The request to create a PayPal billing agreement

try { 
    var result = api_instance.createBillingAgreementUrlUsingPOST(request);
    print(result);
} catch (e) {
    print("Exception when calling PaymentsPayPalClassicApi->createBillingAgreementUrlUsingPOST: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**CreateBillingAgreementRequest**](CreateBillingAgreementRequest.md)| The request to create a PayPal billing agreement | [optional] 

### Return type

**String**

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **expressCheckoutUsingPOST**
> String expressCheckoutUsingPOST(request)

Create a payment token for PayPal express checkout

Returns the token that should be used to forward the user to PayPal so they can complete the checkout.

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: knetik_oauth
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new PaymentsPayPalClassicApi();
var request = new CreatePayPalPaymentRequest(); // CreatePayPalPaymentRequest | The request to create a PayPal payment token

try { 
    var result = api_instance.expressCheckoutUsingPOST(request);
    print(result);
} catch (e) {
    print("Exception when calling PaymentsPayPalClassicApi->expressCheckoutUsingPOST: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**CreatePayPalPaymentRequest**](CreatePayPalPaymentRequest.md)| The request to create a PayPal payment token | [optional] 

### Return type

**String**

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **finalizeBillingAgreementUsingPOST**
> int finalizeBillingAgreementUsingPOST(request)

Finalizes a billing agreement after the user has accepted through PayPal

Returns the ID of the new payment method created for the user for the billing agreement.

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: knetik_oauth
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new PaymentsPayPalClassicApi();
var request = new FinalizeBillingAgreementRequest(); // FinalizeBillingAgreementRequest | The request to finalize a PayPal billing agreement

try { 
    var result = api_instance.finalizeBillingAgreementUsingPOST(request);
    print(result);
} catch (e) {
    print("Exception when calling PaymentsPayPalClassicApi->finalizeBillingAgreementUsingPOST: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**FinalizeBillingAgreementRequest**](FinalizeBillingAgreementRequest.md)| The request to finalize a PayPal billing agreement | [optional] 

### Return type

**int**

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **finalizeCheckoutUsingPOST**
> finalizeCheckoutUsingPOST(request)

Finalizes a payment after the user has completed checkout with PayPal

The invoice will be marked paid/failed by asynchronous IPN callback.

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: knetik_oauth
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new PaymentsPayPalClassicApi();
var request = new FinalizePayPalPaymentRequest(); // FinalizePayPalPaymentRequest | The request to finalize the payment

try { 
    api_instance.finalizeCheckoutUsingPOST(request);
} catch (e) {
    print("Exception when calling PaymentsPayPalClassicApi->finalizeCheckoutUsingPOST: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**FinalizePayPalPaymentRequest**](FinalizePayPalPaymentRequest.md)| The request to finalize the payment | [optional] 

### Return type

void (empty response body)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

