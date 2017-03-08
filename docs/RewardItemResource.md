# swagger.model.RewardItemResource

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**itemId** | **int** | The id of the item to reward | [default to null]
**itemName** | **String** | The name of the item to reward (read only, set by id) | [optional] [default to null]
**maxRank** | **int** | The highest number (worst) rank to give the reward to. Must be greater than or equal to minRank | [default to null]
**minRank** | **int** | The lowest number (best) rank to give the reward to. Must be greater than zero | [default to null]
**quantity** | **int** | How many copies to give | [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


