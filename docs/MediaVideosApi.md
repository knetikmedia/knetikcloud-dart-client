# swagger.api.MediaVideosApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://localhost:8080/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addCommentUsingPOST1**](MediaVideosApi.md#addCommentUsingPOST1) | **POST** /media/videos/{video_id}/comments | Add a new video comment
[**addContributorUsingPOST**](MediaVideosApi.md#addContributorUsingPOST) | **POST** /media/videos/{video_id}/contributors | Adds a contributor to a video
[**addDispositionUsingPOST1**](MediaVideosApi.md#addDispositionUsingPOST1) | **POST** /media/videos/{video_id}/dispositions | Add a new Video disposition
[**addFlagUsingPOST**](MediaVideosApi.md#addFlagUsingPOST) | **POST** /media/videos/{video_id}/moderation | Add a new flag
[**addRelatedUsingPOST**](MediaVideosApi.md#addRelatedUsingPOST) | **POST** /media/videos/{video_id}/related | Adds one or more existing videos as related to this one
[**addVideoUsingPOST**](MediaVideosApi.md#addVideoUsingPOST) | **POST** /media/videos | Adds a new video in the system
[**addWhitelistUsingPOST**](MediaVideosApi.md#addWhitelistUsingPOST) | **POST** /media/videos/{id}/whitelist | Adds a user to a video&#39;s whitelist
[**deleteCommentUsingDELETE1**](MediaVideosApi.md#deleteCommentUsingDELETE1) | **DELETE** /media/videos/{video_id}/comments/{id} | Delete a video comment
[**deleteDispositionUsingDELETE1**](MediaVideosApi.md#deleteDispositionUsingDELETE1) | **DELETE** /media/videos/{video_id}/dispositions/{disposition_id} | Delete a video comment
[**deleteFlagUsingDELETE**](MediaVideosApi.md#deleteFlagUsingDELETE) | **DELETE** /media/videos/{video_id}/moderation | Delete a flag
[**deleteRelationshipUsingDELETE1**](MediaVideosApi.md#deleteRelationshipUsingDELETE1) | **DELETE** /media/videos/{video_id}/related/{id} | Delete a video&#39;s relationship
[**deleteVideoUsingDELETE**](MediaVideosApi.md#deleteVideoUsingDELETE) | **DELETE** /media/videos/{id} | Removes a video from the system if no resources are attached to it
[**getCommentsUsingGET1**](MediaVideosApi.md#getCommentsUsingGET1) | **GET** /media/videos/{video_id}/comments | Returns a page of comments for a video
[**getDispositionsUsingGET1**](MediaVideosApi.md#getDispositionsUsingGET1) | **GET** /media/videos/{video_id}/dispositions | Returns a page of dispositions for a video
[**getRelatedUsingGET**](MediaVideosApi.md#getRelatedUsingGET) | **GET** /media/videos/{video_id}/related | Returns a page of video relationships
[**getUserVideosUsingGET**](MediaVideosApi.md#getUserVideosUsingGET) | **GET** /users/{user_id}/videos | Get user videos
[**getVideoUsingGET**](MediaVideosApi.md#getVideoUsingGET) | **GET** /media/videos/{id} | Loads a specific video details
[**removeContributorUsingDELETE**](MediaVideosApi.md#removeContributorUsingDELETE) | **DELETE** /media/videos/{video_id}/contributors/{id} | Removes a contributor from a video
[**removeWhitelistUsingDELETE**](MediaVideosApi.md#removeWhitelistUsingDELETE) | **DELETE** /media/videos/{video_id}/whitelist/{id} | Removes a user from a video&#39;s whitelist
[**searchVideosUsingGET**](MediaVideosApi.md#searchVideosUsingGET) | **GET** /media/videos | Search videos using the documented filters
[**updateCommentUsingPUT1**](MediaVideosApi.md#updateCommentUsingPUT1) | **PUT** /media/videos/{video_id}/comments/{id}/content | Update video comment content 
[**updateRelationshipUsingPUT1**](MediaVideosApi.md#updateRelationshipUsingPUT1) | **PUT** /media/videos/{video_id}/related/{id}/relationship_details | Update a video&#39;s relationship details
[**updateVideoUsingPUT**](MediaVideosApi.md#updateVideoUsingPUT) | **PUT** /media/videos/{id} | Modifies a video&#39;s details
[**viewVideoUsingPOST**](MediaVideosApi.md#viewVideoUsingPOST) | **POST** /media/videos/{id}/views | Increment a video&#39;s view count


# **addCommentUsingPOST1**
> CommentResource addCommentUsingPOST1(videoId, commentResource)

Add a new video comment

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new MediaVideosApi();
var videoId = 56; // int | The video id 
var commentResource = new CommentResource(); // CommentResource | The comment object

try { 
    var result = api_instance.addCommentUsingPOST1(videoId, commentResource);
    print(result);
} catch (e) {
    print("Exception when calling MediaVideosApi->addCommentUsingPOST1: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **videoId** | **int**| The video id  | 
 **commentResource** | [**CommentResource**](CommentResource.md)| The comment object | [optional] 

### Return type

[**CommentResource**](CommentResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **addContributorUsingPOST**
> addContributorUsingPOST(videoId, contributionResource)

Adds a contributor to a video

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new MediaVideosApi();
var videoId = 789; // int | The video id
var contributionResource = new ContributionResource(); // ContributionResource | The contribution object

try { 
    api_instance.addContributorUsingPOST(videoId, contributionResource);
} catch (e) {
    print("Exception when calling MediaVideosApi->addContributorUsingPOST: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **videoId** | **int**| The video id | 
 **contributionResource** | [**ContributionResource**](ContributionResource.md)| The contribution object | [optional] 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **addDispositionUsingPOST1**
> DispositionResource addDispositionUsingPOST1(videoId, dispositionResource)

Add a new Video disposition

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new MediaVideosApi();
var videoId = 56; // int | The video id
var dispositionResource = new DispositionResource(); // DispositionResource | The disposition object

try { 
    var result = api_instance.addDispositionUsingPOST1(videoId, dispositionResource);
    print(result);
} catch (e) {
    print("Exception when calling MediaVideosApi->addDispositionUsingPOST1: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **videoId** | **int**| The video id | 
 **dispositionResource** | [**DispositionResource**](DispositionResource.md)| The disposition object | [optional] 

### Return type

[**DispositionResource**](DispositionResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **addFlagUsingPOST**
> addFlagUsingPOST(videoId, reason)

Add a new flag

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new MediaVideosApi();
var videoId = 789; // int | The video id
var reason = new String(); // String | The flag reason

try { 
    api_instance.addFlagUsingPOST(videoId, reason);
} catch (e) {
    print("Exception when calling MediaVideosApi->addFlagUsingPOST: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **videoId** | **int**| The video id | 
 **reason** | **String**| The flag reason | [optional] 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **addRelatedUsingPOST**
> VideoRelationshipResource addRelatedUsingPOST(videoId, videoRelationshipResource)

Adds one or more existing videos as related to this one

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new MediaVideosApi();
var videoId = 789; // int | The video id
var videoRelationshipResource = new VideoRelationshipResource(); // VideoRelationshipResource | The video relationship object 

try { 
    var result = api_instance.addRelatedUsingPOST(videoId, videoRelationshipResource);
    print(result);
} catch (e) {
    print("Exception when calling MediaVideosApi->addRelatedUsingPOST: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **videoId** | **int**| The video id | 
 **videoRelationshipResource** | [**VideoRelationshipResource**](VideoRelationshipResource.md)| The video relationship object  | [optional] 

### Return type

[**VideoRelationshipResource**](VideoRelationshipResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **addVideoUsingPOST**
> VideoResource addVideoUsingPOST(videoResource)

Adds a new video in the system

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new MediaVideosApi();
var videoResource = new VideoResource(); // VideoResource | The video object

try { 
    var result = api_instance.addVideoUsingPOST(videoResource);
    print(result);
} catch (e) {
    print("Exception when calling MediaVideosApi->addVideoUsingPOST: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **videoResource** | [**VideoResource**](VideoResource.md)| The video object | [optional] 

### Return type

[**VideoResource**](VideoResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **addWhitelistUsingPOST**
> addWhitelistUsingPOST(id, userId)

Adds a user to a video's whitelist

Whitelisted users can view video regardless of privacy setting.

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new MediaVideosApi();
var id = 789; // int | The video id
var userId = new int(); // int | The user id

try { 
    api_instance.addWhitelistUsingPOST(id, userId);
} catch (e) {
    print("Exception when calling MediaVideosApi->addWhitelistUsingPOST: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The video id | 
 **userId** | **int**| The user id | [optional] 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteCommentUsingDELETE1**
> deleteCommentUsingDELETE1(videoId, id)

Delete a video comment

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new MediaVideosApi();
var videoId = 789; // int | The video id
var id = 789; // int | The comment id

try { 
    api_instance.deleteCommentUsingDELETE1(videoId, id);
} catch (e) {
    print("Exception when calling MediaVideosApi->deleteCommentUsingDELETE1: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **videoId** | **int**| The video id | 
 **id** | **int**| The comment id | 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteDispositionUsingDELETE1**
> deleteDispositionUsingDELETE1(dispositionId)

Delete a video comment

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new MediaVideosApi();
var dispositionId = 789; // int | The disposition id

try { 
    api_instance.deleteDispositionUsingDELETE1(dispositionId);
} catch (e) {
    print("Exception when calling MediaVideosApi->deleteDispositionUsingDELETE1: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dispositionId** | **int**| The disposition id | 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteFlagUsingDELETE**
> deleteFlagUsingDELETE(videoId)

Delete a flag

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new MediaVideosApi();
var videoId = 789; // int | The video id

try { 
    api_instance.deleteFlagUsingDELETE(videoId);
} catch (e) {
    print("Exception when calling MediaVideosApi->deleteFlagUsingDELETE: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **videoId** | **int**| The video id | 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteRelationshipUsingDELETE1**
> deleteRelationshipUsingDELETE1(videoId, id)

Delete a video's relationship

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new MediaVideosApi();
var videoId = 789; // int | The video id
var id = 789; // int | The relationship id

try { 
    api_instance.deleteRelationshipUsingDELETE1(videoId, id);
} catch (e) {
    print("Exception when calling MediaVideosApi->deleteRelationshipUsingDELETE1: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **videoId** | **int**| The video id | 
 **id** | **int**| The relationship id | 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteVideoUsingDELETE**
> deleteVideoUsingDELETE(id)

Removes a video from the system if no resources are attached to it

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new MediaVideosApi();
var id = 789; // int | The video id

try { 
    api_instance.deleteVideoUsingDELETE(id);
} catch (e) {
    print("Exception when calling MediaVideosApi->deleteVideoUsingDELETE: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The video id | 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCommentsUsingGET1**
> Page«CommentResource» getCommentsUsingGET1(videoId, size, page)

Returns a page of comments for a video

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new MediaVideosApi();
var videoId = 56; // int | The video id
var size = 56; // int | The number of objects returned per page
var page = 56; // int | The number of the page returned, starting with 1

try { 
    var result = api_instance.getCommentsUsingGET1(videoId, size, page);
    print(result);
} catch (e) {
    print("Exception when calling MediaVideosApi->getCommentsUsingGET1: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **videoId** | **int**| The video id | 
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]

### Return type

[**Page«CommentResource»**](Page«CommentResource».md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDispositionsUsingGET1**
> Page«DispositionResource» getDispositionsUsingGET1(videoId, size, page)

Returns a page of dispositions for a video

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new MediaVideosApi();
var videoId = 56; // int | The video id
var size = 56; // int | The number of objects returned per page
var page = 56; // int | The number of the page returned, starting with 1

try { 
    var result = api_instance.getDispositionsUsingGET1(videoId, size, page);
    print(result);
} catch (e) {
    print("Exception when calling MediaVideosApi->getDispositionsUsingGET1: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **videoId** | **int**| The video id | 
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]

### Return type

[**Page«DispositionResource»**](Page«DispositionResource».md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getRelatedUsingGET**
> Page«VideoRelationshipResource» getRelatedUsingGET(videoId, size, page)

Returns a page of video relationships

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new MediaVideosApi();
var videoId = 789; // int | The video id
var size = 56; // int | The number of objects returned per page
var page = 56; // int | The number of the page returned, starting with 1

try { 
    var result = api_instance.getRelatedUsingGET(videoId, size, page);
    print(result);
} catch (e) {
    print("Exception when calling MediaVideosApi->getRelatedUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **videoId** | **int**| The video id | 
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]

### Return type

[**Page«VideoRelationshipResource»**](Page«VideoRelationshipResource».md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUserVideosUsingGET**
> Page«VideoResource» getUserVideosUsingGET(userId, excludeFlagged, size, page)

Get user videos

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new MediaVideosApi();
var userId = 56; // int | The user id
var excludeFlagged = true; // bool | Skip videos that have been flagged by the current user
var size = 56; // int | The number of objects returned per page
var page = 56; // int | The number of the page returned, starting with 1

try { 
    var result = api_instance.getUserVideosUsingGET(userId, excludeFlagged, size, page);
    print(result);
} catch (e) {
    print("Exception when calling MediaVideosApi->getUserVideosUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **int**| The user id | 
 **excludeFlagged** | **bool**| Skip videos that have been flagged by the current user | [optional] [default to true]
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]

### Return type

[**Page«VideoResource»**](Page«VideoResource».md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getVideoUsingGET**
> VideoResource getVideoUsingGET(id)

Loads a specific video details

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new MediaVideosApi();
var id = 789; // int | The video id

try { 
    var result = api_instance.getVideoUsingGET(id);
    print(result);
} catch (e) {
    print("Exception when calling MediaVideosApi->getVideoUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The video id | 

### Return type

[**VideoResource**](VideoResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **removeContributorUsingDELETE**
> removeContributorUsingDELETE(videoId, id)

Removes a contributor from a video

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new MediaVideosApi();
var videoId = 789; // int | The video id
var id = 56; // int | The contributor id

try { 
    api_instance.removeContributorUsingDELETE(videoId, id);
} catch (e) {
    print("Exception when calling MediaVideosApi->removeContributorUsingDELETE: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **videoId** | **int**| The video id | 
 **id** | **int**| The contributor id | 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **removeWhitelistUsingDELETE**
> removeWhitelistUsingDELETE(videoId, id)

Removes a user from a video's whitelist

Remove the user with the id given in the path from the whitelist of users that can view this video regardless of privacy setting.

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new MediaVideosApi();
var videoId = 789; // int | The video id
var id = 56; // int | The user id

try { 
    api_instance.removeWhitelistUsingDELETE(videoId, id);
} catch (e) {
    print("Exception when calling MediaVideosApi->removeWhitelistUsingDELETE: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **videoId** | **int**| The video id | 
 **id** | **int**| The user id | 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchVideosUsingGET**
> Page«VideoResource» searchVideosUsingGET(excludeFlagged, filterVideosByUploader, filterCategory, filterTagset, filterVideosByName, filterVideosByContributor, filterVideosByAuthor, filterHasAuthor, filterHasUploader, filterRelatedTo, filterFriends, filterDisposition, size, page, order)

Search videos using the documented filters

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new MediaVideosApi();
var excludeFlagged = true; // bool | Skip videos that have been flagged by the current user
var filterVideosByUploader = filterVideosByUploader_example; // String | Filter for videos by uploader id
var filterCategory = filterCategory_example; // String | Filter for videos from a specific category by id
var filterTagset = filterTagset_example; // String | Filter for videos with specified tags (separated by comma)
var filterVideosByName = filterVideosByName_example; // String | Filter for videos which name *STARTS* with the given string
var filterVideosByContributor = filterVideosByContributor_example; // String | Filter for videos with contribution from the artist specified by ID
var filterVideosByAuthor = filterVideosByAuthor_example; // String | Filter for videos with an artist as author specified by ID
var filterHasAuthor = true; // bool | Filter for videos that have an author set if true, or that have no author if false
var filterHasUploader = true; // bool | Filter for videos that have an uploader set if true, or that have no uploader if false
var filterRelatedTo = filterRelatedTo_example; // String | Filter for videos that have designated a particular video as the TO of a relationship. Pattern should match VIDEO_ID or VIDEO_ID:DETAILS to match with a specific details string as well
var filterFriends = true; // bool | Filter for videos uploaded by friends. 'true' for friends of the caller (requires user token) or a user id for a specific user's friends (requires VIDEOS_ADMIN permission)
var filterDisposition = filterDisposition_example; // String | Filter for videos a given user has a given disposition towards. USER_ID:DISPOSITION where USER_ID is the id of the user who has this disposition or 'me' for the caller (requires user token for 'me') and DISPOSITION is the name of the disposition. E.G. filter_disposition=123:like or filter_disposition=me:favorite
var size = 56; // int | The number of objects returned per page
var page = 56; // int | The number of the page returned, starting with 1
var order = order_example; // String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]

try { 
    var result = api_instance.searchVideosUsingGET(excludeFlagged, filterVideosByUploader, filterCategory, filterTagset, filterVideosByName, filterVideosByContributor, filterVideosByAuthor, filterHasAuthor, filterHasUploader, filterRelatedTo, filterFriends, filterDisposition, size, page, order);
    print(result);
} catch (e) {
    print("Exception when calling MediaVideosApi->searchVideosUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **excludeFlagged** | **bool**| Skip videos that have been flagged by the current user | [optional] [default to true]
 **filterVideosByUploader** | **String**| Filter for videos by uploader id | [optional] 
 **filterCategory** | **String**| Filter for videos from a specific category by id | [optional] 
 **filterTagset** | **String**| Filter for videos with specified tags (separated by comma) | [optional] 
 **filterVideosByName** | **String**| Filter for videos which name *STARTS* with the given string | [optional] 
 **filterVideosByContributor** | **String**| Filter for videos with contribution from the artist specified by ID | [optional] 
 **filterVideosByAuthor** | **String**| Filter for videos with an artist as author specified by ID | [optional] 
 **filterHasAuthor** | **bool**| Filter for videos that have an author set if true, or that have no author if false | [optional] 
 **filterHasUploader** | **bool**| Filter for videos that have an uploader set if true, or that have no uploader if false | [optional] 
 **filterRelatedTo** | **String**| Filter for videos that have designated a particular video as the TO of a relationship. Pattern should match VIDEO_ID or VIDEO_ID:DETAILS to match with a specific details string as well | [optional] 
 **filterFriends** | **bool**| Filter for videos uploaded by friends. &#39;true&#39; for friends of the caller (requires user token) or a user id for a specific user&#39;s friends (requires VIDEOS_ADMIN permission) | [optional] 
 **filterDisposition** | **String**| Filter for videos a given user has a given disposition towards. USER_ID:DISPOSITION where USER_ID is the id of the user who has this disposition or &#39;me&#39; for the caller (requires user token for &#39;me&#39;) and DISPOSITION is the name of the disposition. E.G. filter_disposition&#x3D;123:like or filter_disposition&#x3D;me:favorite | [optional] 
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **String**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to author:ASC]

### Return type

[**Page«VideoResource»**](Page«VideoResource».md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateCommentUsingPUT1**
> updateCommentUsingPUT1(videoId, id, content)

Update video comment content 

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new MediaVideosApi();
var videoId = 789; // int | The video id
var id = 789; // int | The comment id
var content = new String(); // String | The comment content

try { 
    api_instance.updateCommentUsingPUT1(videoId, id, content);
} catch (e) {
    print("Exception when calling MediaVideosApi->updateCommentUsingPUT1: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **videoId** | **int**| The video id | 
 **id** | **int**| The comment id | 
 **content** | **String**| The comment content | [optional] 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateRelationshipUsingPUT1**
> updateRelationshipUsingPUT1(videoId, relationshipId, details)

Update a video's relationship details

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new MediaVideosApi();
var videoId = 789; // int | The video id
var relationshipId = 789; // int | The relationship id
var details = new String(); // String | The video relationship details

try { 
    api_instance.updateRelationshipUsingPUT1(videoId, relationshipId, details);
} catch (e) {
    print("Exception when calling MediaVideosApi->updateRelationshipUsingPUT1: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **videoId** | **int**| The video id | 
 **relationshipId** | **int**| The relationship id | 
 **details** | **String**| The video relationship details | [optional] 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateVideoUsingPUT**
> updateVideoUsingPUT(id, videoResource)

Modifies a video's details

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new MediaVideosApi();
var id = 789; // int | The video id
var videoResource = new VideoResource(); // VideoResource | The video object

try { 
    api_instance.updateVideoUsingPUT(id, videoResource);
} catch (e) {
    print("Exception when calling MediaVideosApi->updateVideoUsingPUT: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The video id | 
 **videoResource** | [**VideoResource**](VideoResource.md)| The video object | [optional] 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **viewVideoUsingPOST**
> viewVideoUsingPOST(id)

Increment a video's view count

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new MediaVideosApi();
var id = 789; // int | The video id

try { 
    api_instance.viewVideoUsingPOST(id);
} catch (e) {
    print("Exception when calling MediaVideosApi->viewVideoUsingPOST: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The video id | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

