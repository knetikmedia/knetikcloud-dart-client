# swagger.model.ChallengeActivityResource

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**activityId** | **int** | The id of the activity | [default to null]
**challengeId** | **int** | The id of the challenge | [optional] [default to null]
**entitlement** | [**ActivityEntitlementResource**](ActivityEntitlementResource.md) | The entitlement item needed to participate in the activity as part of this event. Null indicates free entry. When creating/updating only id is used. Item must be pre-existing | [optional] [default to null]
**id** | **int** | The unique ID for this resource | [optional] [default to null]
**rewardSet** | [**RewardSetResource**](RewardSetResource.md) | The rewards to give at the end of each occurence of the activity. When creating/updating only id is used. Reward set must be pre-existing | [optional] [default to null]
**settings** | [**List&lt;SelectedSettingResource&gt;**](SelectedSettingResource.md) | The list of settings and the select options | [optional] [default to []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


