# swagger.api.Util_SecurityApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://jsapi-integration.us-east-1.elasticbeanstalk.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getUserLocationLog**](Util_SecurityApi.md#getUserLocationLog) | **GET** /security/country-log | Returns the authentication log for a user
[**getUserTokenDetails**](Util_SecurityApi.md#getUserTokenDetails) | **GET** /me | Returns the authentication token details. Use /users endpoint for detailed user&#39;s info


# **getUserLocationLog**
> PageResource«LocationLogResource» getUserLocationLog(userId, size, page, order)

Returns the authentication log for a user

A log entry is recorded everytime a user requests a new token. Standard pagination available. <br><br><b>Permissions Needed:</b> SECURITY_ADMIN

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new Util_SecurityApi();
var userId = 56; // int | The user id
var size = 56; // int | The number of objects returned per page
var page = 56; // int | The number of the page returned, starting with 1
var order = order_example; // String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]

try { 
    var result = api_instance.getUserLocationLog(userId, size, page, order);
    print(result);
} catch (e) {
    print("Exception when calling Util_SecurityApi->getUserLocationLog: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **int**| The user id | [optional] 
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **String**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] 

### Return type

[**PageResource«LocationLogResource»**](PageResource«LocationLogResource».md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUserTokenDetails**
> TokenDetailsResource getUserTokenDetails()

Returns the authentication token details. Use /users endpoint for detailed user's info

<b>Permissions Needed:</b> SECURITY_ADMIN

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new Util_SecurityApi();

try { 
    var result = api_instance.getUserTokenDetails();
    print(result);
} catch (e) {
    print("Exception when calling Util_SecurityApi->getUserTokenDetails: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**TokenDetailsResource**](TokenDetailsResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

