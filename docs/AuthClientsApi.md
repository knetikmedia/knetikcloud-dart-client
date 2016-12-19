# swagger.api.AuthClientsApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://localhost:8080/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**assignClientGrantTypesUsingPUT**](AuthClientsApi.md#assignClientGrantTypesUsingPUT) | **PUT** /auth/clients/{client_key}/grant-types | Set grant types for a client
[**assignClientRedirectUrisUsingPUT**](AuthClientsApi.md#assignClientRedirectUrisUsingPUT) | **PUT** /auth/clients/{client_key}/redirect-uris | Set redirect uris for a client
[**createClientUsingPOST**](AuthClientsApi.md#createClientUsingPOST) | **POST** /auth/clients | Create a new client
[**deleteClientUsingDELETE**](AuthClientsApi.md#deleteClientUsingDELETE) | **DELETE** /auth/clients/{client_key} | Delete a client
[**getClientUsingGET**](AuthClientsApi.md#getClientUsingGET) | **GET** /auth/clients/{client_key} | Get a single client
[**getClientsUsingGET**](AuthClientsApi.md#getClientsUsingGET) | **GET** /auth/clients | List and search clients
[**listAvailableGrantTypesUsingGET**](AuthClientsApi.md#listAvailableGrantTypesUsingGET) | **GET** /auth/clients/grant-types | List available client grant types
[**updateClientUsingPUT**](AuthClientsApi.md#updateClientUsingPUT) | **PUT** /auth/clients/{client_key} | Update a client


# **assignClientGrantTypesUsingPUT**
> assignClientGrantTypesUsingPUT(clientKey, grantList)

Set grant types for a client

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new AuthClientsApi();
var clientKey = clientKey_example; // String | The key of the client
var grantList = [new List&lt;String&gt;()]; // List<String> | A list of unique grant types

try { 
    api_instance.assignClientGrantTypesUsingPUT(clientKey, grantList);
} catch (e) {
    print("Exception when calling AuthClientsApi->assignClientGrantTypesUsingPUT: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **clientKey** | **String**| The key of the client | 
 **grantList** | **List&lt;String&gt;**| A list of unique grant types | [optional] 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **assignClientRedirectUrisUsingPUT**
> assignClientRedirectUrisUsingPUT(clientKey, redirectList)

Set redirect uris for a client

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new AuthClientsApi();
var clientKey = clientKey_example; // String | The key of the client
var redirectList = [new List&lt;String&gt;()]; // List<String> | A list of unique redirect uris

try { 
    api_instance.assignClientRedirectUrisUsingPUT(clientKey, redirectList);
} catch (e) {
    print("Exception when calling AuthClientsApi->assignClientRedirectUrisUsingPUT: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **clientKey** | **String**| The key of the client | 
 **redirectList** | **List&lt;String&gt;**| A list of unique redirect uris | [optional] 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createClientUsingPOST**
> ClientResource createClientUsingPOST(clientResource)

Create a new client

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new AuthClientsApi();
var clientResource = new ClientResource(); // ClientResource | The client resource object

try { 
    var result = api_instance.createClientUsingPOST(clientResource);
    print(result);
} catch (e) {
    print("Exception when calling AuthClientsApi->createClientUsingPOST: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **clientResource** | [**ClientResource**](ClientResource.md)| The client resource object | [optional] 

### Return type

[**ClientResource**](ClientResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteClientUsingDELETE**
> deleteClientUsingDELETE(clientKey)

Delete a client

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new AuthClientsApi();
var clientKey = clientKey_example; // String | The key of the client

try { 
    api_instance.deleteClientUsingDELETE(clientKey);
} catch (e) {
    print("Exception when calling AuthClientsApi->deleteClientUsingDELETE: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **clientKey** | **String**| The key of the client | 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getClientUsingGET**
> ClientResource getClientUsingGET(clientKey)

Get a single client

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new AuthClientsApi();
var clientKey = clientKey_example; // String | The key of the client

try { 
    var result = api_instance.getClientUsingGET(clientKey);
    print(result);
} catch (e) {
    print("Exception when calling AuthClientsApi->getClientUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **clientKey** | **String**| The key of the client | 

### Return type

[**ClientResource**](ClientResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getClientsUsingGET**
> Page«ClientResource» getClientsUsingGET(size, page, order)

List and search clients

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new AuthClientsApi();
var size = 56; // int | The number of objects returned per page
var page = 56; // int | The number of the page returned, starting with 1
var order = order_example; // String | a comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]

try { 
    var result = api_instance.getClientsUsingGET(size, page, order);
    print(result);
} catch (e) {
    print("Exception when calling AuthClientsApi->getClientsUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **String**| a comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to 1]

### Return type

[**Page«ClientResource»**](Page«ClientResource».md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listAvailableGrantTypesUsingGET**
> List<GrantTypeResource> listAvailableGrantTypesUsingGET()

List available client grant types

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new AuthClientsApi();

try { 
    var result = api_instance.listAvailableGrantTypesUsingGET();
    print(result);
} catch (e) {
    print("Exception when calling AuthClientsApi->listAvailableGrantTypesUsingGET: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<GrantTypeResource>**](GrantTypeResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateClientUsingPUT**
> updateClientUsingPUT(clientKey, clientResource)

Update a client

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new AuthClientsApi();
var clientKey = clientKey_example; // String | The key of the client
var clientResource = new ClientResource(); // ClientResource | The client resource object

try { 
    api_instance.updateClientUsingPUT(clientKey, clientResource);
} catch (e) {
    print("Exception when calling AuthClientsApi->updateClientUsingPUT: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **clientKey** | **String**| The key of the client | 
 **clientResource** | [**ClientResource**](ClientResource.md)| The client resource object | [optional] 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

