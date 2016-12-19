# swagger.api.UsersAddressesApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://localhost:8080/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createAddressUsingPOST**](UsersAddressesApi.md#createAddressUsingPOST) | **POST** /users/{user_id}/addresses | Save a new address
[**deleteAddressUsingDELETE**](UsersAddressesApi.md#deleteAddressUsingDELETE) | **DELETE** /users/{user_id}/addresses/{id} | Delete an address
[**getAddressUsingGET**](UsersAddressesApi.md#getAddressUsingGET) | **GET** /users/{user_id}/addresses/{id} | Get a single address
[**getAddressesUsingGET**](UsersAddressesApi.md#getAddressesUsingGET) | **GET** /users/{user_id}/addresses | List and search addresses
[**updateAddressUsingPUT**](UsersAddressesApi.md#updateAddressUsingPUT) | **PUT** /users/{user_id}/addresses/{id} | Update an address


# **createAddressUsingPOST**
> SavedAddressResource createAddressUsingPOST(userId, savedAddressResource)

Save a new address

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new UsersAddressesApi();
var userId = userId_example; // String | The id of the user
var savedAddressResource = new SavedAddressResource(); // SavedAddressResource | The new address

try { 
    var result = api_instance.createAddressUsingPOST(userId, savedAddressResource);
    print(result);
} catch (e) {
    print("Exception when calling UsersAddressesApi->createAddressUsingPOST: $e\n");
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
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteAddressUsingDELETE**
> deleteAddressUsingDELETE(userId, id)

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
    api_instance.deleteAddressUsingDELETE(userId, id);
} catch (e) {
    print("Exception when calling UsersAddressesApi->deleteAddressUsingDELETE: $e\n");
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
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAddressUsingGET**
> SavedAddressResource getAddressUsingGET(userId, id)

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
    var result = api_instance.getAddressUsingGET(userId, id);
    print(result);
} catch (e) {
    print("Exception when calling UsersAddressesApi->getAddressUsingGET: $e\n");
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
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAddressesUsingGET**
> Page«SavedAddressResource» getAddressesUsingGET(userId, size, page, order)

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
var order = order_example; // String | a comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]

try { 
    var result = api_instance.getAddressesUsingGET(userId, size, page, order);
    print(result);
} catch (e) {
    print("Exception when calling UsersAddressesApi->getAddressesUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**| The id of the user | 
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **String**| a comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to 1]

### Return type

[**Page«SavedAddressResource»**](Page«SavedAddressResource».md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateAddressUsingPUT**
> updateAddressUsingPUT(userId, id, savedAddressResource)

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
    api_instance.updateAddressUsingPUT(userId, id, savedAddressResource);
} catch (e) {
    print("Exception when calling UsersAddressesApi->updateAddressUsingPUT: $e\n");
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
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

