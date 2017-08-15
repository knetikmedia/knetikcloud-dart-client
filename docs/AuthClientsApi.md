# swagger.api.AuthClientsApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://sandbox.knetikcloud.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createClient**](AuthClientsApi.md#createClient) | **POST** /auth/clients | Create a new client
[**deleteClient**](AuthClientsApi.md#deleteClient) | **DELETE** /auth/clients/{client_key} | Delete a client
[**getClient**](AuthClientsApi.md#getClient) | **GET** /auth/clients/{client_key} | Get a single client
[**getClientGrantTypes**](AuthClientsApi.md#getClientGrantTypes) | **GET** /auth/clients/grant-types | List available client grant types
[**getClients**](AuthClientsApi.md#getClients) | **GET** /auth/clients | List and search clients
[**setClientGrantTypes**](AuthClientsApi.md#setClientGrantTypes) | **PUT** /auth/clients/{client_key}/grant-types | Set grant types for a client
[**setClientRedirectUris**](AuthClientsApi.md#setClientRedirectUris) | **PUT** /auth/clients/{client_key}/redirect-uris | Set redirect uris for a client
[**updateClient**](AuthClientsApi.md#updateClient) | **PUT** /auth/clients/{client_key} | Update a client


# **createClient**
> ClientResource createClient(clientResource)

Create a new client

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new AuthClientsApi();
var clientResource = new ClientResource(); // ClientResource | The client resource object

try { 
    var result = api_instance.createClient(clientResource);
    print(result);
} catch (e) {
    print("Exception when calling AuthClientsApi->createClient: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **clientResource** | [**ClientResource**](ClientResource.md)| The client resource object | [optional] 

### Return type

[**ClientResource**](ClientResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteClient**
> deleteClient(clientKey)

Delete a client

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new AuthClientsApi();
var clientKey = clientKey_example; // String | The key of the client

try { 
    api_instance.deleteClient(clientKey);
} catch (e) {
    print("Exception when calling AuthClientsApi->deleteClient: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **clientKey** | **String**| The key of the client | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getClient**
> ClientResource getClient(clientKey)

Get a single client

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new AuthClientsApi();
var clientKey = clientKey_example; // String | The key of the client

try { 
    var result = api_instance.getClient(clientKey);
    print(result);
} catch (e) {
    print("Exception when calling AuthClientsApi->getClient: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **clientKey** | **String**| The key of the client | 

### Return type

[**ClientResource**](ClientResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getClientGrantTypes**
> List<GrantTypeResource> getClientGrantTypes()

List available client grant types

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new AuthClientsApi();

try { 
    var result = api_instance.getClientGrantTypes();
    print(result);
} catch (e) {
    print("Exception when calling AuthClientsApi->getClientGrantTypes: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<GrantTypeResource>**](GrantTypeResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getClients**
> PageResource«ClientResource» getClients(size, page, order)

List and search clients

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new AuthClientsApi();
var size = 56; // int | The number of objects returned per page
var page = 56; // int | The number of the page returned, starting with 1
var order = order_example; // String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]

try { 
    var result = api_instance.getClients(size, page, order);
    print(result);
} catch (e) {
    print("Exception when calling AuthClientsApi->getClients: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **String**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to id:ASC]

### Return type

[**PageResource«ClientResource»**](PageResource«ClientResource».md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **setClientGrantTypes**
> setClientGrantTypes(clientKey, grantList)

Set grant types for a client

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new AuthClientsApi();
var clientKey = clientKey_example; // String | The key of the client
var grantList = [new List&lt;String&gt;()]; // List<String> | A list of unique grant types

try { 
    api_instance.setClientGrantTypes(clientKey, grantList);
} catch (e) {
    print("Exception when calling AuthClientsApi->setClientGrantTypes: $e\n");
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

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **setClientRedirectUris**
> setClientRedirectUris(clientKey, redirectList)

Set redirect uris for a client

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new AuthClientsApi();
var clientKey = clientKey_example; // String | The key of the client
var redirectList = [new List&lt;String&gt;()]; // List<String> | A list of unique redirect uris

try { 
    api_instance.setClientRedirectUris(clientKey, redirectList);
} catch (e) {
    print("Exception when calling AuthClientsApi->setClientRedirectUris: $e\n");
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

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateClient**
> ClientResource updateClient(clientKey, clientResource)

Update a client

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new AuthClientsApi();
var clientKey = clientKey_example; // String | The key of the client
var clientResource = new ClientResource(); // ClientResource | The client resource object

try { 
    var result = api_instance.updateClient(clientKey, clientResource);
    print(result);
} catch (e) {
    print("Exception when calling AuthClientsApi->updateClient: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **clientKey** | **String**| The key of the client | 
 **clientResource** | [**ClientResource**](ClientResource.md)| The client resource object | [optional] 

### Return type

[**ClientResource**](ClientResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

