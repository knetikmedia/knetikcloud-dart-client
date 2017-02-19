# swagger.model.UserAchievementGroupResource

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**achievements** | [**List&lt;UserAchievementResource&gt;**](UserAchievementResource.md) | The list of achievements associated with the group | [default to []]
**groupName** | **String** | The name of the group.  If used by Leveling, this will represent the level name | [default to null]
**id** | **String** | The id of the achievement progress | [optional] [default to null]
**progress** | **int** | The current progress of the user on the group | [default to null]
**userId** | **int** | The id of the user whose progress is being tracked | [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


