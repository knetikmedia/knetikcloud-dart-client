# swagger.api.CategoriesApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://jsapi-integration.us-east-1.elasticbeanstalk.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createCategory**](CategoriesApi.md#createCategory) | **POST** /categories | Create a new category
[**createCategoryTemplate**](CategoriesApi.md#createCategoryTemplate) | **POST** /categories/templates | Create a category template
[**deleteCategory**](CategoriesApi.md#deleteCategory) | **DELETE** /categories/{id} | Delete an existing category
[**deleteCategoryTemplate**](CategoriesApi.md#deleteCategoryTemplate) | **DELETE** /categories/templates/{id} | Delete a category template
[**getCategories**](CategoriesApi.md#getCategories) | **GET** /categories | List and search categories with optional filters
[**getCategory**](CategoriesApi.md#getCategory) | **GET** /categories/{id} | Get a single category
[**getCategoryTemplate**](CategoriesApi.md#getCategoryTemplate) | **GET** /categories/templates/{id} | Get a single category template
[**getCategoryTemplates**](CategoriesApi.md#getCategoryTemplates) | **GET** /categories/templates | List and search category templates
[**getTags**](CategoriesApi.md#getTags) | **GET** /tags | List all trivia tags in the system
[**updateCategory**](CategoriesApi.md#updateCategory) | **PUT** /categories/{id} | Update an existing category
[**updateCategoryTemplate**](CategoriesApi.md#updateCategoryTemplate) | **PUT** /categories/templates/{id} | Update a category template


# **createCategory**
> CategoryResource createCategory(category)

Create a new category

<b>Permissions Needed:</b> CATEGORIES_ADMIN

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new CategoriesApi();
var category = new CategoryResource(); // CategoryResource | The category to create

try { 
    var result = api_instance.createCategory(category);
    print(result);
} catch (e) {
    print("Exception when calling CategoriesApi->createCategory: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **category** | [**CategoryResource**](CategoryResource.md)| The category to create | [optional] 

### Return type

[**CategoryResource**](CategoryResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createCategoryTemplate**
> TemplateResource createCategoryTemplate(template)

Create a category template

Templates define a type of category and the properties they have. <br><br><b>Permissions Needed:</b> TEMPLATE_ADMIN

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new CategoriesApi();
var template = new TemplateResource(); // TemplateResource | The template to create

try { 
    var result = api_instance.createCategoryTemplate(template);
    print(result);
} catch (e) {
    print("Exception when calling CategoriesApi->createCategoryTemplate: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **template** | [**TemplateResource**](TemplateResource.md)| The template to create | [optional] 

### Return type

[**TemplateResource**](TemplateResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteCategory**
> deleteCategory(id)

Delete an existing category

<b>Permissions Needed:</b> CATEGORIES_ADMIN

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new CategoriesApi();
var id = id_example; // String | The id of the category to be deleted

try { 
    api_instance.deleteCategory(id);
} catch (e) {
    print("Exception when calling CategoriesApi->deleteCategory: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the category to be deleted | 

### Return type

void (empty response body)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteCategoryTemplate**
> deleteCategoryTemplate(id, cascade)

Delete a category template

If cascade = 'detach', it will force delete the template even if it's attached to other objects. <br><br><b>Permissions Needed:</b> TEMPLATE_ADMIN

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new CategoriesApi();
var id = id_example; // String | The id of the template
var cascade = cascade_example; // String | The value needed to delete used templates

try { 
    api_instance.deleteCategoryTemplate(id, cascade);
} catch (e) {
    print("Exception when calling CategoriesApi->deleteCategoryTemplate: $e\n");
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

# **getCategories**
> PageResource«CategoryResource» getCategories(filterSearch, filterActive, size, page, order)

List and search categories with optional filters

<b>Permissions Needed:</b> ANY

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new CategoriesApi();
var filterSearch = filterSearch_example; // String | Filter for categories whose names begin with provided string
var filterActive = true; // bool | Filter for categories that are specifically active or inactive
var size = 56; // int | The number of objects returned per page
var page = 56; // int | The number of the page returned, starting with 1
var order = order_example; // String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]

try { 
    var result = api_instance.getCategories(filterSearch, filterActive, size, page, order);
    print(result);
} catch (e) {
    print("Exception when calling CategoriesApi->getCategories: $e\n");
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

[**PageResource«CategoryResource»**](PageResource«CategoryResource».md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCategory**
> CategoryResource getCategory(id)

Get a single category

<b>Permissions Needed:</b> ANY

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new CategoriesApi();
var id = id_example; // String | The id of the category to retrieve

try { 
    var result = api_instance.getCategory(id);
    print(result);
} catch (e) {
    print("Exception when calling CategoriesApi->getCategory: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the category to retrieve | 

### Return type

[**CategoryResource**](CategoryResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCategoryTemplate**
> TemplateResource getCategoryTemplate(id)

Get a single category template

<b>Permissions Needed:</b> TEMPLATE_ADMIN or CATEGORIES_ADMIN

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new CategoriesApi();
var id = id_example; // String | The id of the template

try { 
    var result = api_instance.getCategoryTemplate(id);
    print(result);
} catch (e) {
    print("Exception when calling CategoriesApi->getCategoryTemplate: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the template | 

### Return type

[**TemplateResource**](TemplateResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCategoryTemplates**
> PageResource«TemplateResource» getCategoryTemplates(size, page, order)

List and search category templates

<b>Permissions Needed:</b> TEMPLATE_ADMIN or CATEGORIES_ADMIN

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new CategoriesApi();
var size = 56; // int | The number of objects returned per page
var page = 56; // int | The number of the page returned, starting with 1
var order = order_example; // String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]

try { 
    var result = api_instance.getCategoryTemplates(size, page, order);
    print(result);
} catch (e) {
    print("Exception when calling CategoriesApi->getCategoryTemplates: $e\n");
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

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTags**
> PageResource«string» getTags(size, page)

List all trivia tags in the system

<b>Permissions Needed:</b> ANY

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new CategoriesApi();
var size = 56; // int | The number of objects returned per page
var page = 56; // int | The number of the page returned, starting with 1

try { 
    var result = api_instance.getTags(size, page);
    print(result);
} catch (e) {
    print("Exception when calling CategoriesApi->getTags: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]

### Return type

[**PageResource«string»**](PageResource«string».md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateCategory**
> CategoryResource updateCategory(id, category)

Update an existing category

<b>Permissions Needed:</b> CATEGORIES_ADMIN

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new CategoriesApi();
var id = id_example; // String | The id of the category
var category = new CategoryResource(); // CategoryResource | The category to update

try { 
    var result = api_instance.updateCategory(id, category);
    print(result);
} catch (e) {
    print("Exception when calling CategoriesApi->updateCategory: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the category | 
 **category** | [**CategoryResource**](CategoryResource.md)| The category to update | [optional] 

### Return type

[**CategoryResource**](CategoryResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateCategoryTemplate**
> TemplateResource updateCategoryTemplate(id, template)

Update a category template

<b>Permissions Needed:</b> TEMPLATE_ADMIN

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new CategoriesApi();
var id = id_example; // String | The id of the template
var template = new TemplateResource(); // TemplateResource | The updated template information

try { 
    var result = api_instance.updateCategoryTemplate(id, template);
    print(result);
} catch (e) {
    print("Exception when calling CategoriesApi->updateCategoryTemplate: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the template | 
 **template** | [**TemplateResource**](TemplateResource.md)| The updated template information | [optional] 

### Return type

[**TemplateResource**](TemplateResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

