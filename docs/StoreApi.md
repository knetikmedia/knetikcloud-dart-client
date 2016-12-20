# swagger.api.StoreApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://localhost:8080/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createItemTemplateUsingPOST**](StoreApi.md#createItemTemplateUsingPOST) | **POST** /store/items/templates | Create an item template
[**createStoreItemExternalUsingPOST**](StoreApi.md#createStoreItemExternalUsingPOST) | **POST** /store/items | Create a store item
[**deleteItemTemplateUsingDELETE**](StoreApi.md#deleteItemTemplateUsingDELETE) | **DELETE** /store/items/templates/{id} | Delete an item template
[**deleteStoreItemUsingDELETE1**](StoreApi.md#deleteStoreItemUsingDELETE1) | **DELETE** /store/items/{id} | Delete a store item
[**getItemTemplateUsingGET**](StoreApi.md#getItemTemplateUsingGET) | **GET** /store/items/templates/{id} | Get a single item template
[**getItemTemplatesUsingGET**](StoreApi.md#getItemTemplatesUsingGET) | **GET** /store/items/templates | List and search item templates
[**getStoreItemUsingGET1**](StoreApi.md#getStoreItemUsingGET1) | **GET** /store/items/{id} | Get a single store item
[**getStoreItemsUsingGET**](StoreApi.md#getStoreItemsUsingGET) | **GET** /store/items | List and search store items
[**getUsingGET2**](StoreApi.md#getUsingGET2) | **GET** /store | Get a listing of store items
[**updateItemTemplateUsingPUT**](StoreApi.md#updateItemTemplateUsingPUT) | **PUT** /store/items/templates/{id} | Update an item template
[**updateStoreItemExternalUsingPUT**](StoreApi.md#updateStoreItemExternalUsingPUT) | **PUT** /store/items/{id} | Update a store item


# **createItemTemplateUsingPOST**
> StoreItemTemplateResource createItemTemplateUsingPOST(itemTemplateResource)

Create an item template

Item Templates define a type of item and the properties they have.

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new StoreApi();
var itemTemplateResource = new StoreItemTemplateResource(); // StoreItemTemplateResource | The new item template

try { 
    var result = api_instance.createItemTemplateUsingPOST(itemTemplateResource);
    print(result);
} catch (e) {
    print("Exception when calling StoreApi->createItemTemplateUsingPOST: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **itemTemplateResource** | [**StoreItemTemplateResource**](StoreItemTemplateResource.md)| The new item template | [optional] 

### Return type

[**StoreItemTemplateResource**](StoreItemTemplateResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createStoreItemExternalUsingPOST**
> StoreItem createStoreItemExternalUsingPOST(storeItem)

Create a store item

SKUs have to be unique in the entire store. If a duplicate SKU is found, a 400 error is generated and the response will have a \"parameters\" field that is a list of duplicates. A duplicate is an object like {item_id, offending_sku_list}. Ex:<br /> {..., parameters: [[{item: 1, skus: [\"SKU-1\"]}]]}<br /> If an item is brand new and has duplicate SKUs within itself, the item ID will be 0.  Item subclasses are not allowed here, you will have to use their respective endpoints.

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new StoreApi();
var storeItem = new StoreItem(); // StoreItem | The store item object

try { 
    var result = api_instance.createStoreItemExternalUsingPOST(storeItem);
    print(result);
} catch (e) {
    print("Exception when calling StoreApi->createStoreItemExternalUsingPOST: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **storeItem** | [**StoreItem**](StoreItem.md)| The store item object | [optional] 

### Return type

[**StoreItem**](StoreItem.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteItemTemplateUsingDELETE**
> deleteItemTemplateUsingDELETE(id, cascade)

Delete an item template

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new StoreApi();
var id = id_example; // String | The id of the template
var cascade = cascade_example; // String | force deleting the template if it's attached to other objects, cascade = detach

try { 
    api_instance.deleteItemTemplateUsingDELETE(id, cascade);
} catch (e) {
    print("Exception when calling StoreApi->deleteItemTemplateUsingDELETE: $e\n");
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

# **deleteStoreItemUsingDELETE1**
> deleteStoreItemUsingDELETE1(id)

Delete a store item

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new StoreApi();
var id = 56; // int | The id of the item

try { 
    api_instance.deleteStoreItemUsingDELETE1(id);
} catch (e) {
    print("Exception when calling StoreApi->deleteStoreItemUsingDELETE1: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The id of the item | 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getItemTemplateUsingGET**
> StoreItemTemplateResource getItemTemplateUsingGET(id)

Get a single item template

Item Templates define a type of item and the properties they have.

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new StoreApi();
var id = id_example; // String | The id of the template

try { 
    var result = api_instance.getItemTemplateUsingGET(id);
    print(result);
} catch (e) {
    print("Exception when calling StoreApi->getItemTemplateUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the template | 

### Return type

[**StoreItemTemplateResource**](StoreItemTemplateResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getItemTemplatesUsingGET**
> PageResource«StoreItemTemplateResource» getItemTemplatesUsingGET(size, page, order)

List and search item templates

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new StoreApi();
var size = 56; // int | The number of objects returned per page
var page = 56; // int | The number of the page returned, starting with 1
var order = order_example; // String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]

try { 
    var result = api_instance.getItemTemplatesUsingGET(size, page, order);
    print(result);
} catch (e) {
    print("Exception when calling StoreApi->getItemTemplatesUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **String**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to id:ASC]

### Return type

[**PageResource«StoreItemTemplateResource»**](PageResource«StoreItemTemplateResource».md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getStoreItemUsingGET1**
> StoreItem getStoreItemUsingGET1(id)

Get a single store item

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new StoreApi();
var id = 56; // int | The id of the item

try { 
    var result = api_instance.getStoreItemUsingGET1(id);
    print(result);
} catch (e) {
    print("Exception when calling StoreApi->getStoreItemUsingGET1: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The id of the item | 

### Return type

[**StoreItem**](StoreItem.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getStoreItemsUsingGET**
> PageResource«StoreItem» getStoreItemsUsingGET(filterNameSearch, filterUniqueKey, filterPublished, filterDisplayable, filterStart, filterEnd, filterStartDate, filterStopDate, filterSku, filterPrice, filterTag, filterItemsByType, filterBundledSkus, size, page, order)

List and search store items

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new StoreApi();
var filterNameSearch = filterNameSearch_example; // String | Filter for items whose name starts with a given string.
var filterUniqueKey = filterUniqueKey_example; // String | Filter for items whose unique_key is a given string.
var filterPublished = true; // bool | Filter for skus that have been published.
var filterDisplayable = true; // bool | Filter for items that are displayable.
var filterStart = filterStart_example; // String | A comma separated string without spaces.  First value is the operator to search on, second value is the store start date, a unix timestamp in seconds.  Allowed operators: (LT, GT, LTE, GTE, EQ).
var filterEnd = filterEnd_example; // String | A comma separated string without spaces.  First value is the operator to search on, second value is the store end date, a unix timestamp in seconds.  Allowed operators: (LT, GT, LTE, GTE, EQ).
var filterStartDate = filterStartDate_example; // String | A comma separated string without spaces.  First value is the operator to search on, second value is the sku start date, a unix timestamp in seconds.  Allowed operators: (LT, GT, LTE, GTE, EQ).
var filterStopDate = filterStopDate_example; // String | A comma separated string without spaces.  First value is the operator to search on, second value is the sku end date, a unix timestamp in seconds.  Allowed operators: (LT, GT, LTE, GTE, EQ).
var filterSku = filterSku_example; // String | Filter for skus whose name starts with a given string.
var filterPrice = filterPrice_example; // String | A colon separated string without spaces.  First value is the operator to search on, second value is the price of a sku.  Allowed operators: (LT, GT, LTE, GTE, EQ).
var filterTag = filterTag_example; // String | A comma separated list without spaces of the names of tags. Will only return items with at least one of the tags.
var filterItemsByType = filterItemsByType_example; // String | Filter for item type based on its type hint.
var filterBundledSkus = filterBundledSkus_example; // String | Filter for skus inside bundles whose name starts with a given string.  Used only when type hint is 'bundle_item'
var size = 56; // int | The number of objects returned per page
var page = 56; // int | The number of the page returned, starting with 1
var order = order_example; // String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]

try { 
    var result = api_instance.getStoreItemsUsingGET(filterNameSearch, filterUniqueKey, filterPublished, filterDisplayable, filterStart, filterEnd, filterStartDate, filterStopDate, filterSku, filterPrice, filterTag, filterItemsByType, filterBundledSkus, size, page, order);
    print(result);
} catch (e) {
    print("Exception when calling StoreApi->getStoreItemsUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterNameSearch** | **String**| Filter for items whose name starts with a given string. | [optional] 
 **filterUniqueKey** | **String**| Filter for items whose unique_key is a given string. | [optional] 
 **filterPublished** | **bool**| Filter for skus that have been published. | [optional] 
 **filterDisplayable** | **bool**| Filter for items that are displayable. | [optional] 
 **filterStart** | **String**| A comma separated string without spaces.  First value is the operator to search on, second value is the store start date, a unix timestamp in seconds.  Allowed operators: (LT, GT, LTE, GTE, EQ). | [optional] 
 **filterEnd** | **String**| A comma separated string without spaces.  First value is the operator to search on, second value is the store end date, a unix timestamp in seconds.  Allowed operators: (LT, GT, LTE, GTE, EQ). | [optional] 
 **filterStartDate** | **String**| A comma separated string without spaces.  First value is the operator to search on, second value is the sku start date, a unix timestamp in seconds.  Allowed operators: (LT, GT, LTE, GTE, EQ). | [optional] 
 **filterStopDate** | **String**| A comma separated string without spaces.  First value is the operator to search on, second value is the sku end date, a unix timestamp in seconds.  Allowed operators: (LT, GT, LTE, GTE, EQ). | [optional] 
 **filterSku** | **String**| Filter for skus whose name starts with a given string. | [optional] 
 **filterPrice** | **String**| A colon separated string without spaces.  First value is the operator to search on, second value is the price of a sku.  Allowed operators: (LT, GT, LTE, GTE, EQ). | [optional] 
 **filterTag** | **String**| A comma separated list without spaces of the names of tags. Will only return items with at least one of the tags. | [optional] 
 **filterItemsByType** | **String**| Filter for item type based on its type hint. | [optional] 
 **filterBundledSkus** | **String**| Filter for skus inside bundles whose name starts with a given string.  Used only when type hint is &#39;bundle_item&#39; | [optional] 
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **String**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to id:ASC]

### Return type

[**PageResource«StoreItem»**](PageResource«StoreItem».md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUsingGET2**
> PageResource«StoreItem» getUsingGET2(storeListRequest)

Get a listing of store items

The exact structure of each items may differ to include fields specific to the type. The same is true for behaviors.

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new StoreApi();
var storeListRequest = new StoreListRequest(); // StoreListRequest | The store list request object

try { 
    var result = api_instance.getUsingGET2(storeListRequest);
    print(result);
} catch (e) {
    print("Exception when calling StoreApi->getUsingGET2: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **storeListRequest** | [**StoreListRequest**](StoreListRequest.md)| The store list request object | [optional] 

### Return type

[**PageResource«StoreItem»**](PageResource«StoreItem».md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateItemTemplateUsingPUT**
> updateItemTemplateUsingPUT(id, itemTemplateResource)

Update an item template

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new StoreApi();
var id = id_example; // String | The id of the template
var itemTemplateResource = new StoreItemTemplateResource(); // StoreItemTemplateResource | The item template resource object

try { 
    api_instance.updateItemTemplateUsingPUT(id, itemTemplateResource);
} catch (e) {
    print("Exception when calling StoreApi->updateItemTemplateUsingPUT: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the template | 
 **itemTemplateResource** | [**StoreItemTemplateResource**](StoreItemTemplateResource.md)| The item template resource object | [optional] 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateStoreItemExternalUsingPUT**
> updateStoreItemExternalUsingPUT(id, storeItem)

Update a store item

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new StoreApi();
var id = 56; // int | The id of the item
var storeItem = new StoreItem(); // StoreItem | The store item object

try { 
    api_instance.updateStoreItemExternalUsingPUT(id, storeItem);
} catch (e) {
    print("Exception when calling StoreApi->updateStoreItemExternalUsingPUT: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The id of the item | 
 **storeItem** | [**StoreItem**](StoreItem.md)| The store item object | [optional] 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

