# swagger.api.StoreApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://sandbox.knetikcloud.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createItemTemplate**](StoreApi.md#createItemTemplate) | **POST** /store/items/templates | Create an item template
[**createStoreItem**](StoreApi.md#createStoreItem) | **POST** /store/items | Create a store item
[**deleteItemTemplate**](StoreApi.md#deleteItemTemplate) | **DELETE** /store/items/templates/{id} | Delete an item template
[**deleteStoreItem**](StoreApi.md#deleteStoreItem) | **DELETE** /store/items/{id} | Delete a store item
[**getBehaviors**](StoreApi.md#getBehaviors) | **GET** /store/items/behaviors | List available item behaviors
[**getItemTemplate**](StoreApi.md#getItemTemplate) | **GET** /store/items/templates/{id} | Get a single item template
[**getItemTemplates**](StoreApi.md#getItemTemplates) | **GET** /store/items/templates | List and search item templates
[**getStore**](StoreApi.md#getStore) | **GET** /store | Get a listing of store items
[**getStoreItem**](StoreApi.md#getStoreItem) | **GET** /store/items/{id} | Get a single store item
[**getStoreItems**](StoreApi.md#getStoreItems) | **GET** /store/items | List and search store items
[**updateItemTemplate**](StoreApi.md#updateItemTemplate) | **PUT** /store/items/templates/{id} | Update an item template
[**updateStoreItem**](StoreApi.md#updateStoreItem) | **PUT** /store/items/{id} | Update a store item


# **createItemTemplate**
> StoreItemTemplateResource createItemTemplate(itemTemplateResource)

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
    var result = api_instance.createItemTemplate(itemTemplateResource);
    print(result);
} catch (e) {
    print("Exception when calling StoreApi->createItemTemplate: $e\n");
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

# **createStoreItem**
> StoreItem createStoreItem(cascade, storeItem)

Create a store item

SKUs have to be unique in the entire store. If a duplicate SKU is found, a 400 error is generated and the response will have a \"parameters\" field that is a list of duplicates. A duplicate is an object like {item_id, offending_sku_list}. Ex:<br /> {..., parameters: [[{item: 1, skus: [\"SKU-1\"]}]]}<br /> If an item is brand new and has duplicate SKUs within itself, the item ID will be 0.  Item subclasses are not allowed here, you will have to use their respective endpoints.

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new StoreApi();
var cascade = true; // bool | Whether to cascade group changes, such as in the limited gettable behavior. A 400 error will return otherwise if the group is already in use with different values.
var storeItem = new StoreItem(); // StoreItem | The store item object

try { 
    var result = api_instance.createStoreItem(cascade, storeItem);
    print(result);
} catch (e) {
    print("Exception when calling StoreApi->createStoreItem: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cascade** | **bool**| Whether to cascade group changes, such as in the limited gettable behavior. A 400 error will return otherwise if the group is already in use with different values. | [optional] [default to false]
 **storeItem** | [**StoreItem**](StoreItem.md)| The store item object | [optional] 

### Return type

[**StoreItem**](StoreItem.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteItemTemplate**
> deleteItemTemplate(id, cascade)

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
    api_instance.deleteItemTemplate(id, cascade);
} catch (e) {
    print("Exception when calling StoreApi->deleteItemTemplate: $e\n");
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

# **deleteStoreItem**
> deleteStoreItem(id)

Delete a store item

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new StoreApi();
var id = 56; // int | The id of the item

try { 
    api_instance.deleteStoreItem(id);
} catch (e) {
    print("Exception when calling StoreApi->deleteStoreItem: $e\n");
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

# **getBehaviors**
> List<BehaviorDefinitionResource> getBehaviors()

List available item behaviors

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new StoreApi();

try { 
    var result = api_instance.getBehaviors();
    print(result);
} catch (e) {
    print("Exception when calling StoreApi->getBehaviors: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<BehaviorDefinitionResource>**](BehaviorDefinitionResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getItemTemplate**
> StoreItemTemplateResource getItemTemplate(id)

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
    var result = api_instance.getItemTemplate(id);
    print(result);
} catch (e) {
    print("Exception when calling StoreApi->getItemTemplate: $e\n");
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

# **getItemTemplates**
> PageResource«StoreItemTemplateResource» getItemTemplates(size, page, order)

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
    var result = api_instance.getItemTemplates(size, page, order);
    print(result);
} catch (e) {
    print("Exception when calling StoreApi->getItemTemplates: $e\n");
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

# **getStore**
> PageResource«StoreItem» getStore(limit, page, useCatalog, ignoreLocation, inStockOnly)

Get a listing of store items

The exact structure of each items may differ to include fields specific to the type. The same is true for behaviors.

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new StoreApi();
var limit = 56; // int | The amount of items returned
var page = 56; // int | The page of the request
var useCatalog = true; // bool | Whether to remove items that are not intended for display or not in date
var ignoreLocation = true; // bool | Whether to ignore country restrictions based on the caller's location
var inStockOnly = true; // bool | Whether only in-stock items should be returned.  Default value is false

try { 
    var result = api_instance.getStore(limit, page, useCatalog, ignoreLocation, inStockOnly);
    print(result);
} catch (e) {
    print("Exception when calling StoreApi->getStore: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **int**| The amount of items returned | [optional] 
 **page** | **int**| The page of the request | [optional] 
 **useCatalog** | **bool**| Whether to remove items that are not intended for display or not in date | [optional] 
 **ignoreLocation** | **bool**| Whether to ignore country restrictions based on the caller&#39;s location | [optional] 
 **inStockOnly** | **bool**| Whether only in-stock items should be returned.  Default value is false | [optional] [default to false]

### Return type

[**PageResource«StoreItem»**](PageResource«StoreItem».md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getStoreItem**
> StoreItem getStoreItem(id)

Get a single store item

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new StoreApi();
var id = 56; // int | The id of the item

try { 
    var result = api_instance.getStoreItem(id);
    print(result);
} catch (e) {
    print("Exception when calling StoreApi->getStoreItem: $e\n");
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

# **getStoreItems**
> PageResource«StoreItem» getStoreItems(filterNameSearch, filterUniqueKey, filterPublished, filterDisplayable, filterStart, filterEnd, filterStartDate, filterStopDate, filterSku, filterPrice, filterTag, filterItemsByType, filterBundledSkus, filterVendor, size, page, order)

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
var filterVendor = 56; // int | Filter for items from a given vendor, by id.
var size = 56; // int | The number of objects returned per page
var page = 56; // int | The number of the page returned, starting with 1
var order = order_example; // String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]

try { 
    var result = api_instance.getStoreItems(filterNameSearch, filterUniqueKey, filterPublished, filterDisplayable, filterStart, filterEnd, filterStartDate, filterStopDate, filterSku, filterPrice, filterTag, filterItemsByType, filterBundledSkus, filterVendor, size, page, order);
    print(result);
} catch (e) {
    print("Exception when calling StoreApi->getStoreItems: $e\n");
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
 **filterVendor** | **int**| Filter for items from a given vendor, by id. | [optional] 
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

# **updateItemTemplate**
> StoreItemTemplateResource updateItemTemplate(id, itemTemplateResource)

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
    var result = api_instance.updateItemTemplate(id, itemTemplateResource);
    print(result);
} catch (e) {
    print("Exception when calling StoreApi->updateItemTemplate: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the template | 
 **itemTemplateResource** | [**StoreItemTemplateResource**](StoreItemTemplateResource.md)| The item template resource object | [optional] 

### Return type

[**StoreItemTemplateResource**](StoreItemTemplateResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateStoreItem**
> StoreItem updateStoreItem(id, cascade, storeItem)

Update a store item

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new StoreApi();
var id = 56; // int | The id of the item
var cascade = true; // bool | Whether to cascade group changes, such as in the limited gettable behavior. A 400 error will return otherwise if the group is already in use with different values.
var storeItem = new StoreItem(); // StoreItem | The store item object

try { 
    var result = api_instance.updateStoreItem(id, cascade, storeItem);
    print(result);
} catch (e) {
    print("Exception when calling StoreApi->updateStoreItem: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The id of the item | 
 **cascade** | **bool**| Whether to cascade group changes, such as in the limited gettable behavior. A 400 error will return otherwise if the group is already in use with different values. | [optional] [default to false]
 **storeItem** | [**StoreItem**](StoreItem.md)| The store item object | [optional] 

### Return type

[**StoreItem**](StoreItem.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

