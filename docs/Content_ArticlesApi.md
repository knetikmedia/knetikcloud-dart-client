# swagger.api.Content_ArticlesApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://jsapi-integration.us-east-1.elasticbeanstalk.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createArticle**](Content_ArticlesApi.md#createArticle) | **POST** /content/articles | Create a new article
[**createArticleTemplate**](Content_ArticlesApi.md#createArticleTemplate) | **POST** /content/articles/templates | Create an article template
[**createTemplate**](Content_ArticlesApi.md#createTemplate) | **POST** /templates/{type_hint} | Create a template
[**deleteArticle**](Content_ArticlesApi.md#deleteArticle) | **DELETE** /content/articles/{id} | Delete an existing article
[**deleteArticleTemplate**](Content_ArticlesApi.md#deleteArticleTemplate) | **DELETE** /content/articles/templates/{id} | Delete an article template
[**deleteTemplate**](Content_ArticlesApi.md#deleteTemplate) | **DELETE** /templates/{type_hint}/{id} | Delete a template
[**getArticle**](Content_ArticlesApi.md#getArticle) | **GET** /content/articles/{id} | Get a single article
[**getArticleTemplate**](Content_ArticlesApi.md#getArticleTemplate) | **GET** /content/articles/templates/{id} | Get a single article template
[**getArticleTemplates**](Content_ArticlesApi.md#getArticleTemplates) | **GET** /content/articles/templates | List and search article templates
[**getArticles**](Content_ArticlesApi.md#getArticles) | **GET** /content/articles | List and search articles
[**getTemplate**](Content_ArticlesApi.md#getTemplate) | **GET** /templates/{type_hint}/{id} | Get a template
[**getTemplates**](Content_ArticlesApi.md#getTemplates) | **GET** /templates/{type_hint} | List and search templates
[**updateArticle**](Content_ArticlesApi.md#updateArticle) | **PUT** /content/articles/{id} | Update an existing article
[**updateArticleTemplate**](Content_ArticlesApi.md#updateArticleTemplate) | **PUT** /content/articles/templates/{id} | Update an article template
[**updateTemplate**](Content_ArticlesApi.md#updateTemplate) | **PUT** /templates/{type_hint}/{id} | Update a template
[**validate**](Content_ArticlesApi.md#validate) | **POST** /templates/{type_hint}/validate | Validate a templated resource


# **createArticle**
> ArticleResource createArticle(articleResource)

Create a new article

Articles are blobs of text with titles, a category and assets. Formatting and display of the text is in the hands of the front end.<br><br><b>Permissions:</b> ARTICLES_ADMIN

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new Content_ArticlesApi();
var articleResource = new ArticleResource(); // ArticleResource | The new article

try { 
    var result = api_instance.createArticle(articleResource);
    print(result);
} catch (e) {
    print("Exception when calling Content_ArticlesApi->createArticle: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **articleResource** | [**ArticleResource**](ArticleResource.md)| The new article | [optional] 

### Return type

[**ArticleResource**](ArticleResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createArticleTemplate**
> TemplateResource createArticleTemplate(articleTemplateResource)

Create an article template

Article Templates define a type of article and the properties they have. <br><br><b>Permissions Needed:</b> TEMPLATE_ADMIN

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new Content_ArticlesApi();
var articleTemplateResource = new TemplateResource(); // TemplateResource | The article template resource object

try { 
    var result = api_instance.createArticleTemplate(articleTemplateResource);
    print(result);
} catch (e) {
    print("Exception when calling Content_ArticlesApi->createArticleTemplate: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **articleTemplateResource** | [**TemplateResource**](TemplateResource.md)| The article template resource object | [optional] 

### Return type

[**TemplateResource**](TemplateResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createTemplate**
> TemplateResource createTemplate(typeHint, template)

Create a template

<b>Permissions Needed:</b> TEMPLATES_ADMIN

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new Content_ArticlesApi();
var typeHint = typeHint_example; // String | The type for the resource this template applies to
var template = new TemplateResource(); // TemplateResource | The template

try { 
    var result = api_instance.createTemplate(typeHint, template);
    print(result);
} catch (e) {
    print("Exception when calling Content_ArticlesApi->createTemplate: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **typeHint** | **String**| The type for the resource this template applies to | 
 **template** | [**TemplateResource**](TemplateResource.md)| The template | [optional] 

### Return type

[**TemplateResource**](TemplateResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteArticle**
> deleteArticle(id)

Delete an existing article

<b>Permissions Needed:</b> ARTICLES_ADMIN

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new Content_ArticlesApi();
var id = id_example; // String | The article id

try { 
    api_instance.deleteArticle(id);
} catch (e) {
    print("Exception when calling Content_ArticlesApi->deleteArticle: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The article id | 

### Return type

void (empty response body)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteArticleTemplate**
> deleteArticleTemplate(id, cascade)

Delete an article template

If cascade = 'detach', it will force delete the template even if it's attached to other objects. <br><br><b>Permissions Needed:</b> TEMPLATE_ADMIN

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new Content_ArticlesApi();
var id = id_example; // String | The id of the template
var cascade = cascade_example; // String | The value needed to delete used templates

try { 
    api_instance.deleteArticleTemplate(id, cascade);
} catch (e) {
    print("Exception when calling Content_ArticlesApi->deleteArticleTemplate: $e\n");
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

# **deleteTemplate**
> deleteTemplate(typeHint, id, cascade)

Delete a template

<b>Permissions Needed:</b> TEMPLATES_ADMIN

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new Content_ArticlesApi();
var typeHint = typeHint_example; // String | The type for the resource this template applies to
var id = id_example; // String | The id of the template
var cascade = new String(); // String | How to cascade the delete

try { 
    api_instance.deleteTemplate(typeHint, id, cascade);
} catch (e) {
    print("Exception when calling Content_ArticlesApi->deleteTemplate: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **typeHint** | **String**| The type for the resource this template applies to | 
 **id** | **String**| The id of the template | 
 **cascade** | **String**| How to cascade the delete | [optional] 

### Return type

void (empty response body)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getArticle**
> ArticleResource getArticle(id)

Get a single article

<b>Permissions Needed:</b> ANY

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new Content_ArticlesApi();
var id = id_example; // String | The article id

try { 
    var result = api_instance.getArticle(id);
    print(result);
} catch (e) {
    print("Exception when calling Content_ArticlesApi->getArticle: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The article id | 

### Return type

[**ArticleResource**](ArticleResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getArticleTemplate**
> TemplateResource getArticleTemplate(id)

Get a single article template

<b>Permissions Needed:</b> TEMPLATE_ADMIN or ARTICLES_ADMIN

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new Content_ArticlesApi();
var id = id_example; // String | The id of the template

try { 
    var result = api_instance.getArticleTemplate(id);
    print(result);
} catch (e) {
    print("Exception when calling Content_ArticlesApi->getArticleTemplate: $e\n");
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

# **getArticleTemplates**
> PageResource«TemplateResource» getArticleTemplates(size, page, order)

List and search article templates

<b>Permissions Needed:</b> TEMPLATE_ADMIN or ARTICLES_ADMIN

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new Content_ArticlesApi();
var size = 56; // int | The number of objects returned per page
var page = 56; // int | The number of the page returned, starting with 1
var order = order_example; // String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]

try { 
    var result = api_instance.getArticleTemplates(size, page, order);
    print(result);
} catch (e) {
    print("Exception when calling Content_ArticlesApi->getArticleTemplates: $e\n");
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

# **getArticles**
> PageResource«ArticleResource» getArticles(filterActiveOnly, filterCategory, filterTagset, filterTagIntersection, filterTagExclusion, filterTitle, size, page, order)

List and search articles

Get a list of articles with optional filtering. Assets will not be filled in on the resources returned. Use 'Get a single article' to retrieve the full resource with assets for a given item as needed. <br><br><b>Permissions Needed:</b> ANY

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new Content_ArticlesApi();
var filterActiveOnly = true; // bool | Filter for articles that are active (true) or inactive (false)
var filterCategory = filterCategory_example; // String | Filter for articles from a specific category by id
var filterTagset = filterTagset_example; // String | Filter for articles with at least one of a specified set of tags (separated by comma)
var filterTagIntersection = filterTagIntersection_example; // String | Filter for articles with all of a specified set of tags (separated by comma)
var filterTagExclusion = filterTagExclusion_example; // String | Filter for articles with none of a specified set of tags (separated by comma)
var filterTitle = filterTitle_example; // String | Filter for articles whose title contains a string
var size = 56; // int | The number of objects returned per page
var page = 56; // int | The number of the page returned, starting with 1
var order = order_example; // String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]

try { 
    var result = api_instance.getArticles(filterActiveOnly, filterCategory, filterTagset, filterTagIntersection, filterTagExclusion, filterTitle, size, page, order);
    print(result);
} catch (e) {
    print("Exception when calling Content_ArticlesApi->getArticles: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterActiveOnly** | **bool**| Filter for articles that are active (true) or inactive (false) | [optional] 
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

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTemplate**
> TemplateResource getTemplate(typeHint, id)

Get a template

<b>Permissions Needed:</b> TEMPLATES_ADMIN

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new Content_ArticlesApi();
var typeHint = typeHint_example; // String | The type for the resource this template applies to
var id = id_example; // String | The id of the template

try { 
    var result = api_instance.getTemplate(typeHint, id);
    print(result);
} catch (e) {
    print("Exception when calling Content_ArticlesApi->getTemplate: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **typeHint** | **String**| The type for the resource this template applies to | 
 **id** | **String**| The id of the template | 

### Return type

[**TemplateResource**](TemplateResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTemplates**
> PageResource«TemplateResource» getTemplates(typeHint, size, page, order)

List and search templates

<b>Permissions Needed:</b> TEMPLATES_ADMIN

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new Content_ArticlesApi();
var typeHint = typeHint_example; // String | The type for the resource this template applies to
var size = 56; // int | The number of objects returned per page
var page = 56; // int | The number of the page returned, starting with 1
var order = order_example; // String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]

try { 
    var result = api_instance.getTemplates(typeHint, size, page, order);
    print(result);
} catch (e) {
    print("Exception when calling Content_ArticlesApi->getTemplates: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **typeHint** | **String**| The type for the resource this template applies to | 
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

# **updateArticle**
> ArticleResource updateArticle(id, articleResource)

Update an existing article

<b>Permissions Needed:</b> ARTICLES_ADMIN

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new Content_ArticlesApi();
var id = id_example; // String | The article id
var articleResource = new ArticleResource(); // ArticleResource | The article object

try { 
    var result = api_instance.updateArticle(id, articleResource);
    print(result);
} catch (e) {
    print("Exception when calling Content_ArticlesApi->updateArticle: $e\n");
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

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateArticleTemplate**
> TemplateResource updateArticleTemplate(id, articleTemplateResource)

Update an article template

<b>Permissions Needed:</b> TEMPLATE_ADMIN

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new Content_ArticlesApi();
var id = id_example; // String | The id of the template
var articleTemplateResource = new TemplateResource(); // TemplateResource | The article template resource object

try { 
    var result = api_instance.updateArticleTemplate(id, articleTemplateResource);
    print(result);
} catch (e) {
    print("Exception when calling Content_ArticlesApi->updateArticleTemplate: $e\n");
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

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateTemplate**
> TemplateResource updateTemplate(typeHint, id, template)

Update a template

<b>Permissions Needed:</b> TEMPLATES_ADMIN

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new Content_ArticlesApi();
var typeHint = typeHint_example; // String | The type for the resource this template applies to
var id = id_example; // String | The id of the template
var template = new TemplateResource(); // TemplateResource | The template

try { 
    var result = api_instance.updateTemplate(typeHint, id, template);
    print(result);
} catch (e) {
    print("Exception when calling Content_ArticlesApi->updateTemplate: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **typeHint** | **String**| The type for the resource this template applies to | 
 **id** | **String**| The id of the template | 
 **template** | [**TemplateResource**](TemplateResource.md)| The template | [optional] 

### Return type

[**TemplateResource**](TemplateResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **validate**
> validate(typeHint, resource)

Validate a templated resource

Error code thrown if invalid.<br><br><b>Permissions Needed:</b> TEMPLATES_ADMIN

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new Content_ArticlesApi();
var typeHint = typeHint_example; // String | The type for the resource this template applies to
var resource = new BasicTemplatedResource(); // BasicTemplatedResource | The resource to validate

try { 
    api_instance.validate(typeHint, resource);
} catch (e) {
    print("Exception when calling Content_ArticlesApi->validate: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **typeHint** | **String**| The type for the resource this template applies to | 
 **resource** | [**BasicTemplatedResource**](BasicTemplatedResource.md)| The resource to validate | [optional] 

### Return type

void (empty response body)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

