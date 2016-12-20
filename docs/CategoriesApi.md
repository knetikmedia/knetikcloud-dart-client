# swagger.api.CategoriesApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://localhost:8080/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createCategoryUsingPOST**](CategoriesApi.md#createCategoryUsingPOST) | **POST** /categories | Create a new category
[**createTemplateUsingPOST2**](CategoriesApi.md#createTemplateUsingPOST2) | **POST** /categories/templates | Create a category template
[**deleteCategoryUsingDELETE**](CategoriesApi.md#deleteCategoryUsingDELETE) | **DELETE** /categories/{id} | Delete an existing category
[**deleteTemplateUsingDELETE1**](CategoriesApi.md#deleteTemplateUsingDELETE1) | **DELETE** /categories/templates/{id} | Delete a category template
[**getArticleTemplatesUsingGET1**](CategoriesApi.md#getArticleTemplatesUsingGET1) | **GET** /categories/templates | List and search category templates
[**getCategoriesUsingGET1**](CategoriesApi.md#getCategoriesUsingGET1) | **GET** /categories | List and search categories with optional filters
[**getCategoryUsingGET1**](CategoriesApi.md#getCategoryUsingGET1) | **GET** /categories/{id} | Get a single category
[**getTagsUsingGET**](CategoriesApi.md#getTagsUsingGET) | **GET** /tags | List all trivia tags in the system
[**getTemplateUsingGET1**](CategoriesApi.md#getTemplateUsingGET1) | **GET** /categories/templates/{id} | Get a single category template
[**updateCategoryUsingPUT1**](CategoriesApi.md#updateCategoryUsingPUT1) | **PUT** /categories/{id} | Update an existing category
[**updateTemplateUsingPUT2**](CategoriesApi.md#updateTemplateUsingPUT2) | **PUT** /categories/templates/{id} | Update a category template


# **createCategoryUsingPOST**
> CategoryResource createCategoryUsingPOST(category)

Create a new category

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new CategoriesApi();
var category = new CategoryResource(); // CategoryResource | The category to create

try { 
    var result = api_instance.createCategoryUsingPOST(category);
    print(result);
} catch (e) {
    print("Exception when calling CategoriesApi->createCategoryUsingPOST: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **category** | [**CategoryResource**](CategoryResource.md)| The category to create | [optional] 

### Return type

[**CategoryResource**](CategoryResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createTemplateUsingPOST2**
> TemplateResource createTemplateUsingPOST2(template)

Create a category template

Templates define a type of category and the properties they have

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new CategoriesApi();
var template = new TemplateResource(); // TemplateResource | The template to create

try { 
    var result = api_instance.createTemplateUsingPOST2(template);
    print(result);
} catch (e) {
    print("Exception when calling CategoriesApi->createTemplateUsingPOST2: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **template** | [**TemplateResource**](TemplateResource.md)| The template to create | [optional] 

### Return type

[**TemplateResource**](TemplateResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteCategoryUsingDELETE**
> deleteCategoryUsingDELETE(id)

Delete an existing category

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new CategoriesApi();
var id = id_example; // String | The id of the category to be deleted

try { 
    api_instance.deleteCategoryUsingDELETE(id);
} catch (e) {
    print("Exception when calling CategoriesApi->deleteCategoryUsingDELETE: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the category to be deleted | 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteTemplateUsingDELETE1**
> deleteTemplateUsingDELETE1(id, cascade)

Delete a category template

If cascade = 'detach', it will force delete the template even if it's attached to other objects

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new CategoriesApi();
var id = id_example; // String | The id of the template
var cascade = cascade_example; // String | The value needed to delete used templates

try { 
    api_instance.deleteTemplateUsingDELETE1(id, cascade);
} catch (e) {
    print("Exception when calling CategoriesApi->deleteTemplateUsingDELETE1: $e\n");
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

# **getArticleTemplatesUsingGET1**
> Page«TemplateResource» getArticleTemplatesUsingGET1(size, page, order)

List and search category templates

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new CategoriesApi();
var size = 56; // int | The number of objects returned per page
var page = 56; // int | The number of the page returned, starting with 1
var order = order_example; // String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]

try { 
    var result = api_instance.getArticleTemplatesUsingGET1(size, page, order);
    print(result);
} catch (e) {
    print("Exception when calling CategoriesApi->getArticleTemplatesUsingGET1: $e\n");
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
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCategoriesUsingGET1**
> Page«CategoryResource» getCategoriesUsingGET1(filterSearch, filterActive, size, page, order)

List and search categories with optional filters

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new CategoriesApi();
var filterSearch = filterSearch_example; // String | Filter for categories whose names begin with provided string
var filterActive = true; // bool | Filter for categories that are specifically active or inactive
var size = 56; // int | The number of objects returned per page
var page = 56; // int | The number of the page returned, starting with 1
var order = order_example; // String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]

try { 
    var result = api_instance.getCategoriesUsingGET1(filterSearch, filterActive, size, page, order);
    print(result);
} catch (e) {
    print("Exception when calling CategoriesApi->getCategoriesUsingGET1: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterSearch** | **String**| Filter for categories whose names begin with provided string | [optional] 
 **filterActive** | **bool**| Filter for categories that are specifically active or inactive | [optional] 
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **String**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to id:ASC]

### Return type

[**Page«CategoryResource»**](Page«CategoryResource».md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCategoryUsingGET1**
> CategoryResource getCategoryUsingGET1(id)

Get a single category

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new CategoriesApi();
var id = id_example; // String | The id of the category to retrieve

try { 
    var result = api_instance.getCategoryUsingGET1(id);
    print(result);
} catch (e) {
    print("Exception when calling CategoriesApi->getCategoryUsingGET1: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the category to retrieve | 

### Return type

[**CategoryResource**](CategoryResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTagsUsingGET**
> Page«string» getTagsUsingGET(size, page)

List all trivia tags in the system

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new CategoriesApi();
var size = 56; // int | The number of objects returned per page
var page = 56; // int | The number of the page returned, starting with 1

try { 
    var result = api_instance.getTagsUsingGET(size, page);
    print(result);
} catch (e) {
    print("Exception when calling CategoriesApi->getTagsUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]

### Return type

[**Page«string»**](Page«string».md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTemplateUsingGET1**
> TemplateResource getTemplateUsingGET1(id)

Get a single category template

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new CategoriesApi();
var id = id_example; // String | The id of the template

try { 
    var result = api_instance.getTemplateUsingGET1(id);
    print(result);
} catch (e) {
    print("Exception when calling CategoriesApi->getTemplateUsingGET1: $e\n");
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
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateCategoryUsingPUT1**
> updateCategoryUsingPUT1(id, category)

Update an existing category

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new CategoriesApi();
var id = id_example; // String | The id of the category
var category = new CategoryResource(); // CategoryResource | The category to update

try { 
    api_instance.updateCategoryUsingPUT1(id, category);
} catch (e) {
    print("Exception when calling CategoriesApi->updateCategoryUsingPUT1: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the category | 
 **category** | [**CategoryResource**](CategoryResource.md)| The category to update | [optional] 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateTemplateUsingPUT2**
> updateTemplateUsingPUT2(id, template)

Update a category template

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new CategoriesApi();
var id = id_example; // String | The id of the template
var template = new TemplateResource(); // TemplateResource | The updated template information

try { 
    api_instance.updateTemplateUsingPUT2(id, template);
} catch (e) {
    print("Exception when calling CategoriesApi->updateTemplateUsingPUT2: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the template | 
 **template** | [**TemplateResource**](TemplateResource.md)| The updated template information | [optional] 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

