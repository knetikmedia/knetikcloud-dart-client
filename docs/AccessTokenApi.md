# swagger.api.AccessTokenApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://sandbox.knetikcloud.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getOAuthToken**](AccessTokenApi.md#getOAuthToken) | **POST** /oauth/token | Get access token


# **getOAuthToken**
> OAuth2Resource getOAuthToken(grantType, clientId, clientSecret, username, password, token, refreshToken)

Get access token

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new AccessTokenApi();
var grantType = grantType_example; // String | Grant type
var clientId = clientId_example; // String | The id of the client
var clientSecret = clientSecret_example; // String | The secret key of the client.  Used only with a grant_type of client_credentials
var username = username_example; // String | The username of the client. Used only with a grant_type of password
var password = password_example; // String | The password of the client. Used only with a grant_type of password
var token = token_example; // String | The 3rd party authentication token. Used only with a grant_type of facebook, google, etc (social plugins)
var refreshToken = refreshToken_example; // String | The refresh token obtained during prior authentication. Used only with a grant_type of refresh_token

try { 
    var result = api_instance.getOAuthToken(grantType, clientId, clientSecret, username, password, token, refreshToken);
    print(result);
} catch (e) {
    print("Exception when calling AccessTokenApi->getOAuthToken: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **grantType** | **String**| Grant type | [default to client_credentials]
 **clientId** | **String**| The id of the client | [default to knetik]
 **clientSecret** | **String**| The secret key of the client.  Used only with a grant_type of client_credentials | [optional] 
 **username** | **String**| The username of the client. Used only with a grant_type of password | [optional] 
 **password** | **String**| The password of the client. Used only with a grant_type of password | [optional] 
 **token** | **String**| The 3rd party authentication token. Used only with a grant_type of facebook, google, etc (social plugins) | [optional] 
 **refreshToken** | **String**| The refresh token obtained during prior authentication. Used only with a grant_type of refresh_token | [optional] 

### Return type

[**OAuth2Resource**](OAuth2Resource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

