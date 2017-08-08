# swagger.api.ContentCommentsApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://sandbox.knetikcloud.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addComment**](ContentCommentsApi.md#addComment) | **POST** /comments | Add a new comment
[**deleteComment**](ContentCommentsApi.md#deleteComment) | **DELETE** /comments/{id} | Delete a comment
[**getComment**](ContentCommentsApi.md#getComment) | **GET** /comments/{id} | Return a comment
[**getComments**](ContentCommentsApi.md#getComments) | **GET** /comments | Returns a page of comments
[**searchComments**](ContentCommentsApi.md#searchComments) | **POST** /comments/search | Search the comment index
[**updateComment**](ContentCommentsApi.md#updateComment) | **PUT** /comments/{id}/content | Update a comment


# **addComment**
> CommentResource addComment(commentResource)

Add a new comment

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new ContentCommentsApi();
var commentResource = new CommentResource(); // CommentResource | The comment to be added

try { 
    var result = api_instance.addComment(commentResource);
    print(result);
} catch (e) {
    print("Exception when calling ContentCommentsApi->addComment: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **commentResource** | [**CommentResource**](CommentResource.md)| The comment to be added | [optional] 

### Return type

[**CommentResource**](CommentResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteComment**
> deleteComment(id)

Delete a comment

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new ContentCommentsApi();
var id = 789; // int | The comment id

try { 
    api_instance.deleteComment(id);
} catch (e) {
    print("Exception when calling ContentCommentsApi->deleteComment: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The comment id | 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getComment**
> CommentResource getComment(id)

Return a comment

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new ContentCommentsApi();
var id = 789; // int | The comment id

try { 
    var result = api_instance.getComment(id);
    print(result);
} catch (e) {
    print("Exception when calling ContentCommentsApi->getComment: $e\n");
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

# **getComments**
> PageResource«CommentResource» getComments(context, contextId, size, page)

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
    var result = api_instance.getComments(context, contextId, size, page);
    print(result);
} catch (e) {
    print("Exception when calling ContentCommentsApi->getComments: $e\n");
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

# **searchComments**
> CommentSearch searchComments(query, size, page)

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
    var result = api_instance.searchComments(query, size, page);
    print(result);
} catch (e) {
    print("Exception when calling ContentCommentsApi->searchComments: $e\n");
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

# **updateComment**
> updateComment(id, content)

Update a comment

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new ContentCommentsApi();
var id = 789; // int | The comment id
var content = new StringWrapper(); // StringWrapper | The comment content

try { 
    api_instance.updateComment(id, content);
} catch (e) {
    print("Exception when calling ContentCommentsApi->updateComment: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The comment id | 
 **content** | [**StringWrapper**](StringWrapper.md)| The comment content | [optional] 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

