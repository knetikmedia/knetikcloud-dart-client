# swagger.api.MediaVideosApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://sandbox.knetikcloud.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addUserToVideoWhitelist**](MediaVideosApi.md#addUserToVideoWhitelist) | **POST** /media/videos/{id}/whitelist | Adds a user to a video&#39;s whitelist
[**addVideo**](MediaVideosApi.md#addVideo) | **POST** /media/videos | Adds a new video in the system
[**addVideoComment**](MediaVideosApi.md#addVideoComment) | **POST** /media/videos/{video_id}/comments | Add a new video comment
[**addVideoContributor**](MediaVideosApi.md#addVideoContributor) | **POST** /media/videos/{video_id}/contributors | Adds a contributor to a video
[**addVideoFlag**](MediaVideosApi.md#addVideoFlag) | **POST** /media/videos/{video_id}/moderation | Add a new flag
[**addVideoRelationships**](MediaVideosApi.md#addVideoRelationships) | **POST** /media/videos/{video_id}/related | Adds one or more existing videos as related to this one
[**createVideoDisposition**](MediaVideosApi.md#createVideoDisposition) | **POST** /media/videos/{video_id}/dispositions | Create a video disposition
[**deleteVideo**](MediaVideosApi.md#deleteVideo) | **DELETE** /media/videos/{id} | Deletes a video from the system if no resources are attached to it
[**deleteVideoComment**](MediaVideosApi.md#deleteVideoComment) | **DELETE** /media/videos/{video_id}/comments/{id} | Delete a video comment
[**deleteVideoDisposition**](MediaVideosApi.md#deleteVideoDisposition) | **DELETE** /media/videos/{video_id}/dispositions/{disposition_id} | Delete a video disposition
[**deleteVideoFlag**](MediaVideosApi.md#deleteVideoFlag) | **DELETE** /media/videos/{video_id}/moderation | Delete a flag
[**deleteVideoRelationship**](MediaVideosApi.md#deleteVideoRelationship) | **DELETE** /media/videos/{video_id}/related/{id} | Delete a video&#39;s relationship
[**getUserVideos**](MediaVideosApi.md#getUserVideos) | **GET** /users/{user_id}/videos | Get user videos
[**getVideo**](MediaVideosApi.md#getVideo) | **GET** /media/videos/{id} | Loads a specific video details
[**getVideoComments**](MediaVideosApi.md#getVideoComments) | **GET** /media/videos/{video_id}/comments | Returns a page of comments for a video
[**getVideoDispositions**](MediaVideosApi.md#getVideoDispositions) | **GET** /media/videos/{video_id}/dispositions | Returns a page of dispositions for a video
[**getVideoRelationships**](MediaVideosApi.md#getVideoRelationships) | **GET** /media/videos/{video_id}/related | Returns a page of video relationships
[**getVideos**](MediaVideosApi.md#getVideos) | **GET** /media/videos | Search videos using the documented filters
[**removeUserFromVideoWhitelist**](MediaVideosApi.md#removeUserFromVideoWhitelist) | **DELETE** /media/videos/{video_id}/whitelist/{id} | Removes a user from a video&#39;s whitelist
[**removeVideoContributor**](MediaVideosApi.md#removeVideoContributor) | **DELETE** /media/videos/{video_id}/contributors/{id} | Removes a contributor from a video
[**updateVideo**](MediaVideosApi.md#updateVideo) | **PUT** /media/videos/{id} | Modifies a video&#39;s details
[**updateVideoComment**](MediaVideosApi.md#updateVideoComment) | **PUT** /media/videos/{video_id}/comments/{id}/content | Update a video comment
[**updateVideoRelationship**](MediaVideosApi.md#updateVideoRelationship) | **PUT** /media/videos/{video_id}/related/{id}/relationship_details | Update a video&#39;s relationship details
[**viewVideo**](MediaVideosApi.md#viewVideo) | **POST** /media/videos/{id}/views | Increment a video&#39;s view count


# **addUserToVideoWhitelist**
> addUserToVideoWhitelist(id, userId)

Adds a user to a video's whitelist

Whitelisted users can view video regardless of privacy setting.

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new MediaVideosApi();
var id = 789; // int | The video id
var userId = new IntWrapper(); // IntWrapper | The user id

try { 
    api_instance.addUserToVideoWhitelist(id, userId);
} catch (e) {
    print("Exception when calling MediaVideosApi->addUserToVideoWhitelist: $e\n");
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

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **addVideo**
> VideoResource addVideo(videoResource)

Adds a new video in the system

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new MediaVideosApi();
var videoResource = new VideoResource(); // VideoResource | The video object

try { 
    var result = api_instance.addVideo(videoResource);
    print(result);
} catch (e) {
    print("Exception when calling MediaVideosApi->addVideo: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **videoResource** | [**VideoResource**](VideoResource.md)| The video object | [optional] 

### Return type

[**VideoResource**](VideoResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **addVideoComment**
> CommentResource addVideoComment(videoId, commentResource)

Add a new video comment

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new MediaVideosApi();
var videoId = 56; // int | The video id 
var commentResource = new CommentResource(); // CommentResource | The comment object

try { 
    var result = api_instance.addVideoComment(videoId, commentResource);
    print(result);
} catch (e) {
    print("Exception when calling MediaVideosApi->addVideoComment: $e\n");
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

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **addVideoContributor**
> addVideoContributor(videoId, contributionResource)

Adds a contributor to a video

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new MediaVideosApi();
var videoId = 789; // int | The video id
var contributionResource = new ContributionResource(); // ContributionResource | The contribution object

try { 
    api_instance.addVideoContributor(videoId, contributionResource);
} catch (e) {
    print("Exception when calling MediaVideosApi->addVideoContributor: $e\n");
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

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **addVideoFlag**
> FlagResource addVideoFlag(videoId, reason)

Add a new flag

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new MediaVideosApi();
var videoId = 789; // int | The video id
var reason = new StringWrapper(); // StringWrapper | The flag reason

try { 
    var result = api_instance.addVideoFlag(videoId, reason);
    print(result);
} catch (e) {
    print("Exception when calling MediaVideosApi->addVideoFlag: $e\n");
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

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **addVideoRelationships**
> VideoRelationshipResource addVideoRelationships(videoId, videoRelationshipResource)

Adds one or more existing videos as related to this one

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new MediaVideosApi();
var videoId = 789; // int | The video id
var videoRelationshipResource = new VideoRelationshipResource(); // VideoRelationshipResource | The video relationship object 

try { 
    var result = api_instance.addVideoRelationships(videoId, videoRelationshipResource);
    print(result);
} catch (e) {
    print("Exception when calling MediaVideosApi->addVideoRelationships: $e\n");
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

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createVideoDisposition**
> DispositionResource createVideoDisposition(videoId, dispositionResource)

Create a video disposition

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new MediaVideosApi();
var videoId = 56; // int | The video id
var dispositionResource = new DispositionResource(); // DispositionResource | The disposition object

try { 
    var result = api_instance.createVideoDisposition(videoId, dispositionResource);
    print(result);
} catch (e) {
    print("Exception when calling MediaVideosApi->createVideoDisposition: $e\n");
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

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteVideo**
> deleteVideo(id)

Deletes a video from the system if no resources are attached to it

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new MediaVideosApi();
var id = 789; // int | The video id

try { 
    api_instance.deleteVideo(id);
} catch (e) {
    print("Exception when calling MediaVideosApi->deleteVideo: $e\n");
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
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteVideoComment**
> deleteVideoComment(videoId, id)

Delete a video comment

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new MediaVideosApi();
var videoId = 789; // int | The video id
var id = 789; // int | The comment id

try { 
    api_instance.deleteVideoComment(videoId, id);
} catch (e) {
    print("Exception when calling MediaVideosApi->deleteVideoComment: $e\n");
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

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteVideoDisposition**
> deleteVideoDisposition(dispositionId)

Delete a video disposition

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new MediaVideosApi();
var dispositionId = 789; // int | The disposition id

try { 
    api_instance.deleteVideoDisposition(dispositionId);
} catch (e) {
    print("Exception when calling MediaVideosApi->deleteVideoDisposition: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dispositionId** | **int**| The disposition id | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteVideoFlag**
> deleteVideoFlag(videoId)

Delete a flag

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new MediaVideosApi();
var videoId = 789; // int | The video id

try { 
    api_instance.deleteVideoFlag(videoId);
} catch (e) {
    print("Exception when calling MediaVideosApi->deleteVideoFlag: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **videoId** | **int**| The video id | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteVideoRelationship**
> deleteVideoRelationship(videoId, id)

Delete a video's relationship

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new MediaVideosApi();
var videoId = 789; // int | The video id
var id = 789; // int | The relationship id

try { 
    api_instance.deleteVideoRelationship(videoId, id);
} catch (e) {
    print("Exception when calling MediaVideosApi->deleteVideoRelationship: $e\n");
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

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUserVideos**
> PageResource«VideoResource» getUserVideos(userId, excludeFlagged, size, page)

Get user videos

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new MediaVideosApi();
var userId = 56; // int | The user id
var excludeFlagged = true; // bool | Skip videos that have been flagged by the current user
var size = 56; // int | The number of objects returned per page
var page = 56; // int | The number of the page returned, starting with 1

try { 
    var result = api_instance.getUserVideos(userId, excludeFlagged, size, page);
    print(result);
} catch (e) {
    print("Exception when calling MediaVideosApi->getUserVideos: $e\n");
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

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getVideo**
> VideoResource getVideo(id)

Loads a specific video details

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new MediaVideosApi();
var id = 789; // int | The video id

try { 
    var result = api_instance.getVideo(id);
    print(result);
} catch (e) {
    print("Exception when calling MediaVideosApi->getVideo: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The video id | 

### Return type

[**VideoResource**](VideoResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getVideoComments**
> PageResource«CommentResource» getVideoComments(videoId, size, page)

Returns a page of comments for a video

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new MediaVideosApi();
var videoId = 56; // int | The video id
var size = 56; // int | The number of objects returned per page
var page = 56; // int | The number of the page returned, starting with 1

try { 
    var result = api_instance.getVideoComments(videoId, size, page);
    print(result);
} catch (e) {
    print("Exception when calling MediaVideosApi->getVideoComments: $e\n");
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

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getVideoDispositions**
> PageResource«DispositionResource» getVideoDispositions(videoId, size, page)

Returns a page of dispositions for a video

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new MediaVideosApi();
var videoId = 56; // int | The video id
var size = 56; // int | The number of objects returned per page
var page = 56; // int | The number of the page returned, starting with 1

try { 
    var result = api_instance.getVideoDispositions(videoId, size, page);
    print(result);
} catch (e) {
    print("Exception when calling MediaVideosApi->getVideoDispositions: $e\n");
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

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getVideoRelationships**
> PageResource«VideoRelationshipResource» getVideoRelationships(videoId, size, page)

Returns a page of video relationships

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new MediaVideosApi();
var videoId = 789; // int | The video id
var size = 56; // int | The number of objects returned per page
var page = 56; // int | The number of the page returned, starting with 1

try { 
    var result = api_instance.getVideoRelationships(videoId, size, page);
    print(result);
} catch (e) {
    print("Exception when calling MediaVideosApi->getVideoRelationships: $e\n");
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

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getVideos**
> PageResource«VideoResource» getVideos(excludeFlagged, filterVideosByUploader, filterCategory, filterTagset, filterVideosByName, filterVideosByContributor, filterVideosByAuthor, filterHasAuthor, filterHasUploader, filterRelatedTo, filterFriends, filterDisposition, size, page, order)

Search videos using the documented filters

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new MediaVideosApi();
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
    print("Exception when calling MediaVideosApi->getVideos: $e\n");
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

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **removeUserFromVideoWhitelist**
> removeUserFromVideoWhitelist(videoId, id)

Removes a user from a video's whitelist

Remove the user with the id given in the path from the whitelist of users that can view this video regardless of privacy setting.

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new MediaVideosApi();
var videoId = 789; // int | The video id
var id = 56; // int | The user id

try { 
    api_instance.removeUserFromVideoWhitelist(videoId, id);
} catch (e) {
    print("Exception when calling MediaVideosApi->removeUserFromVideoWhitelist: $e\n");
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

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **removeVideoContributor**
> removeVideoContributor(videoId, id)

Removes a contributor from a video

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new MediaVideosApi();
var videoId = 789; // int | The video id
var id = 56; // int | The contributor id

try { 
    api_instance.removeVideoContributor(videoId, id);
} catch (e) {
    print("Exception when calling MediaVideosApi->removeVideoContributor: $e\n");
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

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateVideo**
> updateVideo(id, videoResource)

Modifies a video's details

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new MediaVideosApi();
var id = 789; // int | The video id
var videoResource = new VideoResource(); // VideoResource | The video object

try { 
    api_instance.updateVideo(id, videoResource);
} catch (e) {
    print("Exception when calling MediaVideosApi->updateVideo: $e\n");
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

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateVideoComment**
> updateVideoComment(videoId, id, content)

Update a video comment

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new MediaVideosApi();
var videoId = 789; // int | The video id
var id = 789; // int | The comment id
var content = new StringWrapper(); // StringWrapper | The comment content

try { 
    api_instance.updateVideoComment(videoId, id, content);
} catch (e) {
    print("Exception when calling MediaVideosApi->updateVideoComment: $e\n");
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

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateVideoRelationship**
> updateVideoRelationship(videoId, relationshipId, details)

Update a video's relationship details

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new MediaVideosApi();
var videoId = 789; // int | The video id
var relationshipId = 789; // int | The relationship id
var details = new StringWrapper(); // StringWrapper | The video relationship details

try { 
    api_instance.updateVideoRelationship(videoId, relationshipId, details);
} catch (e) {
    print("Exception when calling MediaVideosApi->updateVideoRelationship: $e\n");
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

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **viewVideo**
> viewVideo(id)

Increment a video's view count

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new MediaVideosApi();
var id = 789; // int | The video id

try { 
    api_instance.viewVideo(id);
} catch (e) {
    print("Exception when calling MediaVideosApi->viewVideo: $e\n");
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
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

