# swagger.api.SearchApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://sandbox.knetikcloud.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addSearchIndex**](SearchApi.md#addSearchIndex) | **POST** /search/index/{type}/{id} | Add a new object to an index
[**addSearchMappings**](SearchApi.md#addSearchMappings) | **POST** /search/mappings | Register reference mappings
[**deleteSearchIndex**](SearchApi.md#deleteSearchIndex) | **DELETE** /search/index/{type}/{id} | Delete an object
[**deleteSearchIndexes**](SearchApi.md#deleteSearchIndexes) | **DELETE** /search/index/{type} | Delete all objects in an index
[**searchIndex**](SearchApi.md#searchIndex) | **POST** /search/index/{type} | Search an index


# **addSearchIndex**
> addSearchIndex(type, id, object)

Add a new object to an index

Mainly intended for internal use.

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new SearchApi();
var type = type_example; // String | The index type
var id = id_example; // String | The ID of the object
var object = new Object(); // Object | The object to add

try { 
    api_instance.addSearchIndex(type, id, object);
} catch (e) {
    print("Exception when calling SearchApi->addSearchIndex: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **type** | **String**| The index type | 
 **id** | **String**| The ID of the object | 
 **object** | [**Object**](Object.md)| The object to add | [optional] 

### Return type

void (empty response body)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **addSearchMappings**
> addSearchMappings(mappings)

Register reference mappings

Add a new type mapping to connect data from one index to another, or discover an exsting one. Mainly intended for internal use.

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new SearchApi();
var mappings = [new List&lt;SearchReferenceMapping&gt;()]; // List<SearchReferenceMapping> | The mappings to add

try { 
    api_instance.addSearchMappings(mappings);
} catch (e) {
    print("Exception when calling SearchApi->addSearchMappings: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mappings** | [**List&lt;SearchReferenceMapping&gt;**](SearchReferenceMapping.md)| The mappings to add | [optional] 

### Return type

void (empty response body)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteSearchIndex**
> deleteSearchIndex(type, id)

Delete an object

Mainly intended for internal use. Requires SEARCH_ADMIN.

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new SearchApi();
var type = type_example; // String | The index type
var id = id_example; // String | The ID of the object to delete

try { 
    api_instance.deleteSearchIndex(type, id);
} catch (e) {
    print("Exception when calling SearchApi->deleteSearchIndex: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **type** | **String**| The index type | 
 **id** | **String**| The ID of the object to delete | 

### Return type

void (empty response body)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteSearchIndexes**
> deleteSearchIndexes(type)

Delete all objects in an index

Mainly intended for internal use

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
    api_instance.deleteSearchIndexes(type);
} catch (e) {
    print("Exception when calling SearchApi->deleteSearchIndexes: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **type** | **String**| The index type | 

### Return type

void (empty response body)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchIndex**
> PageResource«Map«string,object»» searchIndex(type, query, size, page)

Search an index

The body is an ElasticSearch query in JSON format. Please see their <a href='https://www.elastic.co/guide/en/elasticsearch/reference/current/query-dsl.html'>documentation</a> for details on the format and search options. The searchable object's format depends on on the type. See individual search endpoints on other resources for details on their format.

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new SearchApi();
var type = type_example; // String | The index type
var query = new Object(); // Object | The query to be used for the search
var size = 56; // int | The number of objects returned per page
var page = 56; // int | The number of the page returned, starting with 1

try { 
    var result = api_instance.searchIndex(type, query, size, page);
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
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]

### Return type

[**PageResource«Map«string,object»»**](PageResource«Map«string,object»».md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

