# swagger.model.MetricResource

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**activityOccurenceId** | **int** | The id of the activity occurence where this score/metric occurred | [default to null]
**tags** | **List&lt;String&gt;** | Any tags for the metric. Each unique tag will translate into a unique leaderboard. Maximum 10 tags and 50 characters each | [optional] [default to []]
**userId** | **int** | The id of the user this metric is for. Default to caller and requires METRICS_ADMIN permission to specify another | [optional] [default to null]
**value** | **int** | The value/score of the metric | [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


