# swagger.api.StoreShippingApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://localhost:8080/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createShippingItemUsingPOST**](StoreShippingApi.md#createShippingItemUsingPOST) | **POST** /store/shipping | Create a shipping item
[**createShippingTemplateUsingPOST**](StoreShippingApi.md#createShippingTemplateUsingPOST) | **POST** /store/shipping/templates | Create a shipping template
[**deleteShippingItemUsingDELETE**](StoreShippingApi.md#deleteShippingItemUsingDELETE) | **DELETE** /store/shipping/{id} | Delete a shipping item
[**deleteShippingTemplateUsingDELETE**](StoreShippingApi.md#deleteShippingTemplateUsingDELETE) | **DELETE** /store/shipping/templates/{id} | Delete a shipping template
[**getShippingItemUsingGET**](StoreShippingApi.md#getShippingItemUsingGET) | **GET** /store/shipping/{id} | Get a single shipping item
[**getShippingTemplateUsingGET**](StoreShippingApi.md#getShippingTemplateUsingGET) | **GET** /store/shipping/templates/{id} | Get a single shipping template
[**getShippingTemplatesUsingGET**](StoreShippingApi.md#getShippingTemplatesUsingGET) | **GET** /store/shipping/templates | List and search shipping templates
[**updateShippingItemUsingPUT**](StoreShippingApi.md#updateShippingItemUsingPUT) | **PUT** /store/shipping/{id} | Update a shipping item
[**updateShippingTemplateUsingPUT**](StoreShippingApi.md#updateShippingTemplateUsingPUT) | **PUT** /store/shipping/templates/{id} | Update a shipping template


# **createShippingItemUsingPOST**
> ShippingItem createShippingItemUsingPOST(shippingItem)

Create a shipping item

A shipping item represents a shipping option and cost. SKUs have to be unique in the entire store.

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new StoreShippingApi();
var shippingItem = new ShippingItem(); // ShippingItem | The shipping item object

try { 
    var result = api_instance.createShippingItemUsingPOST(shippingItem);
    print(result);
} catch (e) {
    print("Exception when calling StoreShippingApi->createShippingItemUsingPOST: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **shippingItem** | [**ShippingItem**](ShippingItem.md)| The shipping item object | [optional] 

### Return type

[**ShippingItem**](ShippingItem.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createShippingTemplateUsingPOST**
> ItemTemplateResource createShippingTemplateUsingPOST(shippingTemplateResource)

Create a shipping template

Shipping Templates define a type of shipping and the properties they have.

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new StoreShippingApi();
var shippingTemplateResource = new ItemTemplateResource(); // ItemTemplateResource | The new shipping template

try { 
    var result = api_instance.createShippingTemplateUsingPOST(shippingTemplateResource);
    print(result);
} catch (e) {
    print("Exception when calling StoreShippingApi->createShippingTemplateUsingPOST: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **shippingTemplateResource** | [**ItemTemplateResource**](ItemTemplateResource.md)| The new shipping template | [optional] 

### Return type

[**ItemTemplateResource**](ItemTemplateResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteShippingItemUsingDELETE**
> deleteShippingItemUsingDELETE(id)

Delete a shipping item

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new StoreShippingApi();
var id = 56; // int | The id of the shipping item

try { 
    api_instance.deleteShippingItemUsingDELETE(id);
} catch (e) {
    print("Exception when calling StoreShippingApi->deleteShippingItemUsingDELETE: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The id of the shipping item | 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteShippingTemplateUsingDELETE**
> deleteShippingTemplateUsingDELETE(id, cascade)

Delete a shipping template

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new StoreShippingApi();
var id = id_example; // String | The id of the template
var cascade = cascade_example; // String | force deleting the template if it's attached to other objects, cascade = detach

try { 
    api_instance.deleteShippingTemplateUsingDELETE(id, cascade);
} catch (e) {
    print("Exception when calling StoreShippingApi->deleteShippingTemplateUsingDELETE: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the template | 
 **cascade** | **String**| force deleting the template if it&#39;s attached to other objects, cascade &#x3D; detach | [optional] 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getShippingItemUsingGET**
> ShippingItem getShippingItemUsingGET(id)

Get a single shipping item

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new StoreShippingApi();
var id = 56; // int | The id of the shipping item

try { 
    var result = api_instance.getShippingItemUsingGET(id);
    print(result);
} catch (e) {
    print("Exception when calling StoreShippingApi->getShippingItemUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The id of the shipping item | 

### Return type

[**ShippingItem**](ShippingItem.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getShippingTemplateUsingGET**
> ItemTemplateResource getShippingTemplateUsingGET(id)

Get a single shipping template

Shipping Templates define a type of shipping and the properties they have.

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new StoreShippingApi();
var id = id_example; // String | The id of the template

try { 
    var result = api_instance.getShippingTemplateUsingGET(id);
    print(result);
} catch (e) {
    print("Exception when calling StoreShippingApi->getShippingTemplateUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the template | 

### Return type

[**ItemTemplateResource**](ItemTemplateResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getShippingTemplatesUsingGET**
> Page«ItemTemplateResource» getShippingTemplatesUsingGET(size, page, order)

List and search shipping templates

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new StoreShippingApi();
var size = 56; // int | The number of objects returned per page
var page = 56; // int | The number of the page returned, starting with 1
var order = order_example; // String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]

try { 
    var result = api_instance.getShippingTemplatesUsingGET(size, page, order);
    print(result);
} catch (e) {
    print("Exception when calling StoreShippingApi->getShippingTemplatesUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **String**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to id:ASC]

### Return type

[**Page«ItemTemplateResource»**](Page«ItemTemplateResource».md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateShippingItemUsingPUT**
> updateShippingItemUsingPUT(id, shippingItem)

Update a shipping item

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new StoreShippingApi();
var id = 56; // int | The id of the shipping item
var shippingItem = new ShippingItem(); // ShippingItem | The shipping item object

try { 
    api_instance.updateShippingItemUsingPUT(id, shippingItem);
} catch (e) {
    print("Exception when calling StoreShippingApi->updateShippingItemUsingPUT: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The id of the shipping item | 
 **shippingItem** | [**ShippingItem**](ShippingItem.md)| The shipping item object | [optional] 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateShippingTemplateUsingPUT**
> updateShippingTemplateUsingPUT(id, shippingTemplateResource)

Update a shipping template

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new StoreShippingApi();
var id = id_example; // String | The id of the template
var shippingTemplateResource = new ItemTemplateResource(); // ItemTemplateResource | The shipping template resource object

try { 
    api_instance.updateShippingTemplateUsingPUT(id, shippingTemplateResource);
} catch (e) {
    print("Exception when calling StoreShippingApi->updateShippingTemplateUsingPUT: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the template | 
 **shippingTemplateResource** | [**ItemTemplateResource**](ItemTemplateResource.md)| The shipping template resource object | [optional] 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

