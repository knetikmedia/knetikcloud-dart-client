# swagger.api.BRERuleEngineCategoriesApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://integration.knetikcloud.com/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createBRECategoryTemplate**](BRERuleEngineCategoriesApi.md#createBRECategoryTemplate) | **POST** /bre/categories/templates | Create a BRE category template
[**deleteBRECategoryTemplate**](BRERuleEngineCategoriesApi.md#deleteBRECategoryTemplate) | **DELETE** /bre/categories/templates/{id} | Delete a BRE category template
[**getBRECategories**](BRERuleEngineCategoriesApi.md#getBRECategories) | **GET** /bre/categories | List categories
[**getBRECategory**](BRERuleEngineCategoriesApi.md#getBRECategory) | **GET** /bre/categories/{name} | Get a single category
[**getBRECategoryTemplate**](BRERuleEngineCategoriesApi.md#getBRECategoryTemplate) | **GET** /bre/categories/templates/{id} | Get a single BRE category template
[**getBRECategoryTemplates**](BRERuleEngineCategoriesApi.md#getBRECategoryTemplates) | **GET** /bre/categories/templates | List and search BRE category templates
[**updateBRECategory**](BRERuleEngineCategoriesApi.md#updateBRECategory) | **PUT** /bre/categories/{name} | Update a category
[**updateBRECategoryTemplate**](BRERuleEngineCategoriesApi.md#updateBRECategoryTemplate) | **PUT** /bre/categories/templates/{id} | Update a BRE category template


# **createBRECategoryTemplate**
> TemplateResource createBRECategoryTemplate(template)

Create a BRE category template

Templates define a type of BRE category and the properties they have

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new BRERuleEngineCategoriesApi();
var template = new TemplateResource(); // TemplateResource | The category template to create

try { 
    var result = api_instance.createBRECategoryTemplate(template);
    print(result);
} catch (e) {
    print("Exception when calling BRERuleEngineCategoriesApi->createBRECategoryTemplate: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **template** | [**TemplateResource**](TemplateResource.md)| The category template to create | [optional] 

### Return type

[**TemplateResource**](TemplateResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteBRECategoryTemplate**
> deleteBRECategoryTemplate(id, cascade)

Delete a BRE category template

If cascade = 'detach', it will force delete the template even if it's attached to other objects

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new BRERuleEngineCategoriesApi();
var id = id_example; // String | The id of the template
var cascade = cascade_example; // String | The value needed to delete used templates

try { 
    api_instance.deleteBRECategoryTemplate(id, cascade);
} catch (e) {
    print("Exception when calling BRERuleEngineCategoriesApi->deleteBRECategoryTemplate: $e\n");
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
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getBRECategories**
> PageResource«BreCategoryResource» getBRECategories(size, page)

List categories

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new BRERuleEngineCategoriesApi();
var size = 56; // int | The number of objects returned per page
var page = 56; // int | The number of the page returned, starting with 1

try { 
    var result = api_instance.getBRECategories(size, page);
    print(result);
} catch (e) {
    print("Exception when calling BRERuleEngineCategoriesApi->getBRECategories: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]

### Return type

[**PageResource«BreCategoryResource»**](PageResource«BreCategoryResource».md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getBRECategory**
> BreCategoryResource getBRECategory(name)

Get a single category

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new BRERuleEngineCategoriesApi();
var name = name_example; // String | The category name

try { 
    var result = api_instance.getBRECategory(name);
    print(result);
} catch (e) {
    print("Exception when calling BRERuleEngineCategoriesApi->getBRECategory: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The category name | 

### Return type

[**BreCategoryResource**](BreCategoryResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getBRECategoryTemplate**
> TemplateResource getBRECategoryTemplate(id)

Get a single BRE category template

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new BRERuleEngineCategoriesApi();
var id = id_example; // String | The id of the template

try { 
    var result = api_instance.getBRECategoryTemplate(id);
    print(result);
} catch (e) {
    print("Exception when calling BRERuleEngineCategoriesApi->getBRECategoryTemplate: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the template | 

### Return type

[**TemplateResource**](TemplateResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getBRECategoryTemplates**
> PageResource«TemplateResource» getBRECategoryTemplates(size, page, order)

List and search BRE category templates

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new BRERuleEngineCategoriesApi();
var size = 56; // int | The number of objects returned per page
var page = 56; // int | The number of the page returned, starting with 1
var order = order_example; // String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]

try { 
    var result = api_instance.getBRECategoryTemplates(size, page, order);
    print(result);
} catch (e) {
    print("Exception when calling BRERuleEngineCategoriesApi->getBRECategoryTemplates: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **String**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to id:ASC]

### Return type

[**PageResource«TemplateResource»**](PageResource«TemplateResource».md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateBRECategory**
> updateBRECategory(name, category)

Update a category

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new BRERuleEngineCategoriesApi();
var name = name_example; // String | The category name
var category = new BreCategoryResource(); // BreCategoryResource | The updated BRE category information

try { 
    api_instance.updateBRECategory(name, category);
} catch (e) {
    print("Exception when calling BRERuleEngineCategoriesApi->updateBRECategory: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The category name | 
 **category** | [**BreCategoryResource**](BreCategoryResource.md)| The updated BRE category information | [optional] 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateBRECategoryTemplate**
> updateBRECategoryTemplate(id, template)

Update a BRE category template

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new BRERuleEngineCategoriesApi();
var id = id_example; // String | The id of the template
var template = new TemplateResource(); // TemplateResource | The updated category template definition

try { 
    api_instance.updateBRECategoryTemplate(id, template);
} catch (e) {
    print("Exception when calling BRERuleEngineCategoriesApi->updateBRECategoryTemplate: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the template | 
 **template** | [**TemplateResource**](TemplateResource.md)| The updated category template definition | [optional] 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

