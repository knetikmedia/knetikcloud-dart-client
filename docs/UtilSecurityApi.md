# swagger.api.UtilSecurityApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://integration.knetikcloud.com/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getUserLocationLogUsingGET**](UtilSecurityApi.md#getUserLocationLogUsingGET) | **GET** /security/country-log | Returns the authentication log for a user
[**userUsingGET**](UtilSecurityApi.md#userUsingGET) | **GET** /me | Returns the authentication token details. Use /users endpoint for detailed user&#39;s info


# **getUserLocationLogUsingGET**
> PageResource«LocationLogResource» getUserLocationLogUsingGET(userId)

Returns the authentication log for a user

A log entry is recorded everytime a user requests a new token. Standard pagination available

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: knetik_oauth
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new UtilSecurityApi();
var userId = 56; // int | The user id

try { 
    var result = api_instance.getUserLocationLogUsingGET(userId);
    print(result);
} catch (e) {
    print("Exception when calling UtilSecurityApi->getUserLocationLogUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **int**| The user id | [optional] 

### Return type

[**PageResource«LocationLogResource»**](PageResource«LocationLogResource».md)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userUsingGET**
> TokenDetailsResource userUsingGET()

Returns the authentication token details. Use /users endpoint for detailed user's info

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: knetik_oauth
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new UtilSecurityApi();

try { 
    var result = api_instance.userUsingGET();
    print(result);
} catch (e) {
    print("Exception when calling UtilSecurityApi->userUsingGET: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**TokenDetailsResource**](TokenDetailsResource.md)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

