# swagger.api.FulfillmentApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://sandbox.knetikcloud.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createFulfillmentType**](FulfillmentApi.md#createFulfillmentType) | **POST** /store/fulfillment/types | Create a fulfillment type
[**deleteFulfillmentType**](FulfillmentApi.md#deleteFulfillmentType) | **DELETE** /store/fulfillment/types/{id} | Delete a fulfillment type
[**getFulfillmentType**](FulfillmentApi.md#getFulfillmentType) | **GET** /store/fulfillment/types/{id} | Get a single fulfillment type
[**getFulfillmentTypes**](FulfillmentApi.md#getFulfillmentTypes) | **GET** /store/fulfillment/types | List and search fulfillment types
[**updateFulfillmentType**](FulfillmentApi.md#updateFulfillmentType) | **PUT** /store/fulfillment/types/{id} | Update a fulfillment type


# **createFulfillmentType**
> FulfillmentType createFulfillmentType(type)

Create a fulfillment type

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new FulfillmentApi();
var type = new FulfillmentType(); // FulfillmentType | The fulfillment type

try { 
    var result = api_instance.createFulfillmentType(type);
    print(result);
} catch (e) {
    print("Exception when calling FulfillmentApi->createFulfillmentType: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **type** | [**FulfillmentType**](FulfillmentType.md)| The fulfillment type | [optional] 

### Return type

[**FulfillmentType**](FulfillmentType.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteFulfillmentType**
> deleteFulfillmentType(id)

Delete a fulfillment type

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new FulfillmentApi();
var id = 56; // int | The id

try { 
    api_instance.deleteFulfillmentType(id);
} catch (e) {
    print("Exception when calling FulfillmentApi->deleteFulfillmentType: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The id | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getFulfillmentType**
> FulfillmentType getFulfillmentType(id)

Get a single fulfillment type

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new FulfillmentApi();
var id = 56; // int | The id

try { 
    var result = api_instance.getFulfillmentType(id);
    print(result);
} catch (e) {
    print("Exception when calling FulfillmentApi->getFulfillmentType: $e\n");
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

# **getFulfillmentTypes**
> PageResource«FulfillmentType» getFulfillmentTypes(size, page, order)

List and search fulfillment types

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new FulfillmentApi();
var size = 56; // int | The number of objects returned per page
var page = 56; // int | The number of the page returned, starting with 1
var order = order_example; // String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]

try { 
    var result = api_instance.getFulfillmentTypes(size, page, order);
    print(result);
} catch (e) {
    print("Exception when calling FulfillmentApi->getFulfillmentTypes: $e\n");
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

# **updateFulfillmentType**
> updateFulfillmentType(id, fulfillmentType)

Update a fulfillment type

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new FulfillmentApi();
var id = 56; // int | The id
var fulfillmentType = new FulfillmentType(); // FulfillmentType | The fulfillment type

try { 
    api_instance.updateFulfillmentType(id, fulfillmentType);
} catch (e) {
    print("Exception when calling FulfillmentApi->updateFulfillmentType: $e\n");
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

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

