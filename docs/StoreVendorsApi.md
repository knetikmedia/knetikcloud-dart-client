# swagger.api.StoreVendorsApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://integration.knetikcloud.com/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createVendor**](StoreVendorsApi.md#createVendor) | **POST** /vendors | Create a vendor
[**deleteVendor**](StoreVendorsApi.md#deleteVendor) | **DELETE** /vendors/{id} | Delete a vendor
[**getVendor**](StoreVendorsApi.md#getVendor) | **GET** /vendors/{id} | Get a single vendor
[**getVendors**](StoreVendorsApi.md#getVendors) | **GET** /vendors | List and search vendors
[**updateVendor**](StoreVendorsApi.md#updateVendor) | **PUT** /vendors/{id} | Update a vendor


# **createVendor**
> VendorResource createVendor(vendor)

Create a vendor

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new StoreVendorsApi();
var vendor = new VendorResource(); // VendorResource | The vendor

try { 
    var result = api_instance.createVendor(vendor);
    print(result);
} catch (e) {
    print("Exception when calling StoreVendorsApi->createVendor: $e\n");
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

# **deleteVendor**
> deleteVendor(id)

Delete a vendor

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new StoreVendorsApi();
var id = 56; // int | The id of the vendor

try { 
    api_instance.deleteVendor(id);
} catch (e) {
    print("Exception when calling StoreVendorsApi->deleteVendor: $e\n");
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

# **getVendor**
> VendorResource getVendor(id)

Get a single vendor

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new StoreVendorsApi();
var id = 56; // int | The id of the vendor

try { 
    var result = api_instance.getVendor(id);
    print(result);
} catch (e) {
    print("Exception when calling StoreVendorsApi->getVendor: $e\n");
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

# **getVendors**
> PageResource«VendorResource» getVendors(filterName, size, page, order)

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
    var result = api_instance.getVendors(filterName, size, page, order);
    print(result);
} catch (e) {
    print("Exception when calling StoreVendorsApi->getVendors: $e\n");
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

# **updateVendor**
> updateVendor(id, vendor)

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
    api_instance.updateVendor(id, vendor);
} catch (e) {
    print("Exception when calling StoreVendorsApi->updateVendor: $e\n");
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

