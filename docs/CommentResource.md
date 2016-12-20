# swagger.model.CommentResource

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**content** | **String** | The comment content of that resource | [default to null]
**context** | **String** | The type of object this comment applies to (ex: video, article, etc). Required when passed to /comments | [optional] [default to null]
**contextId** | **int** | The id of the object this comment applies to.  Required when passed to /comments | [optional] [default to null]
**createdDate** | **int** | The date/time this resource was created in seconds since epoch | [optional] [default to null]
**id** | **int** | The unique ID for that resource | [optional] [default to null]
**summary** | **String** | The summary of that resource | [optional] [default to null]
**updatedDate** | **int** | The date/time this resource was last updated in seconds since epoch | [optional] [default to null]
**user** | [**SimpleUserResource**](SimpleUserResource.md) | The user who created the comment | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


