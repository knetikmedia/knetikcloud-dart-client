# swagger.model.RewardSetResource

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**createdDate** | **int** | The date/time this resource was created in seconds since unix epoch | [optional] [default to null]
**currencyRewards** | [**List&lt;RewardCurrencyResource&gt;**](RewardCurrencyResource.md) | The currency to give as rewards | [optional] [default to []]
**id** | **int** | The assigned unique ID for this reward set | [optional] [default to null]
**itemRewards** | [**List&lt;RewardItemResource&gt;**](RewardItemResource.md) | The items to give as rewards | [optional] [default to []]
**longDescription** | **String** | A longer describe the reward set, usually included in details | [optional] [default to null]
**maxPlacing** | **int** | The maximum placing that will receive a reward | [optional] [default to null]
**name** | **String** | The user friendly name for this reward set | [default to null]
**shortDescription** | **String** | A short paragraph to describe the reward set, usually included in listings.  Max 255 characters | [optional] [default to null]
**uniqueKey** | **String** | A provided unique key for this reward set | [optional] [default to null]
**updatedDate** | **int** | The date/time this resource was last updated in seconds since unix epoch | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


