# swagger.model.AchievementDefinitionResource

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**additionalProperties** | [**Map&lt;String, Property&gt;**](Property.md) | A map of additional properties, keyed on the property name.  Must match the names and types defined in the template for this resource type | [optional] [default to {}]
**createdDate** | **int** | The date/time this resource was created in seconds since unix epoch | [optional] [default to null]
**description** | **String** | The description of the achievement. Must be at least 2 characters in length. | [optional] [default to null]
**hidden** | **bool** | Whether the achievement is hidden from the user | [default to null]
**name** | **String** | The name of the achievement. Must be at least 6 characters in length. IMMUTABLE | [default to null]
**requiredProgress** | **int** | The required progress for the achievement definition | [default to null]
**ruleId** | **String** | The id of the rule generated for this achievement | [optional] [default to null]
**tags** | **List&lt;String&gt;** | The tags for the achievement definition | [optional] [default to []]
**template** | **String** | An achievement template this achievement is validated against (private). May be null and no validation of additional_properties will be done | [optional] [default to null]
**triggerEventName** | **String** | The name of the trigger event associated with this achievement | [optional] [default to null]
**updatedDate** | **int** | The date/time this resource was last updated in seconds since unix epoch | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


