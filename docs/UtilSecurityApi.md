# swagger.api.UtilSecurityApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://localhost:8080/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getUserLocationLog**](UtilSecurityApi.md#getUserLocationLog) | **GET** /security/country-log | Returns the authentication log for a user
[**getUserTokenDetails**](UtilSecurityApi.md#getUserTokenDetails) | **GET** /me | Returns the authentication token details. Use /users endpoint for detailed user&#39;s info


# **getUserLocationLog**
> PageResource«LocationLogResource» getUserLocationLog(userId)

Returns the authentication log for a user

A log entry is recorded everytime a user requests a new token. Standard pagination available

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new UtilSecurityApi();
var userId = 56; // int | The user id

try { 
    var result = api_instance.getUserLocationLog(userId);
    print(result);
} catch (e) {
    print("Exception when calling UtilSecurityApi->getUserLocationLog: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **int**| The user id | [optional] 

### Return type

[**PageResource«LocationLogResource»**](PageResource«LocationLogResource».md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUserTokenDetails**
> TokenDetailsResource getUserTokenDetails()

Returns the authentication token details. Use /users endpoint for detailed user's info

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new UtilSecurityApi();

try { 
    var result = api_instance.getUserTokenDetails();
    print(result);
} catch (e) {
    print("Exception when calling UtilSecurityApi->getUserTokenDetails: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**TokenDetailsResource**](TokenDetailsResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

