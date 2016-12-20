# swagger.api.UsersInventoryApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://localhost:8080/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addItemUsingPOST1**](UsersInventoryApi.md#addItemUsingPOST1) | **POST** /users/{id}/inventory | Adds an item to the user inventory
[**createItemUsingPOST**](UsersInventoryApi.md#createItemUsingPOST) | **POST** /entitlements | Create an entitlement item
[**createTemplateUsingPOST3**](UsersInventoryApi.md#createTemplateUsingPOST3) | **POST** /entitlements/templates | Create an entitlement template
[**deleteEntitlementTemplateUsingDELETE**](UsersInventoryApi.md#deleteEntitlementTemplateUsingDELETE) | **DELETE** /entitlements/templates/{id} | Delete an entitlement template
[**deleteItemUsingDELETE**](UsersInventoryApi.md#deleteItemUsingDELETE) | **DELETE** /entitlements/{entitlement_id} | Delete an entitlement item
[**entitlementCheckUsingGET**](UsersInventoryApi.md#entitlementCheckUsingGET) | **GET** /users/{user_id}/entitlements/{item_id}/check | Check for access to an item without consuming
[**entitlementUseUsingPOST**](UsersInventoryApi.md#entitlementUseUsingPOST) | **POST** /users/{user_id}/entitlements/{item_id}/use | Use an item
[**getCurrenciesUsingGET1**](UsersInventoryApi.md#getCurrenciesUsingGET1) | **GET** /entitlements | List and search entitlement items
[**getEntitlementTemplateUsingGET**](UsersInventoryApi.md#getEntitlementTemplateUsingGET) | **GET** /entitlements/templates/{id} | Get a single entitlement template
[**getEntitlementTemplatesUsingGET**](UsersInventoryApi.md#getEntitlementTemplatesUsingGET) | **GET** /entitlements/templates | List and search entitlement templates
[**getInventoryListUsingGET**](UsersInventoryApi.md#getInventoryListUsingGET) | **GET** /inventories | List the user inventory entries for all users
[**getInventoryUsingGET**](UsersInventoryApi.md#getInventoryUsingGET) | **GET** /users/{user_id}/inventory/{id} | Get an inventory entry
[**getItemUsingGET**](UsersInventoryApi.md#getItemUsingGET) | **GET** /entitlements/{entitlement_id} | Get a single entitlement item
[**getUserInventoryListUsingGET**](UsersInventoryApi.md#getUserInventoryListUsingGET) | **GET** /users/{id}/inventory | List the user inventory entries for a given user
[**getUserInventoryLogUsingGET**](UsersInventoryApi.md#getUserInventoryLogUsingGET) | **GET** /users/{user_id}/inventory/{id}/log | List the log entries for this inventory entry.
[**updateItemUsingPUT1**](UsersInventoryApi.md#updateItemUsingPUT1) | **PUT** /entitlements/{entitlement_id} | Update an entitlement item
[**updateTemplateUsingPUT3**](UsersInventoryApi.md#updateTemplateUsingPUT3) | **PUT** /entitlements/templates/{id} | Update an entitlement template
[**updateUserInventoryBehaviorDataUsingPUT**](UsersInventoryApi.md#updateUserInventoryBehaviorDataUsingPUT) | **PUT** /users/{user_id}/inventory/{id}/behavior-data | Set the behavior data for an inventory entry
[**updateUserInventoryExpiresUsingPUT**](UsersInventoryApi.md#updateUserInventoryExpiresUsingPUT) | **PUT** /users/{user_id}/inventory/{id}/expires | Set the expiration date
[**updateUserInventoryStatusUsingPUT**](UsersInventoryApi.md#updateUserInventoryStatusUsingPUT) | **PUT** /users/{user_id}/inventory/{id}/status | Set the status for an inventory entry


# **addItemUsingPOST1**
> InvoiceResource addItemUsingPOST1(id, userInventoryAddRequest)

Adds an item to the user inventory

The inventory is fulfilled asynchronously UNLESS the invoice is explicitely skipped. Depending on the use case, it might require the client to verify that the entitlement was added after the fact or configure a BRE rule to get a notification in real time

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new UsersInventoryApi();
var id = 56; // int | The id of the user
var userInventoryAddRequest = new UserInventoryAddRequest(); // UserInventoryAddRequest | The user inventory add request object

try { 
    var result = api_instance.addItemUsingPOST1(id, userInventoryAddRequest);
    print(result);
} catch (e) {
    print("Exception when calling UsersInventoryApi->addItemUsingPOST1: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The id of the user | 
 **userInventoryAddRequest** | [**UserInventoryAddRequest**](UserInventoryAddRequest.md)| The user inventory add request object | [optional] 

### Return type

[**InvoiceResource**](InvoiceResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createItemUsingPOST**
> EntitlementItem createItemUsingPOST(entitlementItem)

Create an entitlement item

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new UsersInventoryApi();
var entitlementItem = new EntitlementItem(); // EntitlementItem | The entitlement item object

try { 
    var result = api_instance.createItemUsingPOST(entitlementItem);
    print(result);
} catch (e) {
    print("Exception when calling UsersInventoryApi->createItemUsingPOST: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entitlementItem** | [**EntitlementItem**](EntitlementItem.md)| The entitlement item object | [optional] 

### Return type

[**EntitlementItem**](EntitlementItem.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createTemplateUsingPOST3**
> ItemTemplateResource createTemplateUsingPOST3(template)

Create an entitlement template

Entitlement templates define a type of entitlement and the properties they have

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new UsersInventoryApi();
var template = new ItemTemplateResource(); // ItemTemplateResource | The entitlement template to be created

try { 
    var result = api_instance.createTemplateUsingPOST3(template);
    print(result);
} catch (e) {
    print("Exception when calling UsersInventoryApi->createTemplateUsingPOST3: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **template** | [**ItemTemplateResource**](ItemTemplateResource.md)| The entitlement template to be created | [optional] 

### Return type

[**ItemTemplateResource**](ItemTemplateResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteEntitlementTemplateUsingDELETE**
> deleteEntitlementTemplateUsingDELETE(id, cascade)

Delete an entitlement template

If cascade = 'detach', it will force delete the template even if it's attached to other objects

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new UsersInventoryApi();
var id = id_example; // String | The id of the template
var cascade = cascade_example; // String | The value needed to delete used templates

try { 
    api_instance.deleteEntitlementTemplateUsingDELETE(id, cascade);
} catch (e) {
    print("Exception when calling UsersInventoryApi->deleteEntitlementTemplateUsingDELETE: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the template | 
 **cascade** | **String**| The value needed to delete used templates | [optional] 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteItemUsingDELETE**
> deleteItemUsingDELETE(entitlementId)

Delete an entitlement item

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new UsersInventoryApi();
var entitlementId = 56; // int | The id of the entitlement

try { 
    api_instance.deleteItemUsingDELETE(entitlementId);
} catch (e) {
    print("Exception when calling UsersInventoryApi->deleteItemUsingDELETE: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entitlementId** | **int**| The id of the entitlement | 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **entitlementCheckUsingGET**
> entitlementCheckUsingGET(userId, itemId, sku)

Check for access to an item without consuming

Useful for pre-check and accounts for all various buisness rules

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new UsersInventoryApi();
var userId = userId_example; // String | The id of the user to check for or 'me' for logged in user
var itemId = 56; // int | The id of the item
var sku = sku_example; // String | The specific sku of an entitlement list addition to check entitlement for. This is of very limited and specific use and should generally be left out

try { 
    api_instance.entitlementCheckUsingGET(userId, itemId, sku);
} catch (e) {
    print("Exception when calling UsersInventoryApi->entitlementCheckUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**| The id of the user to check for or &#39;me&#39; for logged in user | 
 **itemId** | **int**| The id of the item | 
 **sku** | **String**| The specific sku of an entitlement list addition to check entitlement for. This is of very limited and specific use and should generally be left out | [optional] 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **entitlementUseUsingPOST**
> entitlementUseUsingPOST(userId, itemId, sku, info)

Use an item

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new UsersInventoryApi();
var userId = userId_example; // String | The id of the user to check for or 'me' for logged in user
var itemId = 56; // int | The id of the item
var sku = sku_example; // String | The specific sku of an entitlement_list addition to check entitlement for. This is of very limited and specific use and should generally be left out
var info = info_example; // String | Any additional info to add to the log about this use

try { 
    api_instance.entitlementUseUsingPOST(userId, itemId, sku, info);
} catch (e) {
    print("Exception when calling UsersInventoryApi->entitlementUseUsingPOST: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**| The id of the user to check for or &#39;me&#39; for logged in user | 
 **itemId** | **int**| The id of the item | 
 **sku** | **String**| The specific sku of an entitlement_list addition to check entitlement for. This is of very limited and specific use and should generally be left out | [optional] 
 **info** | **String**| Any additional info to add to the log about this use | [optional] 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCurrenciesUsingGET1**
> Page«EntitlementItem» getCurrenciesUsingGET1(size, page, order)

List and search entitlement items

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new UsersInventoryApi();
var size = 56; // int | The number of objects returned per page
var page = 56; // int | The number of the page returned, starting with 1
var order = order_example; // String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]

try { 
    var result = api_instance.getCurrenciesUsingGET1(size, page, order);
    print(result);
} catch (e) {
    print("Exception when calling UsersInventoryApi->getCurrenciesUsingGET1: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **String**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to id:ASC]

### Return type

[**Page«EntitlementItem»**](Page«EntitlementItem».md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getEntitlementTemplateUsingGET**
> ItemTemplateResource getEntitlementTemplateUsingGET(id)

Get a single entitlement template

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new UsersInventoryApi();
var id = id_example; // String | The id of the template

try { 
    var result = api_instance.getEntitlementTemplateUsingGET(id);
    print(result);
} catch (e) {
    print("Exception when calling UsersInventoryApi->getEntitlementTemplateUsingGET: $e\n");
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
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getEntitlementTemplatesUsingGET**
> Page«ItemTemplateResource» getEntitlementTemplatesUsingGET(size, page, order)

List and search entitlement templates

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new UsersInventoryApi();
var size = 56; // int | The number of objects returned per page
var page = 56; // int | The number of the page returned, starting with 1
var order = order_example; // String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]

try { 
    var result = api_instance.getEntitlementTemplatesUsingGET(size, page, order);
    print(result);
} catch (e) {
    print("Exception when calling UsersInventoryApi->getEntitlementTemplatesUsingGET: $e\n");
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
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getInventoryListUsingGET**
> Page«UserInventoryResource» getInventoryListUsingGET(inactive, size, page, filterItemName, filterUsername, filterGroup, filterDate)

List the user inventory entries for all users

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new UsersInventoryApi();
var inactive = true; // bool | If true, accepts inactive user inventories
var size = 56; // int | The number of objects returned per page
var page = 56; // int | The number of the page returned, starting with 1
var filterItemName = filterItemName_example; // String | Filter by items whose name starts with a string
var filterUsername = filterUsername_example; // String | Filter by entries owned by the user with the specified username
var filterGroup = filterGroup_example; // String | Filter by entries owned by the users in a given group, by unique name
var filterDate = filterDate_example; // String | A comma separated string without spaces.  First value is the operator to search on, second value is the log start date, a unix timestamp in seconds. Can be repeated for a range, eg: GT,123,LT,456  Allowed operators: (GT, LT, EQ, GOE, LOE).

try { 
    var result = api_instance.getInventoryListUsingGET(inactive, size, page, filterItemName, filterUsername, filterGroup, filterDate);
    print(result);
} catch (e) {
    print("Exception when calling UsersInventoryApi->getInventoryListUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inactive** | **bool**| If true, accepts inactive user inventories | [optional] [default to false]
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **filterItemName** | **String**| Filter by items whose name starts with a string | [optional] 
 **filterUsername** | **String**| Filter by entries owned by the user with the specified username | [optional] 
 **filterGroup** | **String**| Filter by entries owned by the users in a given group, by unique name | [optional] 
 **filterDate** | **String**| A comma separated string without spaces.  First value is the operator to search on, second value is the log start date, a unix timestamp in seconds. Can be repeated for a range, eg: GT,123,LT,456  Allowed operators: (GT, LT, EQ, GOE, LOE). | [optional] 

### Return type

[**Page«UserInventoryResource»**](Page«UserInventoryResource».md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getInventoryUsingGET**
> UserInventoryResource getInventoryUsingGET(userId, id)

Get an inventory entry

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new UsersInventoryApi();
var userId = 56; // int | The id of the inventory owner or 'me' for the logged in user
var id = 56; // int | The id of the user inventory

try { 
    var result = api_instance.getInventoryUsingGET(userId, id);
    print(result);
} catch (e) {
    print("Exception when calling UsersInventoryApi->getInventoryUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **int**| The id of the inventory owner or &#39;me&#39; for the logged in user | 
 **id** | **int**| The id of the user inventory | 

### Return type

[**UserInventoryResource**](UserInventoryResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getItemUsingGET**
> EntitlementItem getItemUsingGET(entitlementId)

Get a single entitlement item

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new UsersInventoryApi();
var entitlementId = 56; // int | The id of the entitlement

try { 
    var result = api_instance.getItemUsingGET(entitlementId);
    print(result);
} catch (e) {
    print("Exception when calling UsersInventoryApi->getItemUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entitlementId** | **int**| The id of the entitlement | 

### Return type

[**EntitlementItem**](EntitlementItem.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUserInventoryListUsingGET**
> Page«UserInventoryResource» getUserInventoryListUsingGET(id, inactive, size, page, filterItemName, filterMinDate, filterMaxDate)

List the user inventory entries for a given user

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new UsersInventoryApi();
var id = 56; // int | The id of the user
var inactive = true; // bool | If true, accepts inactive user inventories
var size = 56; // int | The number of objects returned per page
var page = 56; // int | The number of the page returned, starting with 1
var filterItemName = filterItemName_example; // String | Filter by items whose name starts with a string
var filterMinDate = 789; // int | Filter for inventory added after the specified date, unix timestamp in seconds
var filterMaxDate = 789; // int | Filter for inventory added before the specified date, unix timestamp in seconds

try { 
    var result = api_instance.getUserInventoryListUsingGET(id, inactive, size, page, filterItemName, filterMinDate, filterMaxDate);
    print(result);
} catch (e) {
    print("Exception when calling UsersInventoryApi->getUserInventoryListUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The id of the user | 
 **inactive** | **bool**| If true, accepts inactive user inventories | [optional] [default to false]
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **filterItemName** | **String**| Filter by items whose name starts with a string | [optional] 
 **filterMinDate** | **int**| Filter for inventory added after the specified date, unix timestamp in seconds | [optional] 
 **filterMaxDate** | **int**| Filter for inventory added before the specified date, unix timestamp in seconds | [optional] 

### Return type

[**Page«UserInventoryResource»**](Page«UserInventoryResource».md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUserInventoryLogUsingGET**
> Page«UserItemLogResource» getUserInventoryLogUsingGET(userId, id, size, page)

List the log entries for this inventory entry.

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new UsersInventoryApi();
var userId = userId_example; // String | The id of the inventory owner or 'me' for the logged in user
var id = 56; // int | The id of the user inventory
var size = 56; // int | The number of objects returned per page
var page = 56; // int | The number of the page returned, starting with 1

try { 
    var result = api_instance.getUserInventoryLogUsingGET(userId, id, size, page);
    print(result);
} catch (e) {
    print("Exception when calling UsersInventoryApi->getUserInventoryLogUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**| The id of the inventory owner or &#39;me&#39; for the logged in user | 
 **id** | **int**| The id of the user inventory | 
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]

### Return type

[**Page«UserItemLogResource»**](Page«UserItemLogResource».md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateItemUsingPUT1**
> updateItemUsingPUT1(entitlementId, entitlementItem)

Update an entitlement item

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new UsersInventoryApi();
var entitlementId = 56; // int | The id of the entitlement
var entitlementItem = new EntitlementItem(); // EntitlementItem | The entitlement item object

try { 
    api_instance.updateItemUsingPUT1(entitlementId, entitlementItem);
} catch (e) {
    print("Exception when calling UsersInventoryApi->updateItemUsingPUT1: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entitlementId** | **int**| The id of the entitlement | 
 **entitlementItem** | [**EntitlementItem**](EntitlementItem.md)| The entitlement item object | [optional] 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateTemplateUsingPUT3**
> updateTemplateUsingPUT3(id, template)

Update an entitlement template

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new UsersInventoryApi();
var id = id_example; // String | The id of the template
var template = new ItemTemplateResource(); // ItemTemplateResource | The updated template

try { 
    api_instance.updateTemplateUsingPUT3(id, template);
} catch (e) {
    print("Exception when calling UsersInventoryApi->updateTemplateUsingPUT3: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the template | 
 **template** | [**ItemTemplateResource**](ItemTemplateResource.md)| The updated template | [optional] 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateUserInventoryBehaviorDataUsingPUT**
> updateUserInventoryBehaviorDataUsingPUT(userId, id, data)

Set the behavior data for an inventory entry

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new UsersInventoryApi();
var userId = 56; // int | The id of the user
var id = 56; // int | The id of the user inventory
var data = new Object(); // Object | The data map

try { 
    api_instance.updateUserInventoryBehaviorDataUsingPUT(userId, id, data);
} catch (e) {
    print("Exception when calling UsersInventoryApi->updateUserInventoryBehaviorDataUsingPUT: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **int**| The id of the user | 
 **id** | **int**| The id of the user inventory | 
 **data** | [**Object**](Object.md)| The data map | [optional] 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateUserInventoryExpiresUsingPUT**
> updateUserInventoryExpiresUsingPUT(userId, id, timestamp)

Set the expiration date

Will change the current grace period for a subscription but not the bill date (possibly even ending before having the chance to re-bill)

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new UsersInventoryApi();
var userId = 56; // int | user_id
var id = 56; // int | The id of the user inventory
var timestamp = new int(); // int | The new expiration date as a unix timestamp in seconds. May be null (no body).

try { 
    api_instance.updateUserInventoryExpiresUsingPUT(userId, id, timestamp);
} catch (e) {
    print("Exception when calling UsersInventoryApi->updateUserInventoryExpiresUsingPUT: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **int**| user_id | 
 **id** | **int**| The id of the user inventory | 
 **timestamp** | **int**| The new expiration date as a unix timestamp in seconds. May be null (no body). | [optional] 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateUserInventoryStatusUsingPUT**
> updateUserInventoryStatusUsingPUT(userId, id, inventoryStatus)

Set the status for an inventory entry

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new UsersInventoryApi();
var userId = 56; // int | The id of the user
var id = 56; // int | The id of the user inventory
var inventoryStatus = new String(); // String | The inventory status object

try { 
    api_instance.updateUserInventoryStatusUsingPUT(userId, id, inventoryStatus);
} catch (e) {
    print("Exception when calling UsersInventoryApi->updateUserInventoryStatusUsingPUT: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **int**| The id of the user | 
 **id** | **int**| The id of the user inventory | 
 **inventoryStatus** | **String**| The inventory status object | [optional] 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

