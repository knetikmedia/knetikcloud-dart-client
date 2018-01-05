# swagger.model.GroupMemberResource

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**additionalProperties** | [**Map&lt;String, Property&gt;**](Property.md) | A map of additional properties, keyed on the property name (private). Must match the names and types defined in the template for this type, or be an extra not from the template | [optional] [default to {}]
**group** | [**SimpleGroupResource**](SimpleGroupResource.md) | The group. Id is the unique name | [optional] [default to null]
**implicit** | **bool** | Whether this membership is explicit (the user was added directly to the group) or implicit (the user was added only to one or more child groups) | [optional] [default to null]
**membershipId** | **int** | The id of the membership entry | [optional] [default to null]
**order** | **String** | The position of the member in the group if applicable. Read notes for details | [optional] [default to null]
**status** | **String** | The member&#39;s access level. Default: member | [optional] [default to null]
**template** | **String** | A template this member additional properties are validated against (private). May be null and no validation of properties will be done | [optional] [default to null]
**user** | [**SimpleUserResource**](SimpleUserResource.md) | The user | [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


