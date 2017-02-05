# swagger.api.PaymentsStripeApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://integration.knetikcloud.com/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createCustomerUsingPOST**](PaymentsStripeApi.md#createCustomerUsingPOST) | **POST** /payment/provider/stripe/payment-methods | Create a Stripe payment method for a user
[**payInvoiceUsingPOST1**](PaymentsStripeApi.md#payInvoiceUsingPOST1) | **POST** /payment/provider/stripe/payments | Pay with a single use token


# **createCustomerUsingPOST**
> PaymentMethodResource createCustomerUsingPOST(request)

Create a Stripe payment method for a user

Stores customer information and creates a payment method that can be used to pay invoices through the payments endpoints.

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: knetik_oauth
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new PaymentsStripeApi();
var request = new StripeCreatePaymentMethod(); // StripeCreatePaymentMethod | The request to create a Stripe customer with payment info

try { 
    var result = api_instance.createCustomerUsingPOST(request);
    print(result);
} catch (e) {
    print("Exception when calling PaymentsStripeApi->createCustomerUsingPOST: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**StripeCreatePaymentMethod**](StripeCreatePaymentMethod.md)| The request to create a Stripe customer with payment info | [optional] 

### Return type

[**PaymentMethodResource**](PaymentMethodResource.md)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **payInvoiceUsingPOST1**
> payInvoiceUsingPOST1(request)

Pay with a single use token

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new PaymentsStripeApi();
var request = new StripePaymentRequest(); // StripePaymentRequest | The request to pay an invoice

try { 
    api_instance.payInvoiceUsingPOST1(request);
} catch (e) {
    print("Exception when calling PaymentsStripeApi->payInvoiceUsingPOST1: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**StripePaymentRequest**](StripePaymentRequest.md)| The request to pay an invoice | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

