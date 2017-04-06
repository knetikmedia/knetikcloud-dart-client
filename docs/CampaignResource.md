# swagger.model.CampaignResource

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**active** | **bool** | Whether the campaign is active or not.  Defaults to false | [optional] [default to null]
**additionalProperties** | [**Map&lt;String, Property&gt;**](Property.md) | A map of additional properties, keyed on the property name.  Must match the names and types defined in the template for this item type | [optional] [default to {}]
**createdDate** | **int** | The date/time this resource was created in seconds since unix epoch | [optional] [default to null]
**id** | **int** | The unique ID for that resource | [optional] [default to null]
**leaderboardStrategy** | **String** | The strategy for calculating the leaderboard. Defaults to highest score. Value MUST come from the list of available strategies from the Leaderboard Service | [optional] [default to null]
**longDescription** | **String** | The user friendly name of that resource. Defaults to blank string | [optional] [default to null]
**name** | **String** | The user friendly name of that resource | [default to null]
**nextChallenge** | **String** | The name of the next challenge coming up | [optional] [default to null]
**nextChallengeDate** | **int** | The date/time of the next challenge coming up | [optional] [default to null]
**rewardSet** | [**RewardSetResource**](RewardSetResource.md) | The rewards to give at the end of the campaign. When creating/updating only id is used. Reward set must be pre-existing | [optional] [default to null]
**rewardStatus** | **String** | Indicate if the rewards have been given out already | [optional] [default to null]
**shortDescription** | **String** | The user friendly name of that resource. Defaults to blank string | [optional] [default to null]
**template** | **String** | A campaign template this campaign is validated against (private). May be null and no validation of additional_properties will be done | [optional] [default to null]
**updatedDate** | **int** | The date/time this resource was last updated in seconds since unix epoch | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


