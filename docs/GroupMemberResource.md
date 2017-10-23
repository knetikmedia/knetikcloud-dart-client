# swagger.model.GroupMemberResource

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**additionalProperties** | [**Map&lt;String, Property&gt;**](Property.md) | A map of additional properties, keyed on the property name (private). Must match the names and types defined in the template for this type, or be an extra not from the template | [optional] [default to {}]
**avatarUrl** | **String** | The url of the user&#39;s avatar image | [optional] [default to null]
**displayName** | **String** | The public username of the user | [optional] [default to null]
**id** | **int** | The id of the user | [default to null]
**order** | **String** | The position of the member in the group if applicable. Read notes for details | [optional] [default to null]
**status** | **String** | The member&#39;s access level. Default: member | [optional] [default to null]
**template** | **String** | A template this member additional properties are validated against (private). May be null and no validation of properties will be done | [optional] [default to null]
**username** | **String** | The username of the user | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


