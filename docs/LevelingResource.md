# swagger.model.LevelingResource

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**additionalProperties** | [**Map&lt;String, Property&gt;**](Property.md) | A map of additional properties, keyed on the property name.  Must match the names and types defined in the template for this item type | [optional] [default to {}]
**createdDate** | **int** | The date the leveling schema was created | [optional] [default to null]
**description** | **String** | The description of the leveling schema | [optional] [default to null]
**name** | **String** | The name of the leveling schema.  IMMUTABLE | [default to null]
**tiers** | [**List&lt;TierResource&gt;**](TierResource.md) | A set of tiers that contain experience boundaries | [optional] [default to []]
**triggerEventName** | **String** | The name of an event that will add one progress to this level when fired | [optional] [default to null]
**updatedDate** | **int** | The date the leveling schema was updated | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


