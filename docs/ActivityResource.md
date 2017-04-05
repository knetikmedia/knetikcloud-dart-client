# swagger.model.ActivityResource

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**createdDate** | **int** | The date/time this resource was created in seconds since unix epoch | [optional] [default to null]
**entitlements** | [**List&lt;ActivityEntitlementResource&gt;**](ActivityEntitlementResource.md) | The list of items that can be used for entitlement (wager amounts/etc) | [optional] [default to []]
**id** | **int** | The unique ID for that resource | [optional] [default to null]
**launch** | **String** | Details about how to launch the activity | [optional] [default to null]
**longDescription** | **String** | The user friendly name of that resource. Defaults to blank string | [optional] [default to null]
**name** | **String** | The user friendly name of that resource | [default to null]
**rewardSet** | [**RewardSetResource**](RewardSetResource.md) | The rewards to give at the end of each occurence of the activity. When creating/updating only id is used. Reward set must be pre-existing | [optional] [default to null]
**settings** | [**List&lt;AvailableSettingResource&gt;**](AvailableSettingResource.md) | The list of settings and their options available for this activity. Not populated when getting listing | [optional] [default to []]
**shortDescription** | **String** | The user friendly name of that resource. Defaults to blank string | [optional] [default to null]
**template** | **bool** | Whether this activity is a template for other activities. Default: false | [optional] [default to null]
**type** | **String** | The type of the activity | [default to null]
**uniqueKey** | **String** | The unique key (for static reference in code) of the activity | [optional] [default to null]
**updatedDate** | **int** | The date/time this resource was last updated in seconds since unix epoch | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


