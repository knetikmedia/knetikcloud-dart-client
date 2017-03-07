# swagger.model.GroupResource

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**additionalProperties** | [**Map&lt;String, Property&gt;**](Property.md) | A map of additional properties, keyed on the property name.  Must match the names and types defined in the template for this item type | [optional] [default to {}]
**description** | **String** | A description of the group. Max 250 characters | [optional] [default to null]
**memberCount** | **int** | The number of users in the group | [optional] [default to null]
**messageOfTheDay** | **String** | A message of the day for members of the group | [optional] [default to null]
**name** | **String** | The name of the group. Max 50 characters | [default to null]
**parent** | **String** | The unique name of another group that this group is a subset of | [optional] [default to null]
**status** | **String** | The status which describes whether other users can freely join the group or not | [default to null]
**subMemberCount** | **int** | The number of users in child groups | [optional] [default to null]
**template** | **String** | A group template this group is validated against. May be null and no validation of additional_properties will be done | [optional] [default to null]
**uniqueName** | **String** | Unique name used in url and references. Uppercase, lowercase, numbers and hyphens only. Max 50 characters. Cannot be altered once created | [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


