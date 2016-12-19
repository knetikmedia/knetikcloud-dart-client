# swagger.model.VideoResource

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**active** | **bool** | Whether the video is available, based on various factors | [optional] [default to null]
**author** | [**SimpleReferenceResource«long»**](SimpleReferenceResource«long».md) | The original artist of the media. | [optional] [default to null]
**authored** | **int** | The date the media was created as a unix timestamp in seconds. | [optional] [default to null]
**banned** | **bool** | Whether the video has been banned or not | [optional] [default to null]
**category** | [**SimpleReferenceResource«string»**](SimpleReferenceResource«string».md) | The category of the video | [default to null]
**comments** | [**List&lt;CommentResource&gt;**](CommentResource.md) | The comments of the video | [optional] [default to []]
**contributors** | [**List&lt;ContributionResource&gt;**](ContributionResource.md) | Artists that contributed to the creation. See separate endpoint to add to list | [optional] [default to []]
**createdDate** | **int** | The date/time this resource was created in seconds since unix epoch | [optional] [default to null]
**embed** | **String** | The country of an embedable version. | [optional] [default to null]
**extension** | **String** | The file extension of the media file. 1-5 characters. | [default to null]
**height** | **int** | The height of the video in px | [default to null]
**id** | **int** | The unique ID for that resource | [optional] [default to null]
**length** | **int** | The length of the video in seconds | [default to null]
**location** | **String** | The country of the media. Typically a url. Cannot be blank. | [default to null]
**longDescription** | **String** | The user friendly name of that resource. Defaults to blank string | [optional] [default to null]
**mimeType** | **String** | The mime-type of the media. | [optional] [default to null]
**name** | **String** | The user friendly name of that resource | [default to null]
**priority** | **int** | The sort order of the video. default: 100 | [optional] [default to null]
**privacy** | **String** | The privacy setting. default: private | [optional] [default to null]
**published** | **bool** | Whether the video has been made public. Default true | [optional] [default to null]
**shortDescription** | **String** | The user friendly name of that resource. Defaults to blank string | [optional] [default to null]
**size** | **int** | The size of the media. Minimum 0 if supplied | [optional] [default to null]
**tags** | **List&lt;String&gt;** | The tags for the video | [optional] [default to []]
**thumbnail** | **String** | The country of a thumbnail version. Typically a url. | [optional] [default to null]
**updatedDate** | **int** | The date/time this resource was last updated in seconds since unix epoch | [optional] [default to null]
**uploader** | [**SimpleUserResource**](SimpleUserResource.md) | The user the media was uploaded by. May be null for system uploaded media. May only be set to a user other than the current caller if VIDEOS_ADMIN permission. Null will mean the caller is the uploader unless the caller has VIDEOS_ADMIN permission, in which case it will be set to null. | [optional] [default to null]
**views** | **int** | The view count of the video | [optional] [default to null]
**width** | **int** | The width of the video in px | [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


