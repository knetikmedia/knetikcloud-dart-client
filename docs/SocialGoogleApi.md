# swagger.api.SocialGoogleApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://sandbox.knetikcloud.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**linkAccounts1**](SocialGoogleApi.md#linkAccounts1) | **POST** /social/google/users | Link google account


# **linkAccounts1**
> linkAccounts1(googleToken)

Link google account

Links the current user account to a google account, using the acccess token from google. Can also be used to update the access token after it has expired.

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new SocialGoogleApi();
var googleToken = new GoogleToken(); // GoogleToken | The token from google

try { 
    api_instance.linkAccounts1(googleToken);
} catch (e) {
    print("Exception when calling SocialGoogleApi->linkAccounts1: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **googleToken** | [**GoogleToken**](GoogleToken.md)| The token from google | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

