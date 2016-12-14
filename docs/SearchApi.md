# swagger.api.SearchApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://devsandbox.knetikcloud.com/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**externalAddUsingPOST**](SearchApi.md#externalAddUsingPOST) | **POST** /search/index/{type}/{id} | Add a new object to an index
[**externalDeleteAllUsingDELETE**](SearchApi.md#externalDeleteAllUsingDELETE) | **DELETE** /search/index/{type} | Delete all objects in an index
[**externalDeleteUsingDELETE**](SearchApi.md#externalDeleteUsingDELETE) | **DELETE** /search/index/{type}/{id} | Delete an object
[**externalRegisterUsingPOST**](SearchApi.md#externalRegisterUsingPOST) | **POST** /search/mappings | Register reference mappings
[**searchUsingPOST**](SearchApi.md#searchUsingPOST) | **POST** /search/index/{type} | Search an index


# **externalAddUsingPOST**
> externalAddUsingPOST(type, id, object)

Add a new object to an index

Mainly intended for internal use.

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new SearchApi();
var type = type_example; // String | The index type
var id = id_example; // String | The ID of the object
var object = new Object(); // Object | The object to add

try { 
    api_instance.externalAddUsingPOST(type, id, object);
} catch (e) {
    print("Exception when calling SearchApi->externalAddUsingPOST: $e\n");
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

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **externalDeleteAllUsingDELETE**
> externalDeleteAllUsingDELETE(type)

Delete all objects in an index

Mainly intended for internal use

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new SearchApi();
var type = type_example; // String | The index type

try { 
    api_instance.externalDeleteAllUsingDELETE(type);
} catch (e) {
    print("Exception when calling SearchApi->externalDeleteAllUsingDELETE: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **type** | **String**| The index type | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **externalDeleteUsingDELETE**
> externalDeleteUsingDELETE(type, id)

Delete an object

Mainly intended for internal use. Requires SEARCH_ADMIN.

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new SearchApi();
var type = type_example; // String | The index type
var id = id_example; // String | The ID of the object to delete

try { 
    api_instance.externalDeleteUsingDELETE(type, id);
} catch (e) {
    print("Exception when calling SearchApi->externalDeleteUsingDELETE: $e\n");
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

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **externalRegisterUsingPOST**
> externalRegisterUsingPOST(mappings)

Register reference mappings

Add a new type mapping to connect data from one index to another, or discover an exsting one. Mainly intended for internal use.

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new SearchApi();
var mappings = [new List&lt;SearchReferenceMapping&gt;()]; // List<SearchReferenceMapping> | The mappings to add

try { 
    api_instance.externalRegisterUsingPOST(mappings);
} catch (e) {
    print("Exception when calling SearchApi->externalRegisterUsingPOST: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mappings** | [**List&lt;SearchReferenceMapping&gt;**](SearchReferenceMapping.md)| The mappings to add | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchUsingPOST**
> Page«Map«string,object»» searchUsingPOST(type, query, size, page, order)

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
var order = order_example; // String | a comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]

try { 
    var result = api_instance.searchUsingPOST(type, query, size, page, order);
    print(result);
} catch (e) {
    print("Exception when calling SearchApi->searchUsingPOST: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **type** | **String**| The index type | 
 **query** | [**Object**](Object.md)| The query to be used for the search | [optional] 
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **String**| a comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to 1]

### Return type

[**Page«Map«string,object»»**](Page«Map«string,object»».md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

