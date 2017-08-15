# swagger.api.PaymentsFattMerchantApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://sandbox.knetikcloud.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createOrUpdateFattMerchantPaymentMethod**](PaymentsFattMerchantApi.md#createOrUpdateFattMerchantPaymentMethod) | **PUT** /payment/provider/fattmerchant/payment-methods | Create or update a FattMerchant payment method for a user


# **createOrUpdateFattMerchantPaymentMethod**
> PaymentMethodResource createOrUpdateFattMerchantPaymentMethod(request)

Create or update a FattMerchant payment method for a user

Stores customer information and creates a payment method that can be used to pay invoices through the payments endpoints.

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new PaymentsFattMerchantApi();
var request = new FattMerchantPaymentMethodRequest(); // FattMerchantPaymentMethodRequest | Request containing payment method information for user

try { 
    var result = api_instance.createOrUpdateFattMerchantPaymentMethod(request);
    print(result);
} catch (e) {
    print("Exception when calling PaymentsFattMerchantApi->createOrUpdateFattMerchantPaymentMethod: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**FattMerchantPaymentMethodRequest**](FattMerchantPaymentMethodRequest.md)| Request containing payment method information for user | [optional] 

### Return type

[**PaymentMethodResource**](PaymentMethodResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

