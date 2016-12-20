# swagger.api.StoreSalesApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://localhost:8080/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createCatalogSaleUsingPOST**](StoreSalesApi.md#createCatalogSaleUsingPOST) | **POST** /store/sales | Create a sale
[**deleteCatalogSaleUsingDELETE**](StoreSalesApi.md#deleteCatalogSaleUsingDELETE) | **DELETE** /store/sales/{id} | Delete a sale
[**getCatalogSaleUsingGET**](StoreSalesApi.md#getCatalogSaleUsingGET) | **GET** /store/sales/{id} | Get a single sale
[**getCatalogSalesUsingGET**](StoreSalesApi.md#getCatalogSalesUsingGET) | **GET** /store/sales | List and search sales
[**updateCatalogSaleUsingPUT**](StoreSalesApi.md#updateCatalogSaleUsingPUT) | **PUT** /store/sales/{id} | Update a sale


# **createCatalogSaleUsingPOST**
> CatalogSale createCatalogSaleUsingPOST(catalogSale)

Create a sale

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new StoreSalesApi();
var catalogSale = new CatalogSale(); // CatalogSale | The catalog sale object

try { 
    var result = api_instance.createCatalogSaleUsingPOST(catalogSale);
    print(result);
} catch (e) {
    print("Exception when calling StoreSalesApi->createCatalogSaleUsingPOST: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **catalogSale** | [**CatalogSale**](CatalogSale.md)| The catalog sale object | [optional] 

### Return type

[**CatalogSale**](CatalogSale.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteCatalogSaleUsingDELETE**
> deleteCatalogSaleUsingDELETE(id)

Delete a sale

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new StoreSalesApi();
var id = 56; // int | The id of the sale

try { 
    api_instance.deleteCatalogSaleUsingDELETE(id);
} catch (e) {
    print("Exception when calling StoreSalesApi->deleteCatalogSaleUsingDELETE: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The id of the sale | 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCatalogSaleUsingGET**
> CatalogSale getCatalogSaleUsingGET(id)

Get a single sale

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new StoreSalesApi();
var id = 56; // int | The id of the sale

try { 
    var result = api_instance.getCatalogSaleUsingGET(id);
    print(result);
} catch (e) {
    print("Exception when calling StoreSalesApi->getCatalogSaleUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The id of the sale | 

### Return type

[**CatalogSale**](CatalogSale.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCatalogSalesUsingGET**
> Page«CatalogSale» getCatalogSalesUsingGET(size, page, order)

List and search sales

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new StoreSalesApi();
var size = 56; // int | The number of objects returned per page
var page = 56; // int | The number of the page returned, starting with 1
var order = order_example; // String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]

try { 
    var result = api_instance.getCatalogSalesUsingGET(size, page, order);
    print(result);
} catch (e) {
    print("Exception when calling StoreSalesApi->getCatalogSalesUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **String**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to id:ASC]

### Return type

[**Page«CatalogSale»**](Page«CatalogSale».md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateCatalogSaleUsingPUT**
> updateCatalogSaleUsingPUT(id, catalogSale)

Update a sale

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new StoreSalesApi();
var id = 56; // int | The id of the sale
var catalogSale = new CatalogSale(); // CatalogSale | The catalog sale object

try { 
    api_instance.updateCatalogSaleUsingPUT(id, catalogSale);
} catch (e) {
    print("Exception when calling StoreSalesApi->updateCatalogSaleUsingPUT: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The id of the sale | 
 **catalogSale** | [**CatalogSale**](CatalogSale.md)| The catalog sale object | [optional] 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

