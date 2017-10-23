# swagger.api.SearchApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://sandbox.knetikcloud.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**searchIndex**](SearchApi.md#searchIndex) | **POST** /search/index/{type} | Search an index


# **searchIndex**
> PageResource«Map«string,object»» searchIndex(type, query, size, page)

Search an index

The body is an ElasticSearch query in JSON format. Please see their <a href='https://www.elastic.co/guide/en/elasticsearch/reference/current/query-dsl.html'>documentation</a> for details on the format and search options. The searchable object's format depends on on the type but mostly matches the resource from it's main endpoint. Exceptions include referenced objects (like user) being replaced with the full user resource to allow deeper searching.

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new SearchApi();
var type = type_example; // String | The index type
var query = new Object(); // Object | The query to be used for the search
var size = 56; // int | The number of documents returned per page
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
 **size** | **int**| The number of documents returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]

### Return type

[**PageResource«Map«string,object»»**](PageResource«Map«string,object»».md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

