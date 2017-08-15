# swagger.api.StoreSalesApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://sandbox.knetikcloud.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createCatalogSale**](StoreSalesApi.md#createCatalogSale) | **POST** /store/sales | Create a sale
[**deleteCatalogSale**](StoreSalesApi.md#deleteCatalogSale) | **DELETE** /store/sales/{id} | Delete a sale
[**getCatalogSale**](StoreSalesApi.md#getCatalogSale) | **GET** /store/sales/{id} | Get a single sale
[**getCatalogSales**](StoreSalesApi.md#getCatalogSales) | **GET** /store/sales | List and search sales
[**updateCatalogSale**](StoreSalesApi.md#updateCatalogSale) | **PUT** /store/sales/{id} | Update a sale


# **createCatalogSale**
> CatalogSale createCatalogSale(catalogSale)

Create a sale

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new StoreSalesApi();
var catalogSale = new CatalogSale(); // CatalogSale | The catalog sale object

try { 
    var result = api_instance.createCatalogSale(catalogSale);
    print(result);
} catch (e) {
    print("Exception when calling StoreSalesApi->createCatalogSale: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **catalogSale** | [**CatalogSale**](CatalogSale.md)| The catalog sale object | [optional] 

### Return type

[**CatalogSale**](CatalogSale.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteCatalogSale**
> deleteCatalogSale(id)

Delete a sale

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new StoreSalesApi();
var id = 56; // int | The id of the sale

try { 
    api_instance.deleteCatalogSale(id);
} catch (e) {
    print("Exception when calling StoreSalesApi->deleteCatalogSale: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The id of the sale | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCatalogSale**
> CatalogSale getCatalogSale(id)

Get a single sale

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new StoreSalesApi();
var id = 56; // int | The id of the sale

try { 
    var result = api_instance.getCatalogSale(id);
    print(result);
} catch (e) {
    print("Exception when calling StoreSalesApi->getCatalogSale: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The id of the sale | 

### Return type

[**CatalogSale**](CatalogSale.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCatalogSales**
> PageResource«CatalogSale» getCatalogSales(size, page, order)

List and search sales

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new StoreSalesApi();
var size = 56; // int | The number of objects returned per page
var page = 56; // int | The number of the page returned, starting with 1
var order = order_example; // String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]

try { 
    var result = api_instance.getCatalogSales(size, page, order);
    print(result);
} catch (e) {
    print("Exception when calling StoreSalesApi->getCatalogSales: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **String**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to id:ASC]

### Return type

[**PageResource«CatalogSale»**](PageResource«CatalogSale».md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateCatalogSale**
> CatalogSale updateCatalogSale(id, catalogSale)

Update a sale

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new StoreSalesApi();
var id = 56; // int | The id of the sale
var catalogSale = new CatalogSale(); // CatalogSale | The catalog sale object

try { 
    var result = api_instance.updateCatalogSale(id, catalogSale);
    print(result);
} catch (e) {
    print("Exception when calling StoreSalesApi->updateCatalogSale: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The id of the sale | 
 **catalogSale** | [**CatalogSale**](CatalogSale.md)| The catalog sale object | [optional] 

### Return type

[**CatalogSale**](CatalogSale.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

