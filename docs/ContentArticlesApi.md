# swagger.api.ContentArticlesApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://localhost:8080/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createArticleTemplateUsingPOST**](ContentArticlesApi.md#createArticleTemplateUsingPOST) | **POST** /content/articles/templates | Create an article template
[**createArticleUsingPOST**](ContentArticlesApi.md#createArticleUsingPOST) | **POST** /content/articles | Create a new article
[**deleteArticleTemplateUsingDELETE**](ContentArticlesApi.md#deleteArticleTemplateUsingDELETE) | **DELETE** /content/articles/templates/{id} | Delete an article template
[**deleteArticleUsingDELETE**](ContentArticlesApi.md#deleteArticleUsingDELETE) | **DELETE** /content/articles/{id} | Delete an existing article
[**getArticleTemplateUsingGET**](ContentArticlesApi.md#getArticleTemplateUsingGET) | **GET** /content/articles/templates/{id} | Get a single article template
[**getArticleTemplatesUsingGET**](ContentArticlesApi.md#getArticleTemplatesUsingGET) | **GET** /content/articles/templates | List and search article templates
[**getArticleUsingGET**](ContentArticlesApi.md#getArticleUsingGET) | **GET** /content/articles/{id} | Get a single article
[**getArticlesUsingGET**](ContentArticlesApi.md#getArticlesUsingGET) | **GET** /content/articles | List and search articles
[**updateArticleTemplateUsingPUT**](ContentArticlesApi.md#updateArticleTemplateUsingPUT) | **PUT** /content/articles/templates/{id} | Update an article template
[**updateArticleUsingPUT**](ContentArticlesApi.md#updateArticleUsingPUT) | **PUT** /content/articles/{id} | Update an existing article


# **createArticleTemplateUsingPOST**
> TemplateResource createArticleTemplateUsingPOST(articleTemplateResource)

Create an article template

Article Templates define a type of article and the properties they have

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new ContentArticlesApi();
var articleTemplateResource = new TemplateResource(); // TemplateResource | The article template resource object

try { 
    var result = api_instance.createArticleTemplateUsingPOST(articleTemplateResource);
    print(result);
} catch (e) {
    print("Exception when calling ContentArticlesApi->createArticleTemplateUsingPOST: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **articleTemplateResource** | [**TemplateResource**](TemplateResource.md)| The article template resource object | [optional] 

### Return type

[**TemplateResource**](TemplateResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createArticleUsingPOST**
> ArticleResource createArticleUsingPOST(articleResource)

Create a new article

Articles are blobs of text with titles, a category and assets. Formatting and display of the text is in the hands of the front end.

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new ContentArticlesApi();
var articleResource = new ArticleResource(); // ArticleResource | The new article

try { 
    var result = api_instance.createArticleUsingPOST(articleResource);
    print(result);
} catch (e) {
    print("Exception when calling ContentArticlesApi->createArticleUsingPOST: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **articleResource** | [**ArticleResource**](ArticleResource.md)| The new article | [optional] 

### Return type

[**ArticleResource**](ArticleResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteArticleTemplateUsingDELETE**
> deleteArticleTemplateUsingDELETE(id, cascade)

Delete an article template

If cascade = 'detach', it will force delete the template even if it's attached to other objects

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new ContentArticlesApi();
var id = id_example; // String | The id of the template
var cascade = cascade_example; // String | The value needed to delete used templates

try { 
    api_instance.deleteArticleTemplateUsingDELETE(id, cascade);
} catch (e) {
    print("Exception when calling ContentArticlesApi->deleteArticleTemplateUsingDELETE: $e\n");
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

# **deleteArticleUsingDELETE**
> deleteArticleUsingDELETE(id)

Delete an existing article

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new ContentArticlesApi();
var id = id_example; // String | The article id

try { 
    api_instance.deleteArticleUsingDELETE(id);
} catch (e) {
    print("Exception when calling ContentArticlesApi->deleteArticleUsingDELETE: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The article id | 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getArticleTemplateUsingGET**
> TemplateResource getArticleTemplateUsingGET(id)

Get a single article template

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new ContentArticlesApi();
var id = id_example; // String | The id of the template

try { 
    var result = api_instance.getArticleTemplateUsingGET(id);
    print(result);
} catch (e) {
    print("Exception when calling ContentArticlesApi->getArticleTemplateUsingGET: $e\n");
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

# **getArticleTemplatesUsingGET**
> Page«TemplateResource» getArticleTemplatesUsingGET(size, page, order)

List and search article templates

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new ContentArticlesApi();
var size = 56; // int | The number of objects returned per page
var page = 56; // int | The number of the page returned, starting with 1
var order = order_example; // String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]

try { 
    var result = api_instance.getArticleTemplatesUsingGET(size, page, order);
    print(result);
} catch (e) {
    print("Exception when calling ContentArticlesApi->getArticleTemplatesUsingGET: $e\n");
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

# **getArticleUsingGET**
> ArticleResource getArticleUsingGET(id)

Get a single article

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new ContentArticlesApi();
var id = id_example; // String | The article id

try { 
    var result = api_instance.getArticleUsingGET(id);
    print(result);
} catch (e) {
    print("Exception when calling ContentArticlesApi->getArticleUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The article id | 

### Return type

[**ArticleResource**](ArticleResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getArticlesUsingGET**
> Page«ArticleResource» getArticlesUsingGET(filterCategory, filterTagset, filterTitle, size, page, order)

List and search articles

Get a list of articles with optional filtering. Assets will not be filled in on the resources returned. Use 'Get a single article' to retrieve the full resource with assets for a given item as needed.

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new ContentArticlesApi();
var filterCategory = filterCategory_example; // String | Filter for articles from a specific category by id
var filterTagset = filterTagset_example; // String | Filter for articles with specified tags (separated by comma)
var filterTitle = filterTitle_example; // String | Filter for articles whose title contains a string
var size = 56; // int | The number of objects returned per page
var page = 56; // int | The number of the page returned, starting with 1
var order = order_example; // String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]

try { 
    var result = api_instance.getArticlesUsingGET(filterCategory, filterTagset, filterTitle, size, page, order);
    print(result);
} catch (e) {
    print("Exception when calling ContentArticlesApi->getArticlesUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterCategory** | **String**| Filter for articles from a specific category by id | [optional] 
 **filterTagset** | **String**| Filter for articles with specified tags (separated by comma) | [optional] 
 **filterTitle** | **String**| Filter for articles whose title contains a string | [optional] 
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **String**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to id:ASC]

### Return type

[**Page«ArticleResource»**](Page«ArticleResource».md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateArticleTemplateUsingPUT**
> updateArticleTemplateUsingPUT(id, articleTemplateResource)

Update an article template

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new ContentArticlesApi();
var id = id_example; // String | The id of the template
var articleTemplateResource = new TemplateResource(); // TemplateResource | The article template resource object

try { 
    api_instance.updateArticleTemplateUsingPUT(id, articleTemplateResource);
} catch (e) {
    print("Exception when calling ContentArticlesApi->updateArticleTemplateUsingPUT: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the template | 
 **articleTemplateResource** | [**TemplateResource**](TemplateResource.md)| The article template resource object | [optional] 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateArticleUsingPUT**
> updateArticleUsingPUT(id, articleResource)

Update an existing article

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new ContentArticlesApi();
var id = id_example; // String | The article id
var articleResource = new ArticleResource(); // ArticleResource | The article object

try { 
    api_instance.updateArticleUsingPUT(id, articleResource);
} catch (e) {
    print("Exception when calling ContentArticlesApi->updateArticleUsingPUT: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The article id | 
 **articleResource** | [**ArticleResource**](ArticleResource.md)| The article object | [optional] 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

