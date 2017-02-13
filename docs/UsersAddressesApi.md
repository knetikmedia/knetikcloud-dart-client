# swagger.api.UsersAddressesApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://integration.knetikcloud.com/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createAddress**](UsersAddressesApi.md#createAddress) | **POST** /users/{user_id}/addresses | Create a new address
[**deleteAddress**](UsersAddressesApi.md#deleteAddress) | **DELETE** /users/{user_id}/addresses/{id} | Delete an address
[**getAddress**](UsersAddressesApi.md#getAddress) | **GET** /users/{user_id}/addresses/{id} | Get a single address
[**getAddresses**](UsersAddressesApi.md#getAddresses) | **GET** /users/{user_id}/addresses | List and search addresses
[**updateAddress**](UsersAddressesApi.md#updateAddress) | **PUT** /users/{user_id}/addresses/{id} | Update an address


# **createAddress**
> SavedAddressResource createAddress(userId, savedAddressResource)

Create a new address

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new UsersAddressesApi();
var userId = userId_example; // String | The id of the user
var savedAddressResource = new SavedAddressResource(); // SavedAddressResource | The new address

try { 
    var result = api_instance.createAddress(userId, savedAddressResource);
    print(result);
} catch (e) {
    print("Exception when calling UsersAddressesApi->createAddress: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**| The id of the user | 
 **savedAddressResource** | [**SavedAddressResource**](SavedAddressResource.md)| The new address | [optional] 

### Return type

[**SavedAddressResource**](SavedAddressResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteAddress**
> deleteAddress(userId, id)

Delete an address

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new UsersAddressesApi();
var userId = userId_example; // String | The id of the user
var id = 56; // int | The id of the address

try { 
    api_instance.deleteAddress(userId, id);
} catch (e) {
    print("Exception when calling UsersAddressesApi->deleteAddress: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**| The id of the user | 
 **id** | **int**| The id of the address | 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAddress**
> SavedAddressResource getAddress(userId, id)

Get a single address

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new UsersAddressesApi();
var userId = userId_example; // String | The id of the user
var id = 56; // int | The id of the address

try { 
    var result = api_instance.getAddress(userId, id);
    print(result);
} catch (e) {
    print("Exception when calling UsersAddressesApi->getAddress: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**| The id of the user | 
 **id** | **int**| The id of the address | 

### Return type

[**SavedAddressResource**](SavedAddressResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAddresses**
> PageResource«SavedAddressResource» getAddresses(userId, size, page, order)

List and search addresses

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new UsersAddressesApi();
var userId = userId_example; // String | The id of the user
var size = 56; // int | The number of objects returned per page
var page = 56; // int | The number of the page returned, starting with 1
var order = order_example; // String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]

try { 
    var result = api_instance.getAddresses(userId, size, page, order);
    print(result);
} catch (e) {
    print("Exception when calling UsersAddressesApi->getAddresses: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**| The id of the user | 
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **String**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to id:ASC]

### Return type

[**PageResource«SavedAddressResource»**](PageResource«SavedAddressResource».md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateAddress**
> updateAddress(userId, id, savedAddressResource)

Update an address

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new UsersAddressesApi();
var userId = userId_example; // String | The id of the user
var id = 56; // int | The id of the address
var savedAddressResource = new SavedAddressResource(); // SavedAddressResource | The saved address resource object

try { 
    api_instance.updateAddress(userId, id, savedAddressResource);
} catch (e) {
    print("Exception when calling UsersAddressesApi->updateAddress: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**| The id of the user | 
 **id** | **int**| The id of the address | 
 **savedAddressResource** | [**SavedAddressResource**](SavedAddressResource.md)| The saved address resource object | [optional] 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

