# swagger.api.SearchApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://jsapi-integration.us-east-1.elasticbeanstalk.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**searchCountGET**](SearchApi.md#searchCountGET) | **GET** /search/count/{type} | Count matches with no template
[**searchCountPOST**](SearchApi.md#searchCountPOST) | **POST** /search/count/{type} | Count matches with no template
[**searchCountWithTemplateGET**](SearchApi.md#searchCountWithTemplateGET) | **GET** /search/count/{type}/{template} | Count matches with a template
[**searchCountWithTemplatePOST**](SearchApi.md#searchCountWithTemplatePOST) | **POST** /search/count/{type}/{template} | Count matches with a template
[**searchDocumentGET**](SearchApi.md#searchDocumentGET) | **GET** /search/documents/{type}/{id} | Get document with no template
[**searchDocumentWithTemplateGET**](SearchApi.md#searchDocumentWithTemplateGET) | **GET** /search/documents/{type}/{template}/{id} | Get document with a template
[**searchExplainGET**](SearchApi.md#searchExplainGET) | **GET** /search/explain/{type}/{id} | Explain matches with no template
[**searchExplainPOST**](SearchApi.md#searchExplainPOST) | **POST** /search/explain/{type}/{id} | Explain matches with no template
[**searchExplainWithTemplateGET**](SearchApi.md#searchExplainWithTemplateGET) | **GET** /search/explain/{type}/{template}/{id} | Explain matches with a template
[**searchExplainWithTemplatePOST**](SearchApi.md#searchExplainWithTemplatePOST) | **POST** /search/explain/{type}/{template}/{id} | Explain matches with a template
[**searchIndex**](SearchApi.md#searchIndex) | **POST** /search/index/{type} | Search an index with no template
[**searchIndexGET**](SearchApi.md#searchIndexGET) | **GET** /search/index/{type} | Search an index with no template
[**searchIndexWithTemplateGET**](SearchApi.md#searchIndexWithTemplateGET) | **GET** /search/index/{type}/{template} | Search an index with a template
[**searchIndexWithTemplatePOST**](SearchApi.md#searchIndexWithTemplatePOST) | **POST** /search/index/{type}/{template} | Search an index with a template
[**searchIndicesGET**](SearchApi.md#searchIndicesGET) | **GET** /search/indices | Get indices
[**searchMappingsGET**](SearchApi.md#searchMappingsGET) | **GET** /search/mappings/{type} | Get mapping with no template
[**searchMappingsWithTemplateGET**](SearchApi.md#searchMappingsWithTemplateGET) | **GET** /search/mappings/{type}/{template} | Get mapping with a template
[**searchValidateGET**](SearchApi.md#searchValidateGET) | **GET** /search/validate/{type} | Validate matches with no template
[**searchValidatePOST**](SearchApi.md#searchValidatePOST) | **POST** /search/validate/{type} | Validate matches with no template
[**searchValidateWithTemplateGET**](SearchApi.md#searchValidateWithTemplateGET) | **GET** /search/validate/{type}/{template} | Validate matches with a template
[**searchValidateWithTemplatePOST**](SearchApi.md#searchValidateWithTemplatePOST) | **POST** /search/validate/{type}/{template} | Validate matches with a template


# **searchCountGET**
> Object searchCountGET(type)

Count matches with no template

This is a 1 to 1 mapping of a ElasticSearch call to _count.  Further information can be found at their <a href='https://www.elastic.co/guide/en/elasticsearch/reference/current/search-count.html'>API guide</a>. <br><br><b>Permissions Needed:</b> SEARCH_ADMIN

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new SearchApi();
var type = type_example; // String | The index type

try { 
    var result = api_instance.searchCountGET(type);
    print(result);
} catch (e) {
    print("Exception when calling SearchApi->searchCountGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **type** | **String**| The index type | 

### Return type

[**Object**](Object.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchCountPOST**
> Object searchCountPOST(type, query)

Count matches with no template

This is a 1 to 1 mapping of a ElasticSearch call to _count.  Further information can be found at their <a href='https://www.elastic.co/guide/en/elasticsearch/reference/current/search-count.html'>API guide</a>. <br><br><b>Permissions Needed:</b> SEARCH_ADMIN

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new SearchApi();
var type = type_example; // String | The index type
var query = new Object(); // Object | The query to be used for the search

try { 
    var result = api_instance.searchCountPOST(type, query);
    print(result);
} catch (e) {
    print("Exception when calling SearchApi->searchCountPOST: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **type** | **String**| The index type | 
 **query** | [**Object**](Object.md)| The query to be used for the search | [optional] 

### Return type

[**Object**](Object.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchCountWithTemplateGET**
> Object searchCountWithTemplateGET(type, template)

Count matches with a template

This is a 1 to 1 mapping of a ElasticSearch call to _count.  Further information can be found at their <a href='https://www.elastic.co/guide/en/elasticsearch/reference/current/search-count.html'>API guide</a>. <br><br><b>Permissions Needed:</b> SEARCH_ADMIN

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new SearchApi();
var type = type_example; // String | The index type
var template = template_example; // String | The index template

try { 
    var result = api_instance.searchCountWithTemplateGET(type, template);
    print(result);
} catch (e) {
    print("Exception when calling SearchApi->searchCountWithTemplateGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **type** | **String**| The index type | 
 **template** | **String**| The index template | 

### Return type

[**Object**](Object.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchCountWithTemplatePOST**
> Object searchCountWithTemplatePOST(type, template, query)

Count matches with a template

This is a 1 to 1 mapping of a ElasticSearch call to _count.  Further information can be found at their <a href='https://www.elastic.co/guide/en/elasticsearch/reference/current/search-count.html'>API guide</a>. <br><br><b>Permissions Needed:</b> SEARCH_ADMIN

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new SearchApi();
var type = type_example; // String | The index type
var template = template_example; // String | The index template
var query = new Object(); // Object | The query to be used for the search

try { 
    var result = api_instance.searchCountWithTemplatePOST(type, template, query);
    print(result);
} catch (e) {
    print("Exception when calling SearchApi->searchCountWithTemplatePOST: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **type** | **String**| The index type | 
 **template** | **String**| The index template | 
 **query** | [**Object**](Object.md)| The query to be used for the search | [optional] 

### Return type

[**Object**](Object.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchDocumentGET**
> Object searchDocumentGET(type, id)

Get document with no template

This is a 1 to 1 mapping of a ElasticSearch call.  Further information can be found at their <a href='https://www.elastic.co/guide/en/elasticsearch/reference/current/search-count.html'>API guide</a>. <br><br><b>Permissions Needed:</b> SEARCH_ADMIN

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new SearchApi();
var type = type_example; // String | The index type
var id = id_example; // String | The index id

try { 
    var result = api_instance.searchDocumentGET(type, id);
    print(result);
} catch (e) {
    print("Exception when calling SearchApi->searchDocumentGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **type** | **String**| The index type | 
 **id** | **String**| The index id | 

### Return type

[**Object**](Object.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchDocumentWithTemplateGET**
> Object searchDocumentWithTemplateGET(type, id, template)

Get document with a template

This is a 1 to 1 mapping of a ElasticSearch call.  Further information can be found at their <a href='https://www.elastic.co/guide/en/elasticsearch/reference/current/search-count.html'>API guide</a>. <br><br><b>Permissions Needed:</b> SEARCH_ADMIN

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new SearchApi();
var type = type_example; // String | The index type
var id = id_example; // String | The index id
var template = template_example; // String | The index template

try { 
    var result = api_instance.searchDocumentWithTemplateGET(type, id, template);
    print(result);
} catch (e) {
    print("Exception when calling SearchApi->searchDocumentWithTemplateGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **type** | **String**| The index type | 
 **id** | **String**| The index id | 
 **template** | **String**| The index template | 

### Return type

[**Object**](Object.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchExplainGET**
> Object searchExplainGET(type, id)

Explain matches with no template

This is a 1 to 1 mapping of a ElasticSearch call to _explain.  Further information can be found at their <a href='https://www.elastic.co/guide/en/elasticsearch/reference/current/search-count.html'>API guide</a>. <br><br><b>Permissions Needed:</b> SEARCH_ADMIN

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new SearchApi();
var type = type_example; // String | The index type
var id = id_example; // String | The index id

try { 
    var result = api_instance.searchExplainGET(type, id);
    print(result);
} catch (e) {
    print("Exception when calling SearchApi->searchExplainGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **type** | **String**| The index type | 
 **id** | **String**| The index id | 

### Return type

[**Object**](Object.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchExplainPOST**
> Object searchExplainPOST(type, id, query)

Explain matches with no template

This is a 1 to 1 mapping of a ElasticSearch call to _explain.  Further information can be found at their <a href='https://www.elastic.co/guide/en/elasticsearch/reference/current/search-count.html'>API guide</a>. <br><br><b>Permissions Needed:</b> SEARCH_ADMIN

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new SearchApi();
var type = type_example; // String | The index type
var id = id_example; // String | The index id
var query = new Object(); // Object | The query to be used for the search

try { 
    var result = api_instance.searchExplainPOST(type, id, query);
    print(result);
} catch (e) {
    print("Exception when calling SearchApi->searchExplainPOST: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **type** | **String**| The index type | 
 **id** | **String**| The index id | 
 **query** | [**Object**](Object.md)| The query to be used for the search | [optional] 

### Return type

[**Object**](Object.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchExplainWithTemplateGET**
> Object searchExplainWithTemplateGET(type, id, template)

Explain matches with a template

This is a 1 to 1 mapping of a ElasticSearch call to _explain.  Further information can be found at their <a href='https://www.elastic.co/guide/en/elasticsearch/reference/current/search-count.html'>API guide</a>. <br><br><b>Permissions Needed:</b> SEARCH_ADMIN

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new SearchApi();
var type = type_example; // String | The index type
var id = id_example; // String | The index id
var template = template_example; // String | The index template

try { 
    var result = api_instance.searchExplainWithTemplateGET(type, id, template);
    print(result);
} catch (e) {
    print("Exception when calling SearchApi->searchExplainWithTemplateGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **type** | **String**| The index type | 
 **id** | **String**| The index id | 
 **template** | **String**| The index template | 

### Return type

[**Object**](Object.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchExplainWithTemplatePOST**
> Object searchExplainWithTemplatePOST(type, id, template, query)

Explain matches with a template

This is a 1 to 1 mapping of a ElasticSearch call to _explain.  Further information can be found at their <a href='https://www.elastic.co/guide/en/elasticsearch/reference/current/search-count.html'>API guide</a>. <br><br><b>Permissions Needed:</b> SEARCH_ADMIN

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new SearchApi();
var type = type_example; // String | The index type
var id = id_example; // String | The index id
var template = template_example; // String | The index template
var query = new Object(); // Object | The query to be used for the search

try { 
    var result = api_instance.searchExplainWithTemplatePOST(type, id, template, query);
    print(result);
} catch (e) {
    print("Exception when calling SearchApi->searchExplainWithTemplatePOST: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **type** | **String**| The index type | 
 **id** | **String**| The index id | 
 **template** | **String**| The index template | 
 **query** | [**Object**](Object.md)| The query to be used for the search | [optional] 

### Return type

[**Object**](Object.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchIndex**
> Object searchIndex(type, query)

Search an index with no template

This is a 1 to 1 mapping of a ElasticSearch call to _search.  Further information can be found at their <a href='https://www.elastic.co/guide/en/elasticsearch/reference/current/search.html'>API guide</a>. <br><br><b>Permissions Needed:</b> SEARCH_ADMIN

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new SearchApi();
var type = type_example; // String | The index type
var query = new Object(); // Object | The query to be used for the search

try { 
    var result = api_instance.searchIndex(type, query);
    print(result);
} catch (e) {
    print("Exception when calling SearchApi->searchIndex: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **type** | **String**| The index type | 
 **query** | [**Object**](Object.md)| The query to be used for the search | [optional] 

### Return type

[**Object**](Object.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchIndexGET**
> Object searchIndexGET(type)

Search an index with no template

This is a 1 to 1 mapping of a ElasticSearch call to _search.  Further information can be found at their <a href='https://www.elastic.co/guide/en/elasticsearch/reference/current/search.html'>API guide</a>. <br><br><b>Permissions Needed:</b> SEARCH_ADMIN

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new SearchApi();
var type = type_example; // String | The index type

try { 
    var result = api_instance.searchIndexGET(type);
    print(result);
} catch (e) {
    print("Exception when calling SearchApi->searchIndexGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **type** | **String**| The index type | 

### Return type

[**Object**](Object.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchIndexWithTemplateGET**
> Object searchIndexWithTemplateGET(type, template)

Search an index with a template

This is a 1 to 1 mapping of a ElasticSearch call to _search.  Further information can be found at their <a href='https://www.elastic.co/guide/en/elasticsearch/reference/current/search.html'>API guide</a>. <br><br><b>Permissions Needed:</b> SEARCH_ADMIN

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new SearchApi();
var type = type_example; // String | The index type
var template = template_example; // String | The index template

try { 
    var result = api_instance.searchIndexWithTemplateGET(type, template);
    print(result);
} catch (e) {
    print("Exception when calling SearchApi->searchIndexWithTemplateGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **type** | **String**| The index type | 
 **template** | **String**| The index template | 

### Return type

[**Object**](Object.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchIndexWithTemplatePOST**
> Object searchIndexWithTemplatePOST(type, template, query)

Search an index with a template

This is a 1 to 1 mapping of a ElasticSearch call to _search.  Further information can be found at their <a href='https://www.elastic.co/guide/en/elasticsearch/reference/current/search.html'>API guide</a>. <br><br><b>Permissions Needed:</b> SEARCH_ADMIN

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new SearchApi();
var type = type_example; // String | The index type
var template = template_example; // String | The index template
var query = new Object(); // Object | The query to be used for the search

try { 
    var result = api_instance.searchIndexWithTemplatePOST(type, template, query);
    print(result);
} catch (e) {
    print("Exception when calling SearchApi->searchIndexWithTemplatePOST: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **type** | **String**| The index type | 
 **template** | **String**| The index template | 
 **query** | [**Object**](Object.md)| The query to be used for the search | [optional] 

### Return type

[**Object**](Object.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchIndicesGET**
> Object searchIndicesGET()

Get indices

This is a 1 to 1 mapping of a ElasticSearch call to _cat/indices for indices.  Further information can be found at their <a href='https://www.elastic.co/guide/en/elasticsearch/reference/current/indices-get-mapping.html'>API guide</a>. <br><br><b>Permissions Needed:</b> SEARCH_ADMIN

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new SearchApi();

try { 
    var result = api_instance.searchIndicesGET();
    print(result);
} catch (e) {
    print("Exception when calling SearchApi->searchIndicesGET: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Object**](Object.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchMappingsGET**
> Object searchMappingsGET(type)

Get mapping with no template

This is a 1 to 1 mapping of a ElasticSearch call to _mapping.  Further information can be found at their <a href='https://www.elastic.co/guide/en/elasticsearch/reference/current/indices-get-mapping.html'>API guide</a>. <br><br><b>Permissions Needed:</b> SEARCH_ADMIN

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new SearchApi();
var type = type_example; // String | The index type

try { 
    var result = api_instance.searchMappingsGET(type);
    print(result);
} catch (e) {
    print("Exception when calling SearchApi->searchMappingsGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **type** | **String**| The index type | 

### Return type

[**Object**](Object.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchMappingsWithTemplateGET**
> Object searchMappingsWithTemplateGET(type, template)

Get mapping with a template

This is a 1 to 1 mapping of a ElasticSearch call to _mapping.  Further information can be found at their <a href='https://www.elastic.co/guide/en/elasticsearch/reference/current/indices-get-mapping.html'>API guide</a>. <br><br><b>Permissions Needed:</b> SEARCH_ADMIN

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new SearchApi();
var type = type_example; // String | The index type
var template = template_example; // String | The index template

try { 
    var result = api_instance.searchMappingsWithTemplateGET(type, template);
    print(result);
} catch (e) {
    print("Exception when calling SearchApi->searchMappingsWithTemplateGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **type** | **String**| The index type | 
 **template** | **String**| The index template | 

### Return type

[**Object**](Object.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchValidateGET**
> Object searchValidateGET(type)

Validate matches with no template

This is a 1 to 1 mapping of a ElasticSearch call to _validate/query.  Further information can be found at their <a href='https://www.elastic.co/guide/en/elasticsearch/reference/current/search-validate.html'>API guide</a>. <br><br><b>Permissions Needed:</b> SEARCH_ADMIN

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new SearchApi();
var type = type_example; // String | The index type

try { 
    var result = api_instance.searchValidateGET(type);
    print(result);
} catch (e) {
    print("Exception when calling SearchApi->searchValidateGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **type** | **String**| The index type | 

### Return type

[**Object**](Object.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchValidatePOST**
> Object searchValidatePOST(type, query)

Validate matches with no template

This is a 1 to 1 mapping of a ElasticSearch call to _validate/query.  Further information can be found at their <a href='https://www.elastic.co/guide/en/elasticsearch/reference/current/search-validate.html'>API guide</a>. <br><br><b>Permissions Needed:</b> SEARCH_ADMIN

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new SearchApi();
var type = type_example; // String | The index type
var query = new Object(); // Object | The query to be used for the search

try { 
    var result = api_instance.searchValidatePOST(type, query);
    print(result);
} catch (e) {
    print("Exception when calling SearchApi->searchValidatePOST: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **type** | **String**| The index type | 
 **query** | [**Object**](Object.md)| The query to be used for the search | [optional] 

### Return type

[**Object**](Object.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchValidateWithTemplateGET**
> Object searchValidateWithTemplateGET(type, template)

Validate matches with a template

This is a 1 to 1 mapping of a ElasticSearch call to _validate/query.  Further information can be found at their <a href='https://www.elastic.co/guide/en/elasticsearch/reference/current/search-validate.html'>API guide</a>. <br><br><b>Permissions Needed:</b> SEARCH_ADMIN

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new SearchApi();
var type = type_example; // String | The index type
var template = template_example; // String | The index template

try { 
    var result = api_instance.searchValidateWithTemplateGET(type, template);
    print(result);
} catch (e) {
    print("Exception when calling SearchApi->searchValidateWithTemplateGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **type** | **String**| The index type | 
 **template** | **String**| The index template | 

### Return type

[**Object**](Object.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchValidateWithTemplatePOST**
> Object searchValidateWithTemplatePOST(type, template, query)

Validate matches with a template

This is a 1 to 1 mapping of a ElasticSearch call to _validate/query.  Further information can be found at their <a href='https://www.elastic.co/guide/en/elasticsearch/reference/current/search-validate.html'>API guide</a>. <br><br><b>Permissions Needed:</b> SEARCH_ADMIN

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new SearchApi();
var type = type_example; // String | The index type
var template = template_example; // String | The index template
var query = new Object(); // Object | The query to be used for the search

try { 
    var result = api_instance.searchValidateWithTemplatePOST(type, template, query);
    print(result);
} catch (e) {
    print("Exception when calling SearchApi->searchValidateWithTemplatePOST: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **type** | **String**| The index type | 
 **template** | **String**| The index template | 
 **query** | [**Object**](Object.md)| The query to be used for the search | [optional] 

### Return type

[**Object**](Object.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

