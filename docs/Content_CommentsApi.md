# swagger.api.Content_CommentsApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://jsapi-integration.us-east-1.elasticbeanstalk.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addComment**](Content_CommentsApi.md#addComment) | **POST** /comments | Add a new comment
[**deleteComment**](Content_CommentsApi.md#deleteComment) | **DELETE** /comments/{id} | Delete a comment
[**getComment**](Content_CommentsApi.md#getComment) | **GET** /comments/{id} | Return a comment
[**getComments**](Content_CommentsApi.md#getComments) | **GET** /comments | Returns a page of comments
[**updateComment**](Content_CommentsApi.md#updateComment) | **PUT** /comments/{id}/content | Update a comment


# **addComment**
> CommentResource addComment(commentResource)

Add a new comment

<b>Permissions Needed:</b> COMMENTS_USER or COMMENTS_ADMIN

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new Content_CommentsApi();
var commentResource = new CommentResource(); // CommentResource | The comment to be added

try { 
    var result = api_instance.addComment(commentResource);
    print(result);
} catch (e) {
    print("Exception when calling Content_CommentsApi->addComment: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **commentResource** | [**CommentResource**](CommentResource.md)| The comment to be added | [optional] 

### Return type

[**CommentResource**](CommentResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteComment**
> deleteComment(id)

Delete a comment

<b>Permissions Needed:</b> COMMENTS_USER or COMMENTS_ADMIN

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new Content_CommentsApi();
var id = 789; // int | The comment id

try { 
    api_instance.deleteComment(id);
} catch (e) {
    print("Exception when calling Content_CommentsApi->deleteComment: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The comment id | 

### Return type

void (empty response body)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getComment**
> CommentResource getComment(id)

Return a comment

<b>Permissions Needed:</b> ANY

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new Content_CommentsApi();
var id = 789; // int | The comment id

try { 
    var result = api_instance.getComment(id);
    print(result);
} catch (e) {
    print("Exception when calling Content_CommentsApi->getComment: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The comment id | 

### Return type

[**CommentResource**](CommentResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getComments**
> PageResource«CommentResource» getComments(context, contextId, size, page)

Returns a page of comments

<b>Permissions Needed:</b> ANY

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new Content_CommentsApi();
var context = context_example; // String | Get comments by context type
var contextId = 56; // int | Get comments by context id
var size = 56; // int | The number of objects returned per page
var page = 56; // int | The number of the page returned, starting with 1

try { 
    var result = api_instance.getComments(context, contextId, size, page);
    print(result);
} catch (e) {
    print("Exception when calling Content_CommentsApi->getComments: $e\n");
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

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateComment**
> updateComment(id, content)

Update a comment

<b>Permissions Needed:</b> COMMENTS_USER or COMMENTS_ADMIN

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new Content_CommentsApi();
var id = 789; // int | The comment id
var content = new StringWrapper(); // StringWrapper | The comment content

try { 
    api_instance.updateComment(id, content);
} catch (e) {
    print("Exception when calling Content_CommentsApi->updateComment: $e\n");
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

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

