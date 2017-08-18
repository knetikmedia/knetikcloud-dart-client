# swagger.api.PaymentsStripeApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://sandbox.knetikcloud.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createStripePaymentMethod**](PaymentsStripeApi.md#createStripePaymentMethod) | **POST** /payment/provider/stripe/payment-methods | Create a Stripe payment method for a user
[**payStripeInvoice**](PaymentsStripeApi.md#payStripeInvoice) | **POST** /payment/provider/stripe/payments | Pay with a single use token


# **createStripePaymentMethod**
> PaymentMethodResource createStripePaymentMethod(request)

Create a Stripe payment method for a user

Stores customer information and creates a payment method that can be used to pay invoices through the payments endpoints.

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new PaymentsStripeApi();
var request = new StripeCreatePaymentMethod(); // StripeCreatePaymentMethod | The request to create a Stripe customer with payment info

try { 
    var result = api_instance.createStripePaymentMethod(request);
    print(result);
} catch (e) {
    print("Exception when calling PaymentsStripeApi->createStripePaymentMethod: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**StripeCreatePaymentMethod**](StripeCreatePaymentMethod.md)| The request to create a Stripe customer with payment info | [optional] 

### Return type

[**PaymentMethodResource**](PaymentMethodResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **payStripeInvoice**
> payStripeInvoice(request)

Pay with a single use token

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new PaymentsStripeApi();
var request = new StripePaymentRequest(); // StripePaymentRequest | The request to pay an invoice

try { 
    api_instance.payStripeInvoice(request);
} catch (e) {
    print("Exception when calling PaymentsStripeApi->payStripeInvoice: $e\n");
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

