# swagger.api.FulfillmentApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://localhost:8080/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createFulfillmentTypeUsingPOST**](FulfillmentApi.md#createFulfillmentTypeUsingPOST) | **POST** /store/fulfillment/types | Create a fulfillment type
[**deleteFulfillmentTypeUsingDELETE**](FulfillmentApi.md#deleteFulfillmentTypeUsingDELETE) | **DELETE** /store/fulfillment/types/{id} | Delete a fulfillment type
[**getFulfillmentTypeUsingGET**](FulfillmentApi.md#getFulfillmentTypeUsingGET) | **GET** /store/fulfillment/types/{id} | Get a single fulfillment type
[**getFulfillmentsUsingGET**](FulfillmentApi.md#getFulfillmentsUsingGET) | **GET** /store/fulfillment/types | List and search fulfillment types
[**updateFulfillmentTypeUsingPUT**](FulfillmentApi.md#updateFulfillmentTypeUsingPUT) | **PUT** /store/fulfillment/types/{id} | Update a fulfillment type


# **createFulfillmentTypeUsingPOST**
> FulfillmentType createFulfillmentTypeUsingPOST(type)

Create a fulfillment type

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new FulfillmentApi();
var type = new FulfillmentType(); // FulfillmentType | The fulfillment type

try { 
    var result = api_instance.createFulfillmentTypeUsingPOST(type);
    print(result);
} catch (e) {
    print("Exception when calling FulfillmentApi->createFulfillmentTypeUsingPOST: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **type** | [**FulfillmentType**](FulfillmentType.md)| The fulfillment type | [optional] 

### Return type

[**FulfillmentType**](FulfillmentType.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteFulfillmentTypeUsingDELETE**
> deleteFulfillmentTypeUsingDELETE(id)

Delete a fulfillment type

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new FulfillmentApi();
var id = 56; // int | The id

try { 
    api_instance.deleteFulfillmentTypeUsingDELETE(id);
} catch (e) {
    print("Exception when calling FulfillmentApi->deleteFulfillmentTypeUsingDELETE: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The id | 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getFulfillmentTypeUsingGET**
> FulfillmentType getFulfillmentTypeUsingGET(id)

Get a single fulfillment type

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new FulfillmentApi();
var id = 56; // int | The id

try { 
    var result = api_instance.getFulfillmentTypeUsingGET(id);
    print(result);
} catch (e) {
    print("Exception when calling FulfillmentApi->getFulfillmentTypeUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The id | 

### Return type

[**FulfillmentType**](FulfillmentType.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getFulfillmentsUsingGET**
> PageResource«FulfillmentType» getFulfillmentsUsingGET(size, page, order)

List and search fulfillment types

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new FulfillmentApi();
var size = 56; // int | The number of objects returned per page
var page = 56; // int | The number of the page returned, starting with 1
var order = order_example; // String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]

try { 
    var result = api_instance.getFulfillmentsUsingGET(size, page, order);
    print(result);
} catch (e) {
    print("Exception when calling FulfillmentApi->getFulfillmentsUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **String**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to id:ASC]

### Return type

[**PageResource«FulfillmentType»**](PageResource«FulfillmentType».md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateFulfillmentTypeUsingPUT**
> updateFulfillmentTypeUsingPUT(id, fulfillmentType)

Update a fulfillment type

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new FulfillmentApi();
var id = 56; // int | The id
var fulfillmentType = new FulfillmentType(); // FulfillmentType | The fulfillment type

try { 
    api_instance.updateFulfillmentTypeUsingPUT(id, fulfillmentType);
} catch (e) {
    print("Exception when calling FulfillmentApi->updateFulfillmentTypeUsingPUT: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The id | 
 **fulfillmentType** | [**FulfillmentType**](FulfillmentType.md)| The fulfillment type | [optional] 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

