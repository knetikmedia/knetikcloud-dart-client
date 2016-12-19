# swagger.api.AuthTokensApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://localhost:8080/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteTokenUsingDELETE**](AuthTokensApi.md#deleteTokenUsingDELETE) | **DELETE** /auth/tokens/{username} | Delete all tokens by username
[**deleteTokenWithClientIdUsingDELETE**](AuthTokensApi.md#deleteTokenWithClientIdUsingDELETE) | **DELETE** /auth/tokens/{username}/{client_id} | Delete a token by username and client id
[**getTokenByUserUsingGET**](AuthTokensApi.md#getTokenByUserUsingGET) | **GET** /auth/tokens/{username}/{client_id} | Get a single token by username and client id
[**getTokensUsingGET**](AuthTokensApi.md#getTokensUsingGET) | **GET** /auth/tokens | List usernames and client ids


# **deleteTokenUsingDELETE**
> deleteTokenUsingDELETE(username)

Delete all tokens by username

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new AuthTokensApi();
var username = username_example; // String | The username of the user

try { 
    api_instance.deleteTokenUsingDELETE(username);
} catch (e) {
    print("Exception when calling AuthTokensApi->deleteTokenUsingDELETE: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **String**| The username of the user | 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteTokenWithClientIdUsingDELETE**
> deleteTokenWithClientIdUsingDELETE(username, clientId)

Delete a token by username and client id

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new AuthTokensApi();
var username = username_example; // String | The username of the user
var clientId = clientId_example; // String | The id of the client

try { 
    api_instance.deleteTokenWithClientIdUsingDELETE(username, clientId);
} catch (e) {
    print("Exception when calling AuthTokensApi->deleteTokenWithClientIdUsingDELETE: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **String**| The username of the user | 
 **clientId** | **String**| The id of the client | 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTokenByUserUsingGET**
> OauthAccessTokenResource getTokenByUserUsingGET(username, clientId)

Get a single token by username and client id

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new AuthTokensApi();
var username = username_example; // String | The username of the user
var clientId = clientId_example; // String | The id of the client

try { 
    var result = api_instance.getTokenByUserUsingGET(username, clientId);
    print(result);
} catch (e) {
    print("Exception when calling AuthTokensApi->getTokenByUserUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **String**| The username of the user | 
 **clientId** | **String**| The id of the client | 

### Return type

[**OauthAccessTokenResource**](OauthAccessTokenResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTokensUsingGET**
> Page«OauthAccessTokenResource» getTokensUsingGET(filterClientId, filterUsername, size, page, order)

List usernames and client ids

Token value not shown

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new AuthTokensApi();
var filterClientId = filterClientId_example; // String | Filters for token whose client id matches provided string
var filterUsername = filterUsername_example; // String | Filters for token whose username matches provided string
var size = 56; // int | The number of objects returned per page
var page = 56; // int | The number of the page returned, starting with 1
var order = order_example; // String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]

try { 
    var result = api_instance.getTokensUsingGET(filterClientId, filterUsername, size, page, order);
    print(result);
} catch (e) {
    print("Exception when calling AuthTokensApi->getTokensUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterClientId** | **String**| Filters for token whose client id matches provided string | [optional] 
 **filterUsername** | **String**| Filters for token whose username matches provided string | [optional] 
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **String**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to 1]

### Return type

[**Page«OauthAccessTokenResource»**](Page«OauthAccessTokenResource».md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

