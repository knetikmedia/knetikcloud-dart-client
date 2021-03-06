# swagger.api.Payments_OptimalApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://jsapi-integration.us-east-1.elasticbeanstalk.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**silentPostOptimal**](Payments_OptimalApi.md#silentPostOptimal) | **POST** /payment/provider/optimal/silent | Initiate silent post with Optimal


# **silentPostOptimal**
> String silentPostOptimal(request)

Initiate silent post with Optimal

Will return the url for a hosted payment endpoint to post to. See Optimal documentation for details. <br><br><b>Permissions Needed:</b> OPTIMAL_ADMIN or owner

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new Payments_OptimalApi();
var request = new OptimalPaymentRequest(); // OptimalPaymentRequest | The payment request to initiate

try { 
    var result = api_instance.silentPostOptimal(request);
    print(result);
} catch (e) {
    print("Exception when calling Payments_OptimalApi->silentPostOptimal: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**OptimalPaymentRequest**](OptimalPaymentRequest.md)| The payment request to initiate | [optional] 

### Return type

**String**

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

