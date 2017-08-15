# swagger.api.SocialFacebookApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://sandbox.knetikcloud.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**linkAccounts**](SocialFacebookApi.md#linkAccounts) | **POST** /social/facebook/users | Link facebook account


# **linkAccounts**
> linkAccounts(facebookToken)

Link facebook account

Links the current user account to a facebook account, using the acccess token from facebook. Can also be used to update the access token after it has expired.

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new SocialFacebookApi();
var facebookToken = new FacebookToken(); // FacebookToken | The token from facebook

try { 
    api_instance.linkAccounts(facebookToken);
} catch (e) {
    print("Exception when calling SocialFacebookApi->linkAccounts: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **facebookToken** | [**FacebookToken**](FacebookToken.md)| The token from facebook | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

