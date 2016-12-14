# swagger.api.PaymentsXsollaApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://devsandbox.knetikcloud.com/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createTokenUrlUsingPOST**](PaymentsXsollaApi.md#createTokenUrlUsingPOST) | **POST** /payment/provider/xsolla/payment | Create a payment token that should be used to forward the user to Xsolla so they can complete payment
[**receiveNotificationUsingPOST**](PaymentsXsollaApi.md#receiveNotificationUsingPOST) | **POST** /payment/provider/xsolla/notifications | Receives payment response from Xsolla


# **createTokenUrlUsingPOST**
> String createTokenUrlUsingPOST(request)

Create a payment token that should be used to forward the user to Xsolla so they can complete payment

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new PaymentsXsollaApi();
var request = new XsollaPaymentRequest(); // XsollaPaymentRequest | The payment request to be sent to XSolla

try { 
    var result = api_instance.createTokenUrlUsingPOST(request);
    print(result);
} catch (e) {
    print("Exception when calling PaymentsXsollaApi->createTokenUrlUsingPOST: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**XsollaPaymentRequest**](XsollaPaymentRequest.md)| The payment request to be sent to XSolla | [optional] 

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **receiveNotificationUsingPOST**
> receiveNotificationUsingPOST()

Receives payment response from Xsolla

Only used by XSolla to call back to JSAPI after processing user payment action

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new PaymentsXsollaApi();

try { 
    api_instance.receiveNotificationUsingPOST();
} catch (e) {
    print("Exception when calling PaymentsXsollaApi->receiveNotificationUsingPOST: $e\n");
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
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

