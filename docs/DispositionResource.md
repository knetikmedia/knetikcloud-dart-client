# swagger.model.DispositionResource

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**context** | **String** | The context of that resource. Required when passed to /dispositions rather than context specific endpoint | [optional] [default to null]
**contextId** | **String** | The context_id of that resource. Required when passed to /dispositions rather than context specific endpoint | [optional] [default to null]
**createdDate** | **int** | The date/time this resource was created in seconds since unix epoch | [optional] [default to null]
**id** | **int** | The unique ID for that resource | [optional] [default to null]
**name** | **String** | The name of the disposition, 1-20 characters. (ex: like/dislike/favorite, etc) | [default to null]
**user** | [**SimpleUserResource**](SimpleUserResource.md) | The user | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


