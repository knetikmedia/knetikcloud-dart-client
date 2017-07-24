# swagger.api.ContentArticlesApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://sandbox.knetikcloud.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createArticle**](ContentArticlesApi.md#createArticle) | **POST** /content/articles | Create a new article
[**createArticleTemplate**](ContentArticlesApi.md#createArticleTemplate) | **POST** /content/articles/templates | Create an article template
[**deleteArticle**](ContentArticlesApi.md#deleteArticle) | **DELETE** /content/articles/{id} | Delete an existing article
[**deleteArticleTemplate**](ContentArticlesApi.md#deleteArticleTemplate) | **DELETE** /content/articles/templates/{id} | Delete an article template
[**getArticle**](ContentArticlesApi.md#getArticle) | **GET** /content/articles/{id} | Get a single article
[**getArticleTemplate**](ContentArticlesApi.md#getArticleTemplate) | **GET** /content/articles/templates/{id} | Get a single article template
[**getArticleTemplates**](ContentArticlesApi.md#getArticleTemplates) | **GET** /content/articles/templates | List and search article templates
[**getArticles**](ContentArticlesApi.md#getArticles) | **GET** /content/articles | List and search articles
[**updateArticle**](ContentArticlesApi.md#updateArticle) | **PUT** /content/articles/{id} | Update an existing article
[**updateArticleTemplate**](ContentArticlesApi.md#updateArticleTemplate) | **PUT** /content/articles/templates/{id} | Update an article template


# **createArticle**
> ArticleResource createArticle(articleResource)

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
    var result = api_instance.createArticle(articleResource);
    print(result);
} catch (e) {
    print("Exception when calling ContentArticlesApi->createArticle: $e\n");
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

# **createArticleTemplate**
> TemplateResource createArticleTemplate(articleTemplateResource)

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
    var result = api_instance.createArticleTemplate(articleTemplateResource);
    print(result);
} catch (e) {
    print("Exception when calling ContentArticlesApi->createArticleTemplate: $e\n");
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

# **deleteArticle**
> deleteArticle(id)

Delete an existing article

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new ContentArticlesApi();
var id = id_example; // String | The article id

try { 
    api_instance.deleteArticle(id);
} catch (e) {
    print("Exception when calling ContentArticlesApi->deleteArticle: $e\n");
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

# **deleteArticleTemplate**
> deleteArticleTemplate(id, cascade)

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
    api_instance.deleteArticleTemplate(id, cascade);
} catch (e) {
    print("Exception when calling ContentArticlesApi->deleteArticleTemplate: $e\n");
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

# **getArticle**
> ArticleResource getArticle(id)

Get a single article

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new ContentArticlesApi();
var id = id_example; // String | The article id

try { 
    var result = api_instance.getArticle(id);
    print(result);
} catch (e) {
    print("Exception when calling ContentArticlesApi->getArticle: $e\n");
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

# **getArticleTemplate**
> TemplateResource getArticleTemplate(id)

Get a single article template

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new ContentArticlesApi();
var id = id_example; // String | The id of the template

try { 
    var result = api_instance.getArticleTemplate(id);
    print(result);
} catch (e) {
    print("Exception when calling ContentArticlesApi->getArticleTemplate: $e\n");
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

# **getArticleTemplates**
> PageResource«TemplateResource» getArticleTemplates(size, page, order)

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
    var result = api_instance.getArticleTemplates(size, page, order);
    print(result);
} catch (e) {
    print("Exception when calling ContentArticlesApi->getArticleTemplates: $e\n");
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

# **getArticles**
> PageResource«ArticleResource» getArticles(filterCategory, filterTagset, filterTagIntersection, filterTagExclusion, filterTitle, size, page, order)

List and search articles

Get a list of articles with optional filtering. Assets will not be filled in on the resources returned. Use 'Get a single article' to retrieve the full resource with assets for a given item as needed.

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new ContentArticlesApi();
var filterCategory = filterCategory_example; // String | Filter for articles from a specific category by id
var filterTagset = filterTagset_example; // String | Filter for articles with at least one of a specified set of tags (separated by comma)
var filterTagIntersection = filterTagIntersection_example; // String | Filter for articles with all of a specified set of tags (separated by comma)
var filterTagExclusion = filterTagExclusion_example; // String | Filter for articles with none of a specified set of tags (separated by comma)
var filterTitle = filterTitle_example; // String | Filter for articles whose title contains a string
var size = 56; // int | The number of objects returned per page
var page = 56; // int | The number of the page returned, starting with 1
var order = order_example; // String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]

try { 
    var result = api_instance.getArticles(filterCategory, filterTagset, filterTagIntersection, filterTagExclusion, filterTitle, size, page, order);
    print(result);
} catch (e) {
    print("Exception when calling ContentArticlesApi->getArticles: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterCategory** | **String**| Filter for articles from a specific category by id | [optional] 
 **filterTagset** | **String**| Filter for articles with at least one of a specified set of tags (separated by comma) | [optional] 
 **filterTagIntersection** | **String**| Filter for articles with all of a specified set of tags (separated by comma) | [optional] 
 **filterTagExclusion** | **String**| Filter for articles with none of a specified set of tags (separated by comma) | [optional] 
 **filterTitle** | **String**| Filter for articles whose title contains a string | [optional] 
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **String**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to id:ASC]

### Return type

[**PageResource«ArticleResource»**](PageResource«ArticleResource».md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateArticle**
> ArticleResource updateArticle(id, articleResource)

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
    var result = api_instance.updateArticle(id, articleResource);
    print(result);
} catch (e) {
    print("Exception when calling ContentArticlesApi->updateArticle: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The article id | 
 **articleResource** | [**ArticleResource**](ArticleResource.md)| The article object | [optional] 

### Return type

[**ArticleResource**](ArticleResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateArticleTemplate**
> TemplateResource updateArticleTemplate(id, articleTemplateResource)

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
    var result = api_instance.updateArticleTemplate(id, articleTemplateResource);
    print(result);
} catch (e) {
    print("Exception when calling ContentArticlesApi->updateArticleTemplate: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the template | 
 **articleTemplateResource** | [**TemplateResource**](TemplateResource.md)| The article template resource object | [optional] 

### Return type

[**TemplateResource**](TemplateResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

