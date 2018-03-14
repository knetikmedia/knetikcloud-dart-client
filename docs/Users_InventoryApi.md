# swagger.api.Users_InventoryApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://jsapi-integration.us-east-1.elasticbeanstalk.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addItemToUserInventory**](Users_InventoryApi.md#addItemToUserInventory) | **POST** /users/{id}/inventory | Adds an item to the user inventory
[**checkUserEntitlementItem**](Users_InventoryApi.md#checkUserEntitlementItem) | **GET** /users/{user_id}/entitlements/{item_id}/check | Check for access to an item without consuming
[**createEntitlementItem**](Users_InventoryApi.md#createEntitlementItem) | **POST** /entitlements | Create an entitlement item
[**createEntitlementTemplate**](Users_InventoryApi.md#createEntitlementTemplate) | **POST** /entitlements/templates | Create an entitlement template
[**deleteEntitlementItem**](Users_InventoryApi.md#deleteEntitlementItem) | **DELETE** /entitlements/{entitlement_id} | Delete an entitlement item
[**deleteEntitlementTemplate**](Users_InventoryApi.md#deleteEntitlementTemplate) | **DELETE** /entitlements/templates/{id} | Delete an entitlement template
[**getEntitlementItem**](Users_InventoryApi.md#getEntitlementItem) | **GET** /entitlements/{entitlement_id} | Get a single entitlement item
[**getEntitlementItems**](Users_InventoryApi.md#getEntitlementItems) | **GET** /entitlements | List and search entitlement items
[**getEntitlementTemplate**](Users_InventoryApi.md#getEntitlementTemplate) | **GET** /entitlements/templates/{id} | Get a single entitlement template
[**getEntitlementTemplates**](Users_InventoryApi.md#getEntitlementTemplates) | **GET** /entitlements/templates | List and search entitlement templates
[**getUserInventories**](Users_InventoryApi.md#getUserInventories) | **GET** /users/{id}/inventory | List the user inventory entries for a given user
[**getUserInventory**](Users_InventoryApi.md#getUserInventory) | **GET** /users/{user_id}/inventory/{id} | Get an inventory entry
[**getUserInventoryLog**](Users_InventoryApi.md#getUserInventoryLog) | **GET** /users/{user_id}/inventory/{id}/log | List the log entries for this inventory entry
[**getUsersInventory**](Users_InventoryApi.md#getUsersInventory) | **GET** /inventories | List the user inventory entries for all users
[**grantUserEntitlement**](Users_InventoryApi.md#grantUserEntitlement) | **POST** /users/{user_id}/entitlements | Grant an entitlement
[**updateEntitlementItem**](Users_InventoryApi.md#updateEntitlementItem) | **PUT** /entitlements/{entitlement_id} | Update an entitlement item
[**updateEntitlementTemplate**](Users_InventoryApi.md#updateEntitlementTemplate) | **PUT** /entitlements/templates/{id} | Update an entitlement template
[**updateUserInventoryBehaviorData**](Users_InventoryApi.md#updateUserInventoryBehaviorData) | **PUT** /users/{user_id}/inventory/{id}/behavior-data | Set the behavior data for an inventory entry
[**updateUserInventoryExpires**](Users_InventoryApi.md#updateUserInventoryExpires) | **PUT** /users/{user_id}/inventory/{id}/expires | Set the expiration date
[**updateUserInventoryStatus**](Users_InventoryApi.md#updateUserInventoryStatus) | **PUT** /users/{user_id}/inventory/{id}/status | Set the status for an inventory entry
[**useUserEntitlementItem**](Users_InventoryApi.md#useUserEntitlementItem) | **POST** /users/{user_id}/entitlements/{item_id}/use | Use an item


# **addItemToUserInventory**
> InvoiceResource addItemToUserInventory(id, userInventoryAddRequest)

Adds an item to the user inventory

The inventory is fulfilled asynchronously UNLESS the invoice is explicitely skipped. Depending on the use case, it might require the client to verify that the entitlement was added after the fact or configure a BRE rule to get a notification in real time. <br><br><b>Permissions Needed:</b> INVENTORY_ADMIN

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new Users_InventoryApi();
var id = 56; // int | The id of the user
var userInventoryAddRequest = new UserInventoryAddRequest(); // UserInventoryAddRequest | The user inventory add request object

try { 
    var result = api_instance.addItemToUserInventory(id, userInventoryAddRequest);
    print(result);
} catch (e) {
    print("Exception when calling Users_InventoryApi->addItemToUserInventory: $e\n");
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

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **checkUserEntitlementItem**
> checkUserEntitlementItem(userId, itemId, sku)

Check for access to an item without consuming

Useful for pre-check and accounts for all various buisness rules. <br><br><b>Permissions Needed:</b> INVENTORY_ADMIN or owner

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new Users_InventoryApi();
var userId = userId_example; // String | The id of the user to check for or 'me' for logged in user
var itemId = 56; // int | The id of the item
var sku = sku_example; // String | The specific sku of an entitlement list addition to check entitlement for. This is of very limited and specific use and should generally be left out

try { 
    api_instance.checkUserEntitlementItem(userId, itemId, sku);
} catch (e) {
    print("Exception when calling Users_InventoryApi->checkUserEntitlementItem: $e\n");
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

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createEntitlementItem**
> EntitlementItem createEntitlementItem(cascade, entitlementItem)

Create an entitlement item

<b>Permissions Needed:</b> INVENTORY_ADMIN

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new Users_InventoryApi();
var cascade = true; // bool | Whether to cascade group changes, such as in the limited gettable behavior. A 400 error will return otherwise if the group is already in use with different values.
var entitlementItem = new EntitlementItem(); // EntitlementItem | The entitlement item object

try { 
    var result = api_instance.createEntitlementItem(cascade, entitlementItem);
    print(result);
} catch (e) {
    print("Exception when calling Users_InventoryApi->createEntitlementItem: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cascade** | **bool**| Whether to cascade group changes, such as in the limited gettable behavior. A 400 error will return otherwise if the group is already in use with different values. | [optional] [default to false]
 **entitlementItem** | [**EntitlementItem**](EntitlementItem.md)| The entitlement item object | [optional] 

### Return type

[**EntitlementItem**](EntitlementItem.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createEntitlementTemplate**
> ItemTemplateResource createEntitlementTemplate(template)

Create an entitlement template

Entitlement templates define a type of entitlement and the properties they have. <br><br><b>Permissions Needed:</b> TEMPLATE_ADMIN

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new Users_InventoryApi();
var template = new ItemTemplateResource(); // ItemTemplateResource | The entitlement template to be created

try { 
    var result = api_instance.createEntitlementTemplate(template);
    print(result);
} catch (e) {
    print("Exception when calling Users_InventoryApi->createEntitlementTemplate: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **template** | [**ItemTemplateResource**](ItemTemplateResource.md)| The entitlement template to be created | [optional] 

### Return type

[**ItemTemplateResource**](ItemTemplateResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteEntitlementItem**
> deleteEntitlementItem(entitlementId)

Delete an entitlement item

<b>Permissions Needed:</b> INVENTORY_ADMIN

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new Users_InventoryApi();
var entitlementId = 56; // int | The id of the entitlement

try { 
    api_instance.deleteEntitlementItem(entitlementId);
} catch (e) {
    print("Exception when calling Users_InventoryApi->deleteEntitlementItem: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entitlementId** | **int**| The id of the entitlement | 

### Return type

void (empty response body)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteEntitlementTemplate**
> deleteEntitlementTemplate(id, cascade)

Delete an entitlement template

If cascade = 'detach', it will force delete the template even if it's attached to other objects. <br><br><b>Permissions Needed:</b> TEMPLATE_ADMIN

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new Users_InventoryApi();
var id = id_example; // String | The id of the template
var cascade = cascade_example; // String | The value needed to delete used templates

try { 
    api_instance.deleteEntitlementTemplate(id, cascade);
} catch (e) {
    print("Exception when calling Users_InventoryApi->deleteEntitlementTemplate: $e\n");
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

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getEntitlementItem**
> EntitlementItem getEntitlementItem(entitlementId)

Get a single entitlement item

<b>Permissions Needed:</b> ANY

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new Users_InventoryApi();
var entitlementId = 56; // int | The id of the entitlement

try { 
    var result = api_instance.getEntitlementItem(entitlementId);
    print(result);
} catch (e) {
    print("Exception when calling Users_InventoryApi->getEntitlementItem: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entitlementId** | **int**| The id of the entitlement | 

### Return type

[**EntitlementItem**](EntitlementItem.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getEntitlementItems**
> PageResource«EntitlementItem» getEntitlementItems(filterTemplate, size, page, order)

List and search entitlement items

<b>Permissions Needed:</b> ANY

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new Users_InventoryApi();
var filterTemplate = filterTemplate_example; // String | Filter for entitlements using a specified template
var size = 56; // int | The number of objects returned per page
var page = 56; // int | The number of the page returned, starting with 1
var order = order_example; // String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]

try { 
    var result = api_instance.getEntitlementItems(filterTemplate, size, page, order);
    print(result);
} catch (e) {
    print("Exception when calling Users_InventoryApi->getEntitlementItems: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterTemplate** | **String**| Filter for entitlements using a specified template | [optional] 
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **String**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to id:ASC]

### Return type

[**PageResource«EntitlementItem»**](PageResource«EntitlementItem».md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getEntitlementTemplate**
> ItemTemplateResource getEntitlementTemplate(id)

Get a single entitlement template

<b>Permissions Needed:</b> TEMPLATE_ADMIN or ACHIEVEMENTS_ADMIN

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new Users_InventoryApi();
var id = id_example; // String | The id of the template

try { 
    var result = api_instance.getEntitlementTemplate(id);
    print(result);
} catch (e) {
    print("Exception when calling Users_InventoryApi->getEntitlementTemplate: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the template | 

### Return type

[**ItemTemplateResource**](ItemTemplateResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getEntitlementTemplates**
> PageResource«ItemTemplateResource» getEntitlementTemplates(size, page, order)

List and search entitlement templates

<b>Permissions Needed:</b> TEMPLATE_ADMIN or ACHIEVEMENTS_ADMIN

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new Users_InventoryApi();
var size = 56; // int | The number of objects returned per page
var page = 56; // int | The number of the page returned, starting with 1
var order = order_example; // String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]

try { 
    var result = api_instance.getEntitlementTemplates(size, page, order);
    print(result);
} catch (e) {
    print("Exception when calling Users_InventoryApi->getEntitlementTemplates: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **String**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to id:ASC]

### Return type

[**PageResource«ItemTemplateResource»**](PageResource«ItemTemplateResource».md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUserInventories**
> PageResource«UserInventoryResource» getUserInventories(id, inactive, size, page, filterItemName, filterItemId, filterUsername, filterGroup, filterDate)

List the user inventory entries for a given user

<b>Permissions Needed:</b> INVENTORY_ADMIN or owner

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new Users_InventoryApi();
var id = 56; // int | The id of the user
var inactive = true; // bool | If true, accepts inactive user inventories
var size = 56; // int | The number of objects returned per page
var page = 56; // int | The number of the page returned, starting with 1
var filterItemName = filterItemName_example; // String | Filter by items whose name starts with a string
var filterItemId = 56; // int | Filter by item id
var filterUsername = filterUsername_example; // String | Filter by entries owned by the user with the specified username
var filterGroup = filterGroup_example; // String | Filter by entries owned by the users in a given group, by unique name
var filterDate = filterDate_example; // String | A comma separated string without spaces.  First value is the operator to search on, second value is the log start date, a unix timestamp in seconds. Can be repeated for a range, eg: GT,123,LT,456  Allowed operators: (GT, LT, EQ, GOE, LOE).

try { 
    var result = api_instance.getUserInventories(id, inactive, size, page, filterItemName, filterItemId, filterUsername, filterGroup, filterDate);
    print(result);
} catch (e) {
    print("Exception when calling Users_InventoryApi->getUserInventories: $e\n");
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
 **filterItemId** | **int**| Filter by item id | [optional] 
 **filterUsername** | **String**| Filter by entries owned by the user with the specified username | [optional] 
 **filterGroup** | **String**| Filter by entries owned by the users in a given group, by unique name | [optional] 
 **filterDate** | **String**| A comma separated string without spaces.  First value is the operator to search on, second value is the log start date, a unix timestamp in seconds. Can be repeated for a range, eg: GT,123,LT,456  Allowed operators: (GT, LT, EQ, GOE, LOE). | [optional] 

### Return type

[**PageResource«UserInventoryResource»**](PageResource«UserInventoryResource».md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUserInventory**
> UserInventoryResource getUserInventory(userId, id)

Get an inventory entry

<b>Permissions Needed:</b> INVENTORY_ADMIN

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new Users_InventoryApi();
var userId = userId_example; // String | The id of the inventory owner or 'me' for the logged in user
var id = 56; // int | The id of the user inventory

try { 
    var result = api_instance.getUserInventory(userId, id);
    print(result);
} catch (e) {
    print("Exception when calling Users_InventoryApi->getUserInventory: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**| The id of the inventory owner or &#39;me&#39; for the logged in user | 
 **id** | **int**| The id of the user inventory | 

### Return type

[**UserInventoryResource**](UserInventoryResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUserInventoryLog**
> PageResource«UserItemLogResource» getUserInventoryLog(userId, id, size, page)

List the log entries for this inventory entry

<b>Permissions Needed:</b> INVENTORY_ADMIN or owner

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new Users_InventoryApi();
var userId = userId_example; // String | The id of the inventory owner or 'me' for the logged in user
var id = 56; // int | The id of the user inventory
var size = 56; // int | The number of objects returned per page
var page = 56; // int | The number of the page returned, starting with 1

try { 
    var result = api_instance.getUserInventoryLog(userId, id, size, page);
    print(result);
} catch (e) {
    print("Exception when calling Users_InventoryApi->getUserInventoryLog: $e\n");
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

[**PageResource«UserItemLogResource»**](PageResource«UserItemLogResource».md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUsersInventory**
> PageResource«UserInventoryResource» getUsersInventory(inactive, size, page, filterItemName, filterItemId, filterUsername, filterGroup, filterDate)

List the user inventory entries for all users

<b>Permissions Needed:</b> INVENTORY_ADMIN

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new Users_InventoryApi();
var inactive = true; // bool | If true, accepts inactive user inventories
var size = 56; // int | The number of objects returned per page
var page = 56; // int | The number of the page returned, starting with 1
var filterItemName = filterItemName_example; // String | Filter by items whose name starts with a string
var filterItemId = 56; // int | Filter by item id
var filterUsername = filterUsername_example; // String | Filter by entries owned by the user with the specified username
var filterGroup = filterGroup_example; // String | Filter by entries owned by the users in a given group, by unique name
var filterDate = filterDate_example; // String | A comma separated string without spaces.  First value is the operator to search on, second value is the log start date, a unix timestamp in seconds. Can be repeated for a range, eg: GT,123,LT,456  Allowed operators: (GT, LT, EQ, GOE, LOE).

try { 
    var result = api_instance.getUsersInventory(inactive, size, page, filterItemName, filterItemId, filterUsername, filterGroup, filterDate);
    print(result);
} catch (e) {
    print("Exception when calling Users_InventoryApi->getUsersInventory: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inactive** | **bool**| If true, accepts inactive user inventories | [optional] [default to false]
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **filterItemName** | **String**| Filter by items whose name starts with a string | [optional] 
 **filterItemId** | **int**| Filter by item id | [optional] 
 **filterUsername** | **String**| Filter by entries owned by the user with the specified username | [optional] 
 **filterGroup** | **String**| Filter by entries owned by the users in a given group, by unique name | [optional] 
 **filterDate** | **String**| A comma separated string without spaces.  First value is the operator to search on, second value is the log start date, a unix timestamp in seconds. Can be repeated for a range, eg: GT,123,LT,456  Allowed operators: (GT, LT, EQ, GOE, LOE). | [optional] 

### Return type

[**PageResource«UserInventoryResource»**](PageResource«UserInventoryResource».md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **grantUserEntitlement**
> grantUserEntitlement(userId, grantRequest)

Grant an entitlement

<b>Permissions Needed:</b> INVENTORY_ADMIN

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new Users_InventoryApi();
var userId = 56; // int | The id of the user to grant the entitlement to
var grantRequest = new EntitlementGrantRequest(); // EntitlementGrantRequest | grantRequest

try { 
    api_instance.grantUserEntitlement(userId, grantRequest);
} catch (e) {
    print("Exception when calling Users_InventoryApi->grantUserEntitlement: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **int**| The id of the user to grant the entitlement to | 
 **grantRequest** | [**EntitlementGrantRequest**](EntitlementGrantRequest.md)| grantRequest | 

### Return type

void (empty response body)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateEntitlementItem**
> updateEntitlementItem(entitlementId, cascade, entitlementItem)

Update an entitlement item

<b>Permissions Needed:</b> INVENTORY_ADMIN

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new Users_InventoryApi();
var entitlementId = 56; // int | The id of the entitlement
var cascade = true; // bool | Whether to cascade group changes, such as in the limited gettable behavior. A 400 error will return otherwise if the group is already in use with different values.
var entitlementItem = new EntitlementItem(); // EntitlementItem | The entitlement item object

try { 
    api_instance.updateEntitlementItem(entitlementId, cascade, entitlementItem);
} catch (e) {
    print("Exception when calling Users_InventoryApi->updateEntitlementItem: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entitlementId** | **int**| The id of the entitlement | 
 **cascade** | **bool**| Whether to cascade group changes, such as in the limited gettable behavior. A 400 error will return otherwise if the group is already in use with different values. | [optional] [default to false]
 **entitlementItem** | [**EntitlementItem**](EntitlementItem.md)| The entitlement item object | [optional] 

### Return type

void (empty response body)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateEntitlementTemplate**
> ItemTemplateResource updateEntitlementTemplate(id, template)

Update an entitlement template

<b>Permissions Needed:</b> TEMPLATE_ADMIN

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new Users_InventoryApi();
var id = id_example; // String | The id of the template
var template = new ItemTemplateResource(); // ItemTemplateResource | The updated template

try { 
    var result = api_instance.updateEntitlementTemplate(id, template);
    print(result);
} catch (e) {
    print("Exception when calling Users_InventoryApi->updateEntitlementTemplate: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the template | 
 **template** | [**ItemTemplateResource**](ItemTemplateResource.md)| The updated template | [optional] 

### Return type

[**ItemTemplateResource**](ItemTemplateResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateUserInventoryBehaviorData**
> updateUserInventoryBehaviorData(userId, id, data)

Set the behavior data for an inventory entry

<b>Permissions Needed:</b> INVENTORY_ADMIN

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new Users_InventoryApi();
var userId = 56; // int | The id of the user
var id = 56; // int | The id of the user inventory
var data = new Object(); // Object | The data map

try { 
    api_instance.updateUserInventoryBehaviorData(userId, id, data);
} catch (e) {
    print("Exception when calling Users_InventoryApi->updateUserInventoryBehaviorData: $e\n");
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

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateUserInventoryExpires**
> updateUserInventoryExpires(userId, id, timestamp)

Set the expiration date

Will change the current grace period for a subscription but not the bill date (possibly even ending before having the chance to re-bill). <br><br><b>Permissions Needed:</b> INVENTORY_ADMIN

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new Users_InventoryApi();
var userId = 56; // int | user_id
var id = 56; // int | The id of the user inventory
var timestamp = new int(); // int | The new expiration date as a unix timestamp in seconds. May be null (no body).

try { 
    api_instance.updateUserInventoryExpires(userId, id, timestamp);
} catch (e) {
    print("Exception when calling Users_InventoryApi->updateUserInventoryExpires: $e\n");
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

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateUserInventoryStatus**
> updateUserInventoryStatus(userId, id, inventoryStatus)

Set the status for an inventory entry

<b>Permissions Needed:</b> INVENTORY_ADMIN

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new Users_InventoryApi();
var userId = 56; // int | The id of the user
var id = 56; // int | The id of the user inventory
var inventoryStatus = new InventoryStatusWrapper(); // InventoryStatusWrapper | The inventory status object

try { 
    api_instance.updateUserInventoryStatus(userId, id, inventoryStatus);
} catch (e) {
    print("Exception when calling Users_InventoryApi->updateUserInventoryStatus: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **int**| The id of the user | 
 **id** | **int**| The id of the user inventory | 
 **inventoryStatus** | [**InventoryStatusWrapper**](InventoryStatusWrapper.md)| The inventory status object | [optional] 

### Return type

void (empty response body)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **useUserEntitlementItem**
> useUserEntitlementItem(userId, itemId, sku, info)

Use an item

<b>Permissions Needed:</b> INVENTORY_ADMIN or owner

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new Users_InventoryApi();
var userId = userId_example; // String | The id of the user to check for or 'me' for logged in user
var itemId = 56; // int | The id of the item
var sku = sku_example; // String | The specific sku of an entitlement_list addition to check entitlement for. This is of very limited and specific use and should generally be left out
var info = info_example; // String | Any additional info to add to the log about this use

try { 
    api_instance.useUserEntitlementItem(userId, itemId, sku, info);
} catch (e) {
    print("Exception when calling Users_InventoryApi->useUserEntitlementItem: $e\n");
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

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

