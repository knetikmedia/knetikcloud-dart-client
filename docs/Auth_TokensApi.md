# swagger.api.Auth_TokensApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://jsapi-integration.us-east-1.elasticbeanstalk.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteTokens**](Auth_TokensApi.md#deleteTokens) | **DELETE** /auth/tokens | Delete tokens by username, client id, or both
[**getToken**](Auth_TokensApi.md#getToken) | **GET** /auth/tokens/{username}/{client_id} | Get a single token by username and client id
[**getTokens**](Auth_TokensApi.md#getTokens) | **GET** /auth/tokens | List usernames and client ids


# **deleteTokens**
> deleteTokens(username, clientId)

Delete tokens by username, client id, or both

<b>Permissions Needed:</b> TOKENS_ADMIN

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new Auth_TokensApi();
var username = username_example; // String | The username of the user
var clientId = clientId_example; // String | The id of the client

try { 
    api_instance.deleteTokens(username, clientId);
} catch (e) {
    print("Exception when calling Auth_TokensApi->deleteTokens: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **String**| The username of the user | [optional] 
 **clientId** | **String**| The id of the client | [optional] 

### Return type

void (empty response body)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getToken**
> OauthAccessTokenResource getToken(username, clientId)

Get a single token by username and client id

<b>Permissions Needed:</b> TOKENS_ADMIN

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new Auth_TokensApi();
var username = username_example; // String | The username of the user
var clientId = clientId_example; // String | The id of the client

try { 
    var result = api_instance.getToken(username, clientId);
    print(result);
} catch (e) {
    print("Exception when calling Auth_TokensApi->getToken: $e\n");
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

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTokens**
> PageResource«OauthAccessTokenResource» getTokens(filterClientId, filterUsername, size, page, order)

List usernames and client ids

Token value not shown. <br><br><b>Permissions Needed:</b> TOKENS_ADMIN

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new Auth_TokensApi();
var filterClientId = filterClientId_example; // String | Filters for token whose client id matches provided string
var filterUsername = filterUsername_example; // String | Filters for token whose username matches provided string
var size = 56; // int | The number of objects returned per page
var page = 56; // int | The number of the page returned, starting with 1
var order = order_example; // String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]

try { 
    var result = api_instance.getTokens(filterClientId, filterUsername, size, page, order);
    print(result);
} catch (e) {
    print("Exception when calling Auth_TokensApi->getTokens: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterClientId** | **String**| Filters for token whose client id matches provided string | [optional] 
 **filterUsername** | **String**| Filters for token whose username matches provided string | [optional] 
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **String**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] 

### Return type

[**PageResource«OauthAccessTokenResource»**](PageResource«OauthAccessTokenResource».md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

