# swagger.api.PaymentsOptimalApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://integration.knetikcloud.com/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**silentPostOptimal**](PaymentsOptimalApi.md#silentPostOptimal) | **POST** /payment/provider/optimal/silent | Initiate silent post with Optimal


# **silentPostOptimal**
> String silentPostOptimal(request)

Initiate silent post with Optimal

Will return the url for a hosted payment endpoint to post to. See Optimal documentation for details.

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new PaymentsOptimalApi();
var request = new OptimalPaymentRequest(); // OptimalPaymentRequest | The payment request to initiate

try { 
    var result = api_instance.silentPostOptimal(request);
    print(result);
} catch (e) {
    print("Exception when calling PaymentsOptimalApi->silentPostOptimal: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**OptimalPaymentRequest**](OptimalPaymentRequest.md)| The payment request to initiate | [optional] 

### Return type

**String**

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

