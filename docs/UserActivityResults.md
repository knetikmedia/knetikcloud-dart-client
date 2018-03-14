# swagger.model.UserActivityResults

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**currencyRewards** | [**List&lt;RewardCurrencyResource&gt;**](RewardCurrencyResource.md) | Any currency rewarded to this user | [optional] [default to []]
**itemRewards** | [**List&lt;RewardItemResource&gt;**](RewardItemResource.md) | Any items rewarded to this user | [optional] [default to []]
**rank** | **int** | The position of the user in the leaderboard. Null means non-compete or disqualification | [optional] [default to null]
**score** | **int** | The raw score in this leaderboard. Null means non-compete or disqualification | [optional] [default to null]
**tags** | **List&lt;String&gt;** | Any tags for the metric. Each unique tag will translate into a unique leaderboard. Maximum 10 tags and 50 characters each | [optional] [default to []]
**ties** | **int** | The number of users tied at this rank, including this user. 1 means no tie | [optional] [default to null]
**updatedDate** | **int** | The date this score was recorded or updated. Unix timestamp in seconds | [optional] [default to null]
**user** | [**SimpleUserResource**](SimpleUserResource.md) | The player for this entry | [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


