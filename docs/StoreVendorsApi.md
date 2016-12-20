# swagger.api.StoreVendorsApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://localhost:8080/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createVendorUsingPOST**](StoreVendorsApi.md#createVendorUsingPOST) | **POST** /vendors | Create a vendor
[**deleteVendorUsingDELETE**](StoreVendorsApi.md#deleteVendorUsingDELETE) | **DELETE** /vendors/{id} | Delete a vendor
[**getVendorUsingGET**](StoreVendorsApi.md#getVendorUsingGET) | **GET** /vendors/{id} | Get a single vendor
[**getVendorsUsingGET**](StoreVendorsApi.md#getVendorsUsingGET) | **GET** /vendors | List and search vendors
[**updateVendorUsingPUT**](StoreVendorsApi.md#updateVendorUsingPUT) | **PUT** /vendors/{id} | Update a vendor


# **createVendorUsingPOST**
> VendorResource createVendorUsingPOST(vendor)

Create a vendor

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new StoreVendorsApi();
var vendor = new VendorResource(); // VendorResource | The vendor

try { 
    var result = api_instance.createVendorUsingPOST(vendor);
    print(result);
} catch (e) {
    print("Exception when calling StoreVendorsApi->createVendorUsingPOST: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vendor** | [**VendorResource**](VendorResource.md)| The vendor | [optional] 

### Return type

[**VendorResource**](VendorResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteVendorUsingDELETE**
> deleteVendorUsingDELETE(id)

Delete a vendor

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new StoreVendorsApi();
var id = 56; // int | The id of the vendor

try { 
    api_instance.deleteVendorUsingDELETE(id);
} catch (e) {
    print("Exception when calling StoreVendorsApi->deleteVendorUsingDELETE: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The id of the vendor | 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getVendorUsingGET**
> VendorResource getVendorUsingGET(id)

Get a single vendor

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new StoreVendorsApi();
var id = 56; // int | The id of the vendor

try { 
    var result = api_instance.getVendorUsingGET(id);
    print(result);
} catch (e) {
    print("Exception when calling StoreVendorsApi->getVendorUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The id of the vendor | 

### Return type

[**VendorResource**](VendorResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getVendorsUsingGET**
> PageResource«VendorResource» getVendorsUsingGET(filterName, size, page, order)

List and search vendors

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new StoreVendorsApi();
var filterName = filterName_example; // String | Filters vendors by name starting with the text provided in the filter
var size = 56; // int | The number of objects returned per page
var page = 56; // int | The number of the page returned, starting with 1
var order = order_example; // String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]

try { 
    var result = api_instance.getVendorsUsingGET(filterName, size, page, order);
    print(result);
} catch (e) {
    print("Exception when calling StoreVendorsApi->getVendorsUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterName** | **String**| Filters vendors by name starting with the text provided in the filter | [optional] 
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **String**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to id:ASC]

### Return type

[**PageResource«VendorResource»**](PageResource«VendorResource».md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateVendorUsingPUT**
> updateVendorUsingPUT(id, vendor)

Update a vendor

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new StoreVendorsApi();
var id = 56; // int | The id of the vendor
var vendor = new VendorResource(); // VendorResource | The vendor

try { 
    api_instance.updateVendorUsingPUT(id, vendor);
} catch (e) {
    print("Exception when calling StoreVendorsApi->updateVendorUsingPUT: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The id of the vendor | 
 **vendor** | [**VendorResource**](VendorResource.md)| The vendor | [optional] 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

