# swagger.api.ContentCommentsApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://localhost:8080/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addCommentUsingPOST**](ContentCommentsApi.md#addCommentUsingPOST) | **POST** /comments | Add a new comment
[**deleteCommentUsingDELETE**](ContentCommentsApi.md#deleteCommentUsingDELETE) | **DELETE** /comments/{id} | Delete a comment
[**getCommentUsingGET**](ContentCommentsApi.md#getCommentUsingGET) | **GET** /comments/{id} | Returns a comment by comment id
[**getCommentsUsingGET**](ContentCommentsApi.md#getCommentsUsingGET) | **GET** /comments | Returns a page of comments
[**searchCommentsUsingPOST**](ContentCommentsApi.md#searchCommentsUsingPOST) | **POST** /comments/search | Search the comment index
[**updateCommentUsingPUT**](ContentCommentsApi.md#updateCommentUsingPUT) | **PUT** /comments/{id}/content | Update comment content


# **addCommentUsingPOST**
> CommentResource addCommentUsingPOST(commentResource)

Add a new comment

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: knetik_oauth
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new ContentCommentsApi();
var commentResource = new CommentResource(); // CommentResource | The comment to be added

try { 
    var result = api_instance.addCommentUsingPOST(commentResource);
    print(result);
} catch (e) {
    print("Exception when calling ContentCommentsApi->addCommentUsingPOST: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **commentResource** | [**CommentResource**](CommentResource.md)| The comment to be added | [optional] 

### Return type

[**CommentResource**](CommentResource.md)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteCommentUsingDELETE**
> deleteCommentUsingDELETE(id)

Delete a comment

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: knetik_oauth
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new ContentCommentsApi();
var id = 789; // int | The comment id

try { 
    api_instance.deleteCommentUsingDELETE(id);
} catch (e) {
    print("Exception when calling ContentCommentsApi->deleteCommentUsingDELETE: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The comment id | 

### Return type

void (empty response body)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCommentUsingGET**
> CommentResource getCommentUsingGET(id)

Returns a comment by comment id

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new ContentCommentsApi();
var id = 789; // int | The comment id

try { 
    var result = api_instance.getCommentUsingGET(id);
    print(result);
} catch (e) {
    print("Exception when calling ContentCommentsApi->getCommentUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The comment id | 

### Return type

[**CommentResource**](CommentResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCommentsUsingGET**
> PageResource«CommentResource» getCommentsUsingGET(context, contextId, size, page)

Returns a page of comments

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new ContentCommentsApi();
var context = context_example; // String | Get comments by context type
var contextId = 56; // int | Get comments by context id
var size = 56; // int | The number of objects returned per page
var page = 56; // int | The number of the page returned, starting with 1

try { 
    var result = api_instance.getCommentsUsingGET(context, contextId, size, page);
    print(result);
} catch (e) {
    print("Exception when calling ContentCommentsApi->getCommentsUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **context** | **String**| Get comments by context type | 
 **contextId** | **int**| Get comments by context id | 
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]

### Return type

[**PageResource«CommentResource»**](PageResource«CommentResource».md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchCommentsUsingPOST**
> CommentSearch searchCommentsUsingPOST(query, size, page)

Search the comment index

The body is an ElasticSearch query json. Please see their <a href='https://www.elastic.co/guide/en/elasticsearch/reference/current/index.html'>documentation</a> for details on the format and search options

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new ContentCommentsApi();
var query = new Object(); // Object | The search query
var size = 56; // int | The number of objects returned per page
var page = 56; // int | The number of the page returned, starting with 1

try { 
    var result = api_instance.searchCommentsUsingPOST(query, size, page);
    print(result);
} catch (e) {
    print("Exception when calling ContentCommentsApi->searchCommentsUsingPOST: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | [**Object**](Object.md)| The search query | [optional] 
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]

### Return type

[**CommentSearch**](CommentSearch.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateCommentUsingPUT**
> updateCommentUsingPUT(id, content)

Update comment content

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: knetik_oauth
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new ContentCommentsApi();
var id = 789; // int | The comment id
var content = new String(); // String | The comment content

try { 
    api_instance.updateCommentUsingPUT(id, content);
} catch (e) {
    print("Exception when calling ContentCommentsApi->updateCommentUsingPUT: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The comment id | 
 **content** | **String**| The comment content | [optional] 

### Return type

void (empty response body)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

