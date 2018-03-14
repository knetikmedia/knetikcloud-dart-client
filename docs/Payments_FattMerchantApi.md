# swagger.api.Payments_FattMerchantApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://jsapi-integration.us-east-1.elasticbeanstalk.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createOrUpdateFattMerchantPaymentMethod**](Payments_FattMerchantApi.md#createOrUpdateFattMerchantPaymentMethod) | **PUT** /payment/provider/fattmerchant/payment-methods | Create or update a FattMerchant payment method for a user


# **createOrUpdateFattMerchantPaymentMethod**
> PaymentMethodResource createOrUpdateFattMerchantPaymentMethod(request)

Create or update a FattMerchant payment method for a user

Stores customer information and creates a payment method that can be used to pay invoices through the payments endpoints. <br><br><b>Permissions Needed:</b> FATTMERCHANT_ADMIN or owner

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new Payments_FattMerchantApi();
var request = new FattMerchantPaymentMethodRequest(); // FattMerchantPaymentMethodRequest | Request containing payment method information for user

try { 
    var result = api_instance.createOrUpdateFattMerchantPaymentMethod(request);
    print(result);
} catch (e) {
    print("Exception when calling Payments_FattMerchantApi->createOrUpdateFattMerchantPaymentMethod: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**FattMerchantPaymentMethodRequest**](FattMerchantPaymentMethodRequest.md)| Request containing payment method information for user | [optional] 

### Return type

[**PaymentMethodResource**](PaymentMethodResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

