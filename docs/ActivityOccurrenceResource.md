# swagger.model.ActivityOccurrenceResource

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**activityId** | **int** | The id of the activity | [default to null]
**challengeActivityId** | **int** | The id of the challenge activity (as part of the event, required if eventId set) | [optional] [default to null]
**createdDate** | **int** | The date this occurrence was created, unix timestamp in seconds | [optional] [default to null]
**entitlement** | [**ActivityEntitlementResource**](ActivityEntitlementResource.md) | The entitlement item required to enter the occurrence. Required if not part of an event. Must come from the set of entitlement items listed in the activity | [optional] [default to null]
**eventId** | **int** | The id of the event | [optional] [default to null]
**id** | **int** | The id of the activity occurrence | [optional] [default to null]
**rewardStatus** | **String** | Indicate if the rewards have been given out already | [optional] [default to null]
**settings** | [**List&lt;SelectedSettingResource&gt;**](SelectedSettingResource.md) | The values selected from the available settings defined for the activity. Ex: difficulty: hard. Can be left out if the activity is played during an event and the settings are already set at the event level. Ex: every monday, difficulty: hard, number of questions: 10, category: sport. Otherwise, the set must exactly match those of the activity. | [optional] [default to []]
**simulated** | **bool** | Whether this occurrence will be ran as a simulation. Simulations will not be rewarded. Useful for bot play or trials | [optional] [default to null]
**startDate** | **int** | The date this occurrence was started, unix timestamp in seconds. null if not yet started | [optional] [default to null]
**status** | **String** | The current status of the occurrence (default: OPEN) | [optional] [default to null]
**updatedDate** | **int** | The date this occurrence was last updated, unix timestamp in seconds | [optional] [default to null]
**users** | [**List&lt;ActivityUserResource&gt;**](ActivityUserResource.md) | The list of users participating in this occurrence. Can only be set directly with ACTIVITIES_ADMIN permission | [optional] [default to []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


