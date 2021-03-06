# swagger.api.Media_VideosApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://jsapi-integration.us-east-1.elasticbeanstalk.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addUserToVideoWhitelist**](Media_VideosApi.md#addUserToVideoWhitelist) | **POST** /media/videos/{id}/whitelist | Adds a user to a video&#39;s whitelist
[**addVideo**](Media_VideosApi.md#addVideo) | **POST** /media/videos | Adds a new video in the system
[**addVideoComment**](Media_VideosApi.md#addVideoComment) | **POST** /media/videos/{video_id}/comments | Add a new video comment
[**addVideoContributor**](Media_VideosApi.md#addVideoContributor) | **POST** /media/videos/{video_id}/contributors | Adds a contributor to a video
[**addVideoFlag**](Media_VideosApi.md#addVideoFlag) | **POST** /media/videos/{video_id}/moderation | Add a new flag
[**addVideoRelationships**](Media_VideosApi.md#addVideoRelationships) | **POST** /media/videos/{video_id}/related | Adds one or more existing videos as related to this one
[**createVideoDisposition**](Media_VideosApi.md#createVideoDisposition) | **POST** /media/videos/{video_id}/dispositions | Create a video disposition
[**createVideoTemplate**](Media_VideosApi.md#createVideoTemplate) | **POST** /media/videos/templates | Create a video template
[**deleteVideo**](Media_VideosApi.md#deleteVideo) | **DELETE** /media/videos/{id} | Deletes a video from the system if no resources are attached to it
[**deleteVideoComment**](Media_VideosApi.md#deleteVideoComment) | **DELETE** /media/videos/{video_id}/comments/{id} | Delete a video comment
[**deleteVideoDisposition**](Media_VideosApi.md#deleteVideoDisposition) | **DELETE** /media/videos/{video_id}/dispositions/{disposition_id} | Delete a video disposition
[**deleteVideoFlag**](Media_VideosApi.md#deleteVideoFlag) | **DELETE** /media/videos/{video_id}/moderation | Delete a flag
[**deleteVideoRelationship**](Media_VideosApi.md#deleteVideoRelationship) | **DELETE** /media/videos/{video_id}/related/{id} | Delete a video&#39;s relationship
[**deleteVideoTemplate**](Media_VideosApi.md#deleteVideoTemplate) | **DELETE** /media/videos/templates/{id} | Delete a video template
[**getUserVideos**](Media_VideosApi.md#getUserVideos) | **GET** /users/{user_id}/videos | Get user videos
[**getVideo**](Media_VideosApi.md#getVideo) | **GET** /media/videos/{id} | Loads a specific video details
[**getVideoComments**](Media_VideosApi.md#getVideoComments) | **GET** /media/videos/{video_id}/comments | Returns a page of comments for a video
[**getVideoDispositions**](Media_VideosApi.md#getVideoDispositions) | **GET** /media/videos/{video_id}/dispositions | Returns a page of dispositions for a video
[**getVideoRelationships**](Media_VideosApi.md#getVideoRelationships) | **GET** /media/videos/{video_id}/related | Returns a page of video relationships
[**getVideoTemplate**](Media_VideosApi.md#getVideoTemplate) | **GET** /media/videos/templates/{id} | Get a single video template
[**getVideoTemplates**](Media_VideosApi.md#getVideoTemplates) | **GET** /media/videos/templates | List and search video templates
[**getVideos**](Media_VideosApi.md#getVideos) | **GET** /media/videos | Search videos using the documented filters
[**removeUserFromVideoWhitelist**](Media_VideosApi.md#removeUserFromVideoWhitelist) | **DELETE** /media/videos/{video_id}/whitelist/{id} | Removes a user from a video&#39;s whitelist
[**removeVideoContributor**](Media_VideosApi.md#removeVideoContributor) | **DELETE** /media/videos/{video_id}/contributors/{id} | Removes a contributor from a video
[**updateVideo**](Media_VideosApi.md#updateVideo) | **PUT** /media/videos/{id} | Modifies a video&#39;s details
[**updateVideoComment**](Media_VideosApi.md#updateVideoComment) | **PUT** /media/videos/{video_id}/comments/{id}/content | Update a video comment
[**updateVideoRelationship**](Media_VideosApi.md#updateVideoRelationship) | **PUT** /media/videos/{video_id}/related/{id}/relationship_details | Update a video&#39;s relationship details
[**updateVideoTemplate**](Media_VideosApi.md#updateVideoTemplate) | **PUT** /media/videos/templates/{id} | Update a video template
[**viewVideo**](Media_VideosApi.md#viewVideo) | **POST** /media/videos/{id}/views | Increment a video&#39;s view count


# **addUserToVideoWhitelist**
> addUserToVideoWhitelist(id, userId)

Adds a user to a video's whitelist

Whitelisted users can view video regardless of privacy setting. <br><br><b>Permissions Needed:</b> VIDEOS_USER or VIDEOS_ADMIN

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new Media_VideosApi();
var id = 789; // int | The video id
var userId = new IntWrapper(); // IntWrapper | The user id

try { 
    api_instance.addUserToVideoWhitelist(id, userId);
} catch (e) {
    print("Exception when calling Media_VideosApi->addUserToVideoWhitelist: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The video id | 
 **userId** | [**IntWrapper**](IntWrapper.md)| The user id | [optional] 

### Return type

void (empty response body)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **addVideo**
> VideoResource addVideo(videoResource)

Adds a new video in the system

<b>Permissions Needed:</b> VIDEOS_USER or VIDEOS_ADMIN

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new Media_VideosApi();
var videoResource = new VideoResource(); // VideoResource | The video object

try { 
    var result = api_instance.addVideo(videoResource);
    print(result);
} catch (e) {
    print("Exception when calling Media_VideosApi->addVideo: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **videoResource** | [**VideoResource**](VideoResource.md)| The video object | [optional] 

### Return type

[**VideoResource**](VideoResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **addVideoComment**
> CommentResource addVideoComment(videoId, commentResource)

Add a new video comment

<b>Permissions Needed:</b> VIDEOS_USER or VIDEOS_ADMIN

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new Media_VideosApi();
var videoId = 56; // int | The video id 
var commentResource = new CommentResource(); // CommentResource | The comment object

try { 
    var result = api_instance.addVideoComment(videoId, commentResource);
    print(result);
} catch (e) {
    print("Exception when calling Media_VideosApi->addVideoComment: $e\n");
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

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **addVideoContributor**
> addVideoContributor(videoId, contributionResource)

Adds a contributor to a video

<b>Permissions Needed:</b> VIDEOS_USER or VIDEOS_ADMIN

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new Media_VideosApi();
var videoId = 789; // int | The video id
var contributionResource = new ContributionResource(); // ContributionResource | The contribution object

try { 
    api_instance.addVideoContributor(videoId, contributionResource);
} catch (e) {
    print("Exception when calling Media_VideosApi->addVideoContributor: $e\n");
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

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **addVideoFlag**
> FlagResource addVideoFlag(videoId, reason)

Add a new flag

<b>Permissions Needed:</b> VIDEOS_USER or VIDEOS_ADMIN

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new Media_VideosApi();
var videoId = 789; // int | The video id
var reason = new StringWrapper(); // StringWrapper | The flag reason

try { 
    var result = api_instance.addVideoFlag(videoId, reason);
    print(result);
} catch (e) {
    print("Exception when calling Media_VideosApi->addVideoFlag: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **videoId** | **int**| The video id | 
 **reason** | [**StringWrapper**](StringWrapper.md)| The flag reason | [optional] 

### Return type

[**FlagResource**](FlagResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **addVideoRelationships**
> VideoRelationshipResource addVideoRelationships(videoId, videoRelationshipResource)

Adds one or more existing videos as related to this one

<b>Permissions Needed:</b> VIDEOS_USER or VIDEOS_ADMIN

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new Media_VideosApi();
var videoId = 789; // int | The video id
var videoRelationshipResource = new VideoRelationshipResource(); // VideoRelationshipResource | The video relationship object 

try { 
    var result = api_instance.addVideoRelationships(videoId, videoRelationshipResource);
    print(result);
} catch (e) {
    print("Exception when calling Media_VideosApi->addVideoRelationships: $e\n");
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

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createVideoDisposition**
> DispositionResource createVideoDisposition(videoId, dispositionResource)

Create a video disposition

<b>Permissions Needed:</b> VIDEOS_USER or VIDEOS_ADMIN

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new Media_VideosApi();
var videoId = 56; // int | The video id
var dispositionResource = new DispositionResource(); // DispositionResource | The disposition object

try { 
    var result = api_instance.createVideoDisposition(videoId, dispositionResource);
    print(result);
} catch (e) {
    print("Exception when calling Media_VideosApi->createVideoDisposition: $e\n");
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

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createVideoTemplate**
> TemplateResource createVideoTemplate(videoTemplateResource)

Create a video template

Video Templates define a type of video and the properties they have. <br><br><b>Permissions Needed:</b> TEMPLATE_ADMIN

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new Media_VideosApi();
var videoTemplateResource = new TemplateResource(); // TemplateResource | The video template resource object

try { 
    var result = api_instance.createVideoTemplate(videoTemplateResource);
    print(result);
} catch (e) {
    print("Exception when calling Media_VideosApi->createVideoTemplate: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **videoTemplateResource** | [**TemplateResource**](TemplateResource.md)| The video template resource object | [optional] 

### Return type

[**TemplateResource**](TemplateResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteVideo**
> deleteVideo(id)

Deletes a video from the system if no resources are attached to it

<b>Permissions Needed:</b> VIDEOS_USER or VIDEOS_ADMIN

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new Media_VideosApi();
var id = 789; // int | The video id

try { 
    api_instance.deleteVideo(id);
} catch (e) {
    print("Exception when calling Media_VideosApi->deleteVideo: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The video id | 

### Return type

void (empty response body)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteVideoComment**
> deleteVideoComment(videoId, id)

Delete a video comment

<b>Permissions Needed:</b> VIDEOS_USER or VIDEOS_ADMIN

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new Media_VideosApi();
var videoId = 789; // int | The video id
var id = 789; // int | The comment id

try { 
    api_instance.deleteVideoComment(videoId, id);
} catch (e) {
    print("Exception when calling Media_VideosApi->deleteVideoComment: $e\n");
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

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteVideoDisposition**
> deleteVideoDisposition(dispositionId)

Delete a video disposition

<b>Permissions Needed:</b> VIDEOS_USER or VIDEOS_ADMIN

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new Media_VideosApi();
var dispositionId = 789; // int | The disposition id

try { 
    api_instance.deleteVideoDisposition(dispositionId);
} catch (e) {
    print("Exception when calling Media_VideosApi->deleteVideoDisposition: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dispositionId** | **int**| The disposition id | 

### Return type

void (empty response body)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteVideoFlag**
> deleteVideoFlag(videoId)

Delete a flag

<b>Permissions Needed:</b> VIDEOS_USER or VIDEOS_ADMIN

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new Media_VideosApi();
var videoId = 789; // int | The video id

try { 
    api_instance.deleteVideoFlag(videoId);
} catch (e) {
    print("Exception when calling Media_VideosApi->deleteVideoFlag: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **videoId** | **int**| The video id | 

### Return type

void (empty response body)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteVideoRelationship**
> deleteVideoRelationship(videoId, id)

Delete a video's relationship

<b>Permissions Needed:</b> VIDEOS_USER or VIDEOS_ADMIN

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new Media_VideosApi();
var videoId = 789; // int | The video id
var id = 789; // int | The relationship id

try { 
    api_instance.deleteVideoRelationship(videoId, id);
} catch (e) {
    print("Exception when calling Media_VideosApi->deleteVideoRelationship: $e\n");
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

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteVideoTemplate**
> deleteVideoTemplate(id, cascade)

Delete a video template

If cascade = 'detach', it will force delete the template even if it's attached to other objects. <br><br><b>Permissions Needed:</b> TEMPLATE_ADMIN

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new Media_VideosApi();
var id = id_example; // String | The id of the template
var cascade = cascade_example; // String | The value needed to delete used templates

try { 
    api_instance.deleteVideoTemplate(id, cascade);
} catch (e) {
    print("Exception when calling Media_VideosApi->deleteVideoTemplate: $e\n");
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

# **getUserVideos**
> PageResource«VideoResource» getUserVideos(userId, excludeFlagged, size, page)

Get user videos

<b>Permissions Needed:</b> VIDEOS_USER or VIDEOS_ADMIN

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new Media_VideosApi();
var userId = 56; // int | The user id
var excludeFlagged = true; // bool | Skip videos that have been flagged by the current user
var size = 56; // int | The number of objects returned per page
var page = 56; // int | The number of the page returned, starting with 1

try { 
    var result = api_instance.getUserVideos(userId, excludeFlagged, size, page);
    print(result);
} catch (e) {
    print("Exception when calling Media_VideosApi->getUserVideos: $e\n");
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

[**PageResource«VideoResource»**](PageResource«VideoResource».md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getVideo**
> VideoResource getVideo(id)

Loads a specific video details

<b>Permissions Needed:</b> VIDEOS_USER or VIDEOS_ADMIN

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new Media_VideosApi();
var id = 789; // int | The video id

try { 
    var result = api_instance.getVideo(id);
    print(result);
} catch (e) {
    print("Exception when calling Media_VideosApi->getVideo: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The video id | 

### Return type

[**VideoResource**](VideoResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getVideoComments**
> PageResource«CommentResource» getVideoComments(videoId, size, page)

Returns a page of comments for a video

<b>Permissions Needed:</b> ANY

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new Media_VideosApi();
var videoId = 56; // int | The video id
var size = 56; // int | The number of objects returned per page
var page = 56; // int | The number of the page returned, starting with 1

try { 
    var result = api_instance.getVideoComments(videoId, size, page);
    print(result);
} catch (e) {
    print("Exception when calling Media_VideosApi->getVideoComments: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **videoId** | **int**| The video id | 
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

# **getVideoDispositions**
> PageResource«DispositionResource» getVideoDispositions(videoId, size, page)

Returns a page of dispositions for a video

<b>Permissions Needed:</b> ANY

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new Media_VideosApi();
var videoId = 56; // int | The video id
var size = 56; // int | The number of objects returned per page
var page = 56; // int | The number of the page returned, starting with 1

try { 
    var result = api_instance.getVideoDispositions(videoId, size, page);
    print(result);
} catch (e) {
    print("Exception when calling Media_VideosApi->getVideoDispositions: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **videoId** | **int**| The video id | 
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]

### Return type

[**PageResource«DispositionResource»**](PageResource«DispositionResource».md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getVideoRelationships**
> PageResource«VideoRelationshipResource» getVideoRelationships(videoId, size, page)

Returns a page of video relationships

<b>Permissions Needed:</b> ANY

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new Media_VideosApi();
var videoId = 789; // int | The video id
var size = 56; // int | The number of objects returned per page
var page = 56; // int | The number of the page returned, starting with 1

try { 
    var result = api_instance.getVideoRelationships(videoId, size, page);
    print(result);
} catch (e) {
    print("Exception when calling Media_VideosApi->getVideoRelationships: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **videoId** | **int**| The video id | 
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]

### Return type

[**PageResource«VideoRelationshipResource»**](PageResource«VideoRelationshipResource».md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getVideoTemplate**
> TemplateResource getVideoTemplate(id)

Get a single video template

<b>Permissions Needed:</b> TEMPLATE_ADMIN or VIDEOS_ADMIN

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new Media_VideosApi();
var id = id_example; // String | The id of the template

try { 
    var result = api_instance.getVideoTemplate(id);
    print(result);
} catch (e) {
    print("Exception when calling Media_VideosApi->getVideoTemplate: $e\n");
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

# **getVideoTemplates**
> PageResource«TemplateResource» getVideoTemplates(size, page, order)

List and search video templates

<b>Permissions Needed:</b> TEMPLATE_ADMIN or VIDEOS_ADMIN

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new Media_VideosApi();
var size = 56; // int | The number of objects returned per page
var page = 56; // int | The number of the page returned, starting with 1
var order = order_example; // String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]

try { 
    var result = api_instance.getVideoTemplates(size, page, order);
    print(result);
} catch (e) {
    print("Exception when calling Media_VideosApi->getVideoTemplates: $e\n");
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

# **getVideos**
> PageResource«VideoResource» getVideos(excludeFlagged, filterVideosByUploader, filterCategory, filterTagset, filterVideosByName, filterVideosByContributor, filterVideosByAuthor, filterHasAuthor, filterHasUploader, filterRelatedTo, filterFriends, filterDisposition, size, page, order)

Search videos using the documented filters

<b>Permissions Needed:</b> ANY

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new Media_VideosApi();
var excludeFlagged = true; // bool | Skip videos that have been flagged by the current user
var filterVideosByUploader = 56; // int | Filter for videos by uploader id
var filterCategory = filterCategory_example; // String | Filter for videos from a specific category by id
var filterTagset = filterTagset_example; // String | Filter for videos with specified tags (separated by comma)
var filterVideosByName = filterVideosByName_example; // String | Filter for videos which name *STARTS* with the given string
var filterVideosByContributor = 56; // int | Filter for videos with contribution from the artist specified by ID
var filterVideosByAuthor = 56; // int | Filter for videos with an artist as author specified by ID
var filterHasAuthor = true; // bool | Filter for videos that have an author set if true, or that have no author if false
var filterHasUploader = true; // bool | Filter for videos that have an uploader set if true, or that have no uploader if false
var filterRelatedTo = filterRelatedTo_example; // String | Filter for videos that have designated a particular video as the TO of a relationship. Pattern should match VIDEO_ID or VIDEO_ID:DETAILS to match with a specific details string as well
var filterFriends = true; // bool | Filter for videos uploaded by friends. 'true' for friends of the caller (requires user token) or a user id for a specific user's friends (requires VIDEOS_ADMIN permission)
var filterDisposition = filterDisposition_example; // String | Filter for videos a given user has a given disposition towards. USER_ID:DISPOSITION where USER_ID is the id of the user who has this disposition or 'me' for the caller (requires user token for 'me') and DISPOSITION is the name of the disposition. E.G. filter_disposition=123:like or filter_disposition=me:favorite
var size = 56; // int | The number of objects returned per page
var page = 56; // int | The number of the page returned, starting with 1
var order = order_example; // String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]

try { 
    var result = api_instance.getVideos(excludeFlagged, filterVideosByUploader, filterCategory, filterTagset, filterVideosByName, filterVideosByContributor, filterVideosByAuthor, filterHasAuthor, filterHasUploader, filterRelatedTo, filterFriends, filterDisposition, size, page, order);
    print(result);
} catch (e) {
    print("Exception when calling Media_VideosApi->getVideos: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **excludeFlagged** | **bool**| Skip videos that have been flagged by the current user | [optional] [default to true]
 **filterVideosByUploader** | **int**| Filter for videos by uploader id | [optional] 
 **filterCategory** | **String**| Filter for videos from a specific category by id | [optional] 
 **filterTagset** | **String**| Filter for videos with specified tags (separated by comma) | [optional] 
 **filterVideosByName** | **String**| Filter for videos which name *STARTS* with the given string | [optional] 
 **filterVideosByContributor** | **int**| Filter for videos with contribution from the artist specified by ID | [optional] 
 **filterVideosByAuthor** | **int**| Filter for videos with an artist as author specified by ID | [optional] 
 **filterHasAuthor** | **bool**| Filter for videos that have an author set if true, or that have no author if false | [optional] 
 **filterHasUploader** | **bool**| Filter for videos that have an uploader set if true, or that have no uploader if false | [optional] 
 **filterRelatedTo** | **String**| Filter for videos that have designated a particular video as the TO of a relationship. Pattern should match VIDEO_ID or VIDEO_ID:DETAILS to match with a specific details string as well | [optional] 
 **filterFriends** | **bool**| Filter for videos uploaded by friends. &#39;true&#39; for friends of the caller (requires user token) or a user id for a specific user&#39;s friends (requires VIDEOS_ADMIN permission) | [optional] 
 **filterDisposition** | **String**| Filter for videos a given user has a given disposition towards. USER_ID:DISPOSITION where USER_ID is the id of the user who has this disposition or &#39;me&#39; for the caller (requires user token for &#39;me&#39;) and DISPOSITION is the name of the disposition. E.G. filter_disposition&#x3D;123:like or filter_disposition&#x3D;me:favorite | [optional] 
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **String**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to author:ASC]

### Return type

[**PageResource«VideoResource»**](PageResource«VideoResource».md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **removeUserFromVideoWhitelist**
> removeUserFromVideoWhitelist(videoId, id)

Removes a user from a video's whitelist

Remove the user with the id given in the path from the whitelist of users that can view this video regardless of privacy setting. <br><br><b>Permissions Needed:</b> VIDEOS_USER or VIDEOS_ADMIN

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new Media_VideosApi();
var videoId = 789; // int | The video id
var id = 56; // int | The user id

try { 
    api_instance.removeUserFromVideoWhitelist(videoId, id);
} catch (e) {
    print("Exception when calling Media_VideosApi->removeUserFromVideoWhitelist: $e\n");
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

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **removeVideoContributor**
> removeVideoContributor(videoId, id)

Removes a contributor from a video

<b>Permissions Needed:</b> VIDEOS_USER or VIDEOS_ADMIN

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new Media_VideosApi();
var videoId = 789; // int | The video id
var id = 56; // int | The contributor id

try { 
    api_instance.removeVideoContributor(videoId, id);
} catch (e) {
    print("Exception when calling Media_VideosApi->removeVideoContributor: $e\n");
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

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateVideo**
> updateVideo(id, videoResource)

Modifies a video's details

<b>Permissions Needed:</b> VIDEOS_USER or VIDEOS_ADMIN

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new Media_VideosApi();
var id = 789; // int | The video id
var videoResource = new VideoResource(); // VideoResource | The video object

try { 
    api_instance.updateVideo(id, videoResource);
} catch (e) {
    print("Exception when calling Media_VideosApi->updateVideo: $e\n");
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

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateVideoComment**
> updateVideoComment(videoId, id, content)

Update a video comment

<b>Permissions Needed:</b> VIDEOS_USER or VIDEOS_ADMIN

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new Media_VideosApi();
var videoId = 789; // int | The video id
var id = 789; // int | The comment id
var content = new StringWrapper(); // StringWrapper | The comment content

try { 
    api_instance.updateVideoComment(videoId, id, content);
} catch (e) {
    print("Exception when calling Media_VideosApi->updateVideoComment: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **videoId** | **int**| The video id | 
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

# **updateVideoRelationship**
> updateVideoRelationship(videoId, relationshipId, details)

Update a video's relationship details

<b>Permissions Needed:</b> VIDEOS_USER or VIDEOS_ADMIN

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new Media_VideosApi();
var videoId = 789; // int | The video id
var relationshipId = 789; // int | The relationship id
var details = new StringWrapper(); // StringWrapper | The video relationship details

try { 
    api_instance.updateVideoRelationship(videoId, relationshipId, details);
} catch (e) {
    print("Exception when calling Media_VideosApi->updateVideoRelationship: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **videoId** | **int**| The video id | 
 **relationshipId** | **int**| The relationship id | 
 **details** | [**StringWrapper**](StringWrapper.md)| The video relationship details | [optional] 

### Return type

void (empty response body)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateVideoTemplate**
> TemplateResource updateVideoTemplate(id, videoTemplateResource)

Update a video template

<b>Permissions Needed:</b> TEMPLATE_ADMIN

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new Media_VideosApi();
var id = id_example; // String | The id of the template
var videoTemplateResource = new TemplateResource(); // TemplateResource | The video template resource object

try { 
    var result = api_instance.updateVideoTemplate(id, videoTemplateResource);
    print(result);
} catch (e) {
    print("Exception when calling Media_VideosApi->updateVideoTemplate: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the template | 
 **videoTemplateResource** | [**TemplateResource**](TemplateResource.md)| The video template resource object | [optional] 

### Return type

[**TemplateResource**](TemplateResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **viewVideo**
> viewVideo(id)

Increment a video's view count

<b>Permissions Needed:</b> ANY

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new Media_VideosApi();
var id = 789; // int | The video id

try { 
    api_instance.viewVideo(id);
} catch (e) {
    print("Exception when calling Media_VideosApi->viewVideo: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The video id | 

### Return type

void (empty response body)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

