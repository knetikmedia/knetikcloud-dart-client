# swagger.api.Store_BundlesApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://jsapi-integration.us-east-1.elasticbeanstalk.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createBundleItem**](Store_BundlesApi.md#createBundleItem) | **POST** /store/bundles | Create a bundle item
[**createBundleTemplate**](Store_BundlesApi.md#createBundleTemplate) | **POST** /store/bundles/templates | Create a bundle template
[**deleteBundleItem**](Store_BundlesApi.md#deleteBundleItem) | **DELETE** /store/bundles/{id} | Delete a bundle item
[**deleteBundleTemplate**](Store_BundlesApi.md#deleteBundleTemplate) | **DELETE** /store/bundles/templates/{id} | Delete a bundle template
[**getBundleItem**](Store_BundlesApi.md#getBundleItem) | **GET** /store/bundles/{id} | Get a single bundle item
[**getBundleTemplate**](Store_BundlesApi.md#getBundleTemplate) | **GET** /store/bundles/templates/{id} | Get a single bundle template
[**getBundleTemplates**](Store_BundlesApi.md#getBundleTemplates) | **GET** /store/bundles/templates | List and search bundle templates
[**updateBundleItem**](Store_BundlesApi.md#updateBundleItem) | **PUT** /store/bundles/{id} | Update a bundle item
[**updateBundleTemplate**](Store_BundlesApi.md#updateBundleTemplate) | **PUT** /store/bundles/templates/{id} | Update a bundle template


# **createBundleItem**
> BundleItem createBundleItem(cascade, bundleItem)

Create a bundle item

The SKU for the bundle itself must be unique and there can only be one SKU.  Extra notes for price_override:  The price of all the items (multiplied by the quantity) must equal the price of the bundle.  With individual prices set, items will be processed individually and can be refunded as such.  However, if all prices are set to null, the price of the bundle will be used and will be treated as one item. <br><br><b>Permissions Needed:</b> BUNDLES_ADMIN

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new Store_BundlesApi();
var cascade = true; // bool | Whether to cascade group changes, such as in the limited gettable behavior. A 400 error will return otherwise if the group is already in use with different values.
var bundleItem = new BundleItem(); // BundleItem | The bundle item object

try { 
    var result = api_instance.createBundleItem(cascade, bundleItem);
    print(result);
} catch (e) {
    print("Exception when calling Store_BundlesApi->createBundleItem: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cascade** | **bool**| Whether to cascade group changes, such as in the limited gettable behavior. A 400 error will return otherwise if the group is already in use with different values. | [optional] [default to false]
 **bundleItem** | [**BundleItem**](BundleItem.md)| The bundle item object | [optional] 

### Return type

[**BundleItem**](BundleItem.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createBundleTemplate**
> ItemTemplateResource createBundleTemplate(bundleTemplateResource)

Create a bundle template

Bundle Templates define a type of bundle and the properties they have. <br><br><b>Permissions Needed:</b> BUNDLES_ADMIN

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new Store_BundlesApi();
var bundleTemplateResource = new ItemTemplateResource(); // ItemTemplateResource | The new bundle template

try { 
    var result = api_instance.createBundleTemplate(bundleTemplateResource);
    print(result);
} catch (e) {
    print("Exception when calling Store_BundlesApi->createBundleTemplate: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **bundleTemplateResource** | [**ItemTemplateResource**](ItemTemplateResource.md)| The new bundle template | [optional] 

### Return type

[**ItemTemplateResource**](ItemTemplateResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteBundleItem**
> deleteBundleItem(id)

Delete a bundle item

<b>Permissions Needed:</b> BUNDLES_ADMIN

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new Store_BundlesApi();
var id = 56; // int | The id of the bundle

try { 
    api_instance.deleteBundleItem(id);
} catch (e) {
    print("Exception when calling Store_BundlesApi->deleteBundleItem: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The id of the bundle | 

### Return type

void (empty response body)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteBundleTemplate**
> deleteBundleTemplate(id, cascade)

Delete a bundle template

<b>Permissions Needed:</b> BUNDLES_ADMIN

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new Store_BundlesApi();
var id = id_example; // String | The id of the template
var cascade = cascade_example; // String | force deleting the template if it's attached to other objects, cascade = detach

try { 
    api_instance.deleteBundleTemplate(id, cascade);
} catch (e) {
    print("Exception when calling Store_BundlesApi->deleteBundleTemplate: $e\n");
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

# **getBundleItem**
> BundleItem getBundleItem(id)

Get a single bundle item

<b>Permissions Needed:</b> ANY

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new Store_BundlesApi();
var id = 56; // int | The id of the bundle

try { 
    var result = api_instance.getBundleItem(id);
    print(result);
} catch (e) {
    print("Exception when calling Store_BundlesApi->getBundleItem: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The id of the bundle | 

### Return type

[**BundleItem**](BundleItem.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getBundleTemplate**
> ItemTemplateResource getBundleTemplate(id)

Get a single bundle template

Bundle Templates define a type of bundle and the properties they have. <br><br><b>Permissions Needed:</b> ANY

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new Store_BundlesApi();
var id = id_example; // String | The id of the template

try { 
    var result = api_instance.getBundleTemplate(id);
    print(result);
} catch (e) {
    print("Exception when calling Store_BundlesApi->getBundleTemplate: $e\n");
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

# **getBundleTemplates**
> PageResource«ItemTemplateResource» getBundleTemplates(size, page, order)

List and search bundle templates

<b>Permissions Needed:</b> ANY

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new Store_BundlesApi();
var size = 56; // int | The number of objects returned per page
var page = 56; // int | The number of the page returned, starting with 1
var order = order_example; // String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]

try { 
    var result = api_instance.getBundleTemplates(size, page, order);
    print(result);
} catch (e) {
    print("Exception when calling Store_BundlesApi->getBundleTemplates: $e\n");
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

# **updateBundleItem**
> BundleItem updateBundleItem(id, cascade, bundleItem)

Update a bundle item

<b>Permissions Needed:</b> BUNDLES_ADMIN

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new Store_BundlesApi();
var id = 56; // int | The id of the bundle
var cascade = true; // bool | Whether to cascade group changes, such as in the limited gettable behavior. A 400 error will return otherwise if the group is already in use with different values.
var bundleItem = new BundleItem(); // BundleItem | The bundle item object

try { 
    var result = api_instance.updateBundleItem(id, cascade, bundleItem);
    print(result);
} catch (e) {
    print("Exception when calling Store_BundlesApi->updateBundleItem: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The id of the bundle | 
 **cascade** | **bool**| Whether to cascade group changes, such as in the limited gettable behavior. A 400 error will return otherwise if the group is already in use with different values. | [optional] [default to false]
 **bundleItem** | [**BundleItem**](BundleItem.md)| The bundle item object | [optional] 

### Return type

[**BundleItem**](BundleItem.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateBundleTemplate**
> ItemTemplateResource updateBundleTemplate(id, bundleTemplateResource)

Update a bundle template

<b>Permissions Needed:</b> BUNDLES_ADMIN

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new Store_BundlesApi();
var id = id_example; // String | The id of the template
var bundleTemplateResource = new ItemTemplateResource(); // ItemTemplateResource | The bundle template resource object

try { 
    var result = api_instance.updateBundleTemplate(id, bundleTemplateResource);
    print(result);
} catch (e) {
    print("Exception when calling Store_BundlesApi->updateBundleTemplate: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the template | 
 **bundleTemplateResource** | [**ItemTemplateResource**](ItemTemplateResource.md)| The bundle template resource object | [optional] 

### Return type

[**ItemTemplateResource**](ItemTemplateResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

