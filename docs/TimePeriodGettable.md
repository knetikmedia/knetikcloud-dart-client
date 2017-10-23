# swagger.model.TimePeriodGettable

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**description** | **String** |  | [optional] [default to null]
**typeHint** | **String** | Used for polymorphic type recognition and thus must match an expected type with additional properties | [optional] [default to null]
**getLimit** | **int** | The time period limit | [default to null]
**groupName** | **String** | The name of a group of items. Multiple items with the same group name will be limited together, leave null to be assigned a random unique name. It is typical that the other properties here will be the same for all, but this is not enforced and the item being recieved will use its settings. | [optional] [default to null]
**timeLength** | **int** | The length of time | [default to null]
**unitOfTime** | **String** | The unit of time | [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


