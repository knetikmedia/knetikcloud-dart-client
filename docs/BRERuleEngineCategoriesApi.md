# swagger.api.BRERuleEngineCategoriesApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://localhost:8080/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createTemplateUsingPOST1**](BRERuleEngineCategoriesApi.md#createTemplateUsingPOST1) | **POST** /bre/categories/templates | Create a BRE category template
[**deleteTemplateUsingDELETE**](BRERuleEngineCategoriesApi.md#deleteTemplateUsingDELETE) | **DELETE** /bre/categories/templates/{id} | Delete a BRE category template
[**getCategoriesUsingGET**](BRERuleEngineCategoriesApi.md#getCategoriesUsingGET) | **GET** /bre/categories | List categories
[**getCategoryUsingGET**](BRERuleEngineCategoriesApi.md#getCategoryUsingGET) | **GET** /bre/categories/{name} | Get a single category
[**getTemplateUsingGET**](BRERuleEngineCategoriesApi.md#getTemplateUsingGET) | **GET** /bre/categories/templates/{id} | Get a single BRE category template
[**getTemplatesUsingGET**](BRERuleEngineCategoriesApi.md#getTemplatesUsingGET) | **GET** /bre/categories/templates | List and search BRE category templates
[**updateCategoryUsingPUT**](BRERuleEngineCategoriesApi.md#updateCategoryUsingPUT) | **PUT** /bre/categories/{name} | Update a category
[**updateTemplateUsingPUT1**](BRERuleEngineCategoriesApi.md#updateTemplateUsingPUT1) | **PUT** /bre/categories/templates/{id} | Update a BRE category template


# **createTemplateUsingPOST1**
> TemplateResource createTemplateUsingPOST1(template)

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
    var result = api_instance.createTemplateUsingPOST1(template);
    print(result);
} catch (e) {
    print("Exception when calling BRERuleEngineCategoriesApi->createTemplateUsingPOST1: $e\n");
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

# **deleteTemplateUsingDELETE**
> deleteTemplateUsingDELETE(id, cascade)

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
    api_instance.deleteTemplateUsingDELETE(id, cascade);
} catch (e) {
    print("Exception when calling BRERuleEngineCategoriesApi->deleteTemplateUsingDELETE: $e\n");
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

# **getCategoriesUsingGET**
> Page«BreCategoryResource» getCategoriesUsingGET(size, page)

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
    var result = api_instance.getCategoriesUsingGET(size, page);
    print(result);
} catch (e) {
    print("Exception when calling BRERuleEngineCategoriesApi->getCategoriesUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]

### Return type

[**Page«BreCategoryResource»**](Page«BreCategoryResource».md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCategoryUsingGET**
> BreCategoryResource getCategoryUsingGET(name)

Get a single category

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new BRERuleEngineCategoriesApi();
var name = name_example; // String | The category name

try { 
    var result = api_instance.getCategoryUsingGET(name);
    print(result);
} catch (e) {
    print("Exception when calling BRERuleEngineCategoriesApi->getCategoryUsingGET: $e\n");
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

# **getTemplateUsingGET**
> TemplateResource getTemplateUsingGET(id)

Get a single BRE category template

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new BRERuleEngineCategoriesApi();
var id = id_example; // String | The id of the template

try { 
    var result = api_instance.getTemplateUsingGET(id);
    print(result);
} catch (e) {
    print("Exception when calling BRERuleEngineCategoriesApi->getTemplateUsingGET: $e\n");
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

# **getTemplatesUsingGET**
> Page«TemplateResource» getTemplatesUsingGET(size, page, order)

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
    var result = api_instance.getTemplatesUsingGET(size, page, order);
    print(result);
} catch (e) {
    print("Exception when calling BRERuleEngineCategoriesApi->getTemplatesUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **String**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to id:ASC]

### Return type

[**Page«TemplateResource»**](Page«TemplateResource».md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateCategoryUsingPUT**
> updateCategoryUsingPUT(name, category)

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
    api_instance.updateCategoryUsingPUT(name, category);
} catch (e) {
    print("Exception when calling BRERuleEngineCategoriesApi->updateCategoryUsingPUT: $e\n");
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

# **updateTemplateUsingPUT1**
> updateTemplateUsingPUT1(id, template)

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
    api_instance.updateTemplateUsingPUT1(id, template);
} catch (e) {
    print("Exception when calling BRERuleEngineCategoriesApi->updateTemplateUsingPUT1: $e\n");
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

