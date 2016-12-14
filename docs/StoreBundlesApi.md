# swagger.api.StoreBundlesApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://devsandbox.knetikcloud.com/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createBundleItemUsingPOST**](StoreBundlesApi.md#createBundleItemUsingPOST) | **POST** /store/bundles | Create a bundle item
[**createBundleTemplateUsingPOST**](StoreBundlesApi.md#createBundleTemplateUsingPOST) | **POST** /store/bundles/templates | Create a bundle template
[**deleteBundleTemplateUsingDELETE**](StoreBundlesApi.md#deleteBundleTemplateUsingDELETE) | **DELETE** /store/bundles/templates/{id} | Delete a bundle template
[**deleteStoreItemUsingDELETE**](StoreBundlesApi.md#deleteStoreItemUsingDELETE) | **DELETE** /store/bundles/{id} | Delete a bundle item
[**getBundleTemplateUsingGET**](StoreBundlesApi.md#getBundleTemplateUsingGET) | **GET** /store/bundles/templates/{id} | Get a single bundle template
[**getBundleTemplatesUsingGET**](StoreBundlesApi.md#getBundleTemplatesUsingGET) | **GET** /store/bundles/templates | List and search bundle templates
[**getStoreItemUsingGET**](StoreBundlesApi.md#getStoreItemUsingGET) | **GET** /store/bundles/{id} | Get a single bundle item
[**updateBundleItemUsingPUT**](StoreBundlesApi.md#updateBundleItemUsingPUT) | **PUT** /store/bundles/{id} | Update a bundle item
[**updateBundleTemplateUsingPUT**](StoreBundlesApi.md#updateBundleTemplateUsingPUT) | **PUT** /store/bundles/templates/{id} | Update a bundle template


# **createBundleItemUsingPOST**
> BundleItem createBundleItemUsingPOST(bundleItem)

Create a bundle item

The SKU for the bundle itself must be unique and there can only be one SKU.  Extra notes for price_override:  The price of all the items (multiplied by the quantity) must equal the price of the bundle.  With individual prices set, items will be processed individually and can be refunded as such.  However, if all prices are set to null, the price of the bundle will be used and will be treated as one item.

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new StoreBundlesApi();
var bundleItem = new BundleItem(); // BundleItem | The bundle item object

try { 
    var result = api_instance.createBundleItemUsingPOST(bundleItem);
    print(result);
} catch (e) {
    print("Exception when calling StoreBundlesApi->createBundleItemUsingPOST: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **bundleItem** | [**BundleItem**](BundleItem.md)| The bundle item object | [optional] 

### Return type

[**BundleItem**](BundleItem.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createBundleTemplateUsingPOST**
> ItemTemplateResource createBundleTemplateUsingPOST(bundleTemplateResource)

Create a bundle template

Bundle Templates define a type of bundle and the properties they have.

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new StoreBundlesApi();
var bundleTemplateResource = new ItemTemplateResource(); // ItemTemplateResource | The new bundle template

try { 
    var result = api_instance.createBundleTemplateUsingPOST(bundleTemplateResource);
    print(result);
} catch (e) {
    print("Exception when calling StoreBundlesApi->createBundleTemplateUsingPOST: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **bundleTemplateResource** | [**ItemTemplateResource**](ItemTemplateResource.md)| The new bundle template | [optional] 

### Return type

[**ItemTemplateResource**](ItemTemplateResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteBundleTemplateUsingDELETE**
> deleteBundleTemplateUsingDELETE(id, cascade)

Delete a bundle template

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new StoreBundlesApi();
var id = id_example; // String | The id of the template
var cascade = cascade_example; // String | force deleting the template if it's attached to other objects, cascade = detach

try { 
    api_instance.deleteBundleTemplateUsingDELETE(id, cascade);
} catch (e) {
    print("Exception when calling StoreBundlesApi->deleteBundleTemplateUsingDELETE: $e\n");
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

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteStoreItemUsingDELETE**
> deleteStoreItemUsingDELETE(id)

Delete a bundle item

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new StoreBundlesApi();
var id = 56; // int | The id of the bundle

try { 
    api_instance.deleteStoreItemUsingDELETE(id);
} catch (e) {
    print("Exception when calling StoreBundlesApi->deleteStoreItemUsingDELETE: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The id of the bundle | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getBundleTemplateUsingGET**
> ItemTemplateResource getBundleTemplateUsingGET(id)

Get a single bundle template

Bundle Templates define a type of bundle and the properties they have.

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new StoreBundlesApi();
var id = id_example; // String | The id of the template

try { 
    var result = api_instance.getBundleTemplateUsingGET(id);
    print(result);
} catch (e) {
    print("Exception when calling StoreBundlesApi->getBundleTemplateUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the template | 

### Return type

[**ItemTemplateResource**](ItemTemplateResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getBundleTemplatesUsingGET**
> Page«ItemTemplateResource» getBundleTemplatesUsingGET(size, page, order)

List and search bundle templates

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new StoreBundlesApi();
var size = 56; // int | The number of objects returned per page
var page = 56; // int | The number of the page returned, starting with 1
var order = order_example; // String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]

try { 
    var result = api_instance.getBundleTemplatesUsingGET(size, page, order);
    print(result);
} catch (e) {
    print("Exception when calling StoreBundlesApi->getBundleTemplatesUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **String**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to 1]

### Return type

[**Page«ItemTemplateResource»**](Page«ItemTemplateResource».md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getStoreItemUsingGET**
> BundleItem getStoreItemUsingGET(id)

Get a single bundle item

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new StoreBundlesApi();
var id = 56; // int | The id of the bundle

try { 
    var result = api_instance.getStoreItemUsingGET(id);
    print(result);
} catch (e) {
    print("Exception when calling StoreBundlesApi->getStoreItemUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The id of the bundle | 

### Return type

[**BundleItem**](BundleItem.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateBundleItemUsingPUT**
> updateBundleItemUsingPUT(id, bundleItem)

Update a bundle item

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new StoreBundlesApi();
var id = 56; // int | The id of the bundle
var bundleItem = new BundleItem(); // BundleItem | The bundle item object

try { 
    api_instance.updateBundleItemUsingPUT(id, bundleItem);
} catch (e) {
    print("Exception when calling StoreBundlesApi->updateBundleItemUsingPUT: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The id of the bundle | 
 **bundleItem** | [**BundleItem**](BundleItem.md)| The bundle item object | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateBundleTemplateUsingPUT**
> updateBundleTemplateUsingPUT(id, bundleTemplateResource)

Update a bundle template

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new StoreBundlesApi();
var id = id_example; // String | The id of the template
var bundleTemplateResource = new ItemTemplateResource(); // ItemTemplateResource | The bundle template resource object

try { 
    api_instance.updateBundleTemplateUsingPUT(id, bundleTemplateResource);
} catch (e) {
    print("Exception when calling StoreBundlesApi->updateBundleTemplateUsingPUT: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the template | 
 **bundleTemplateResource** | [**ItemTemplateResource**](ItemTemplateResource.md)| The bundle template resource object | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

