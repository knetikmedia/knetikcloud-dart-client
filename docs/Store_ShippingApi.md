# swagger.api.Store_ShippingApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://jsapi-integration.us-east-1.elasticbeanstalk.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createShippingItem**](Store_ShippingApi.md#createShippingItem) | **POST** /store/shipping | Create a shipping item
[**createShippingTemplate**](Store_ShippingApi.md#createShippingTemplate) | **POST** /store/shipping/templates | Create a shipping template
[**deleteShippingItem**](Store_ShippingApi.md#deleteShippingItem) | **DELETE** /store/shipping/{id} | Delete a shipping item
[**deleteShippingTemplate**](Store_ShippingApi.md#deleteShippingTemplate) | **DELETE** /store/shipping/templates/{id} | Delete a shipping template
[**getShippingItem**](Store_ShippingApi.md#getShippingItem) | **GET** /store/shipping/{id} | Get a single shipping item
[**getShippingTemplate**](Store_ShippingApi.md#getShippingTemplate) | **GET** /store/shipping/templates/{id} | Get a single shipping template
[**getShippingTemplates**](Store_ShippingApi.md#getShippingTemplates) | **GET** /store/shipping/templates | List and search shipping templates
[**updateShippingItem**](Store_ShippingApi.md#updateShippingItem) | **PUT** /store/shipping/{id} | Update a shipping item
[**updateShippingTemplate**](Store_ShippingApi.md#updateShippingTemplate) | **PUT** /store/shipping/templates/{id} | Update a shipping template


# **createShippingItem**
> ShippingItem createShippingItem(cascade, shippingItem)

Create a shipping item

A shipping item represents a shipping option and cost. SKUs have to be unique in the entire store. <br><br><b>Permissions Needed:</b> SHIPPING_ADMIN

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new Store_ShippingApi();
var cascade = true; // bool | Whether to cascade group changes, such as in the limited gettable behavior. A 400 error will return otherwise if the group is already in use with different values.
var shippingItem = new ShippingItem(); // ShippingItem | The shipping item object

try { 
    var result = api_instance.createShippingItem(cascade, shippingItem);
    print(result);
} catch (e) {
    print("Exception when calling Store_ShippingApi->createShippingItem: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cascade** | **bool**| Whether to cascade group changes, such as in the limited gettable behavior. A 400 error will return otherwise if the group is already in use with different values. | [optional] [default to false]
 **shippingItem** | [**ShippingItem**](ShippingItem.md)| The shipping item object | [optional] 

### Return type

[**ShippingItem**](ShippingItem.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createShippingTemplate**
> ItemTemplateResource createShippingTemplate(shippingTemplateResource)

Create a shipping template

Shipping Templates define a type of shipping and the properties they have.

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new Store_ShippingApi();
var shippingTemplateResource = new ItemTemplateResource(); // ItemTemplateResource | The new shipping template

try { 
    var result = api_instance.createShippingTemplate(shippingTemplateResource);
    print(result);
} catch (e) {
    print("Exception when calling Store_ShippingApi->createShippingTemplate: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **shippingTemplateResource** | [**ItemTemplateResource**](ItemTemplateResource.md)| The new shipping template | [optional] 

### Return type

[**ItemTemplateResource**](ItemTemplateResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteShippingItem**
> deleteShippingItem(id)

Delete a shipping item

<b>Permissions Needed:</b> SHIPPING_ADMIN

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new Store_ShippingApi();
var id = 56; // int | The id of the shipping item

try { 
    api_instance.deleteShippingItem(id);
} catch (e) {
    print("Exception when calling Store_ShippingApi->deleteShippingItem: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The id of the shipping item | 

### Return type

void (empty response body)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteShippingTemplate**
> deleteShippingTemplate(id, cascade)

Delete a shipping template

<b>Permissions Needed:</b> TEMPLATE_ADMIN

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new Store_ShippingApi();
var id = id_example; // String | The id of the template
var cascade = cascade_example; // String | force deleting the template if it's attached to other objects, cascade = detach

try { 
    api_instance.deleteShippingTemplate(id, cascade);
} catch (e) {
    print("Exception when calling Store_ShippingApi->deleteShippingTemplate: $e\n");
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

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getShippingItem**
> ShippingItem getShippingItem(id)

Get a single shipping item

<b>Permissions Needed:</b> ANY

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new Store_ShippingApi();
var id = 56; // int | The id of the shipping item

try { 
    var result = api_instance.getShippingItem(id);
    print(result);
} catch (e) {
    print("Exception when calling Store_ShippingApi->getShippingItem: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The id of the shipping item | 

### Return type

[**ShippingItem**](ShippingItem.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getShippingTemplate**
> ItemTemplateResource getShippingTemplate(id)

Get a single shipping template

Shipping Templates define a type of shipping and the properties they have. <br><br><b>Permissions Needed:</b> TEMPLATE_ADMIN or SHIPPING_ADMIN

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new Store_ShippingApi();
var id = id_example; // String | The id of the template

try { 
    var result = api_instance.getShippingTemplate(id);
    print(result);
} catch (e) {
    print("Exception when calling Store_ShippingApi->getShippingTemplate: $e\n");
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

# **getShippingTemplates**
> PageResource«ItemTemplateResource» getShippingTemplates(size, page, order)

List and search shipping templates

<b>Permissions Needed:</b> TEMPLATE_ADMIN or SHIPPING_ADMIN

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new Store_ShippingApi();
var size = 56; // int | The number of objects returned per page
var page = 56; // int | The number of the page returned, starting with 1
var order = order_example; // String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]

try { 
    var result = api_instance.getShippingTemplates(size, page, order);
    print(result);
} catch (e) {
    print("Exception when calling Store_ShippingApi->getShippingTemplates: $e\n");
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

# **updateShippingItem**
> ShippingItem updateShippingItem(id, cascade, shippingItem)

Update a shipping item

<b>Permissions Needed:</b> SHIPPING_ADMIN

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new Store_ShippingApi();
var id = 56; // int | The id of the shipping item
var cascade = true; // bool | Whether to cascade group changes, such as in the limited gettable behavior. A 400 error will return otherwise if the group is already in use with different values.
var shippingItem = new ShippingItem(); // ShippingItem | The shipping item object

try { 
    var result = api_instance.updateShippingItem(id, cascade, shippingItem);
    print(result);
} catch (e) {
    print("Exception when calling Store_ShippingApi->updateShippingItem: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The id of the shipping item | 
 **cascade** | **bool**| Whether to cascade group changes, such as in the limited gettable behavior. A 400 error will return otherwise if the group is already in use with different values. | [optional] [default to false]
 **shippingItem** | [**ShippingItem**](ShippingItem.md)| The shipping item object | [optional] 

### Return type

[**ShippingItem**](ShippingItem.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateShippingTemplate**
> ItemTemplateResource updateShippingTemplate(id, shippingTemplateResource)

Update a shipping template

<b>Permissions Needed:</b> TEMPLATE_ADMIN

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new Store_ShippingApi();
var id = id_example; // String | The id of the template
var shippingTemplateResource = new ItemTemplateResource(); // ItemTemplateResource | The shipping template resource object

try { 
    var result = api_instance.updateShippingTemplate(id, shippingTemplateResource);
    print(result);
} catch (e) {
    print("Exception when calling Store_ShippingApi->updateShippingTemplate: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the template | 
 **shippingTemplateResource** | [**ItemTemplateResource**](ItemTemplateResource.md)| The shipping template resource object | [optional] 

### Return type

[**ItemTemplateResource**](ItemTemplateResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

