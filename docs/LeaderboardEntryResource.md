# swagger.model.LeaderboardEntryResource

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**rank** | **int** | The position of the user in the leaderboard. Null means non-compete or disqualification | [optional] [default to null]
**score** | **int** | The raw score in this leaderboard. Null means non-compete or disqualification | [optional] [default to null]
**user** | [**SimpleUserResource**](SimpleUserResource.md) | The player for this entry | [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


