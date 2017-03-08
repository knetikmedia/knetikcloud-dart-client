# swagger.api.PaymentsXsollaApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://sandbox.knetikcloud.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createXsollaTokenUrl**](PaymentsXsollaApi.md#createXsollaTokenUrl) | **POST** /payment/provider/xsolla/payment | Create a payment token that should be used to forward the user to Xsolla so they can complete payment
[**receiveXsollaNotification**](PaymentsXsollaApi.md#receiveXsollaNotification) | **POST** /payment/provider/xsolla/notifications | Receives payment response from Xsolla


# **createXsollaTokenUrl**
> String createXsollaTokenUrl(request)

Create a payment token that should be used to forward the user to Xsolla so they can complete payment

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new PaymentsXsollaApi();
var request = new XsollaPaymentRequest(); // XsollaPaymentRequest | The payment request to be sent to XSolla

try { 
    var result = api_instance.createXsollaTokenUrl(request);
    print(result);
} catch (e) {
    print("Exception when calling PaymentsXsollaApi->createXsollaTokenUrl: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**XsollaPaymentRequest**](XsollaPaymentRequest.md)| The payment request to be sent to XSolla | [optional] 

### Return type

**String**

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **receiveXsollaNotification**
> receiveXsollaNotification()

Receives payment response from Xsolla

Only used by Xsolla to call back to JSAPI after processing user payment action

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new PaymentsXsollaApi();

try { 
    api_instance.receiveXsollaNotification();
} catch (e) {
    print("Exception when calling PaymentsXsollaApi->receiveXsollaNotification: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

