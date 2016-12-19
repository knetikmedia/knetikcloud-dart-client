# swagger.model.EntitlementItem

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**additionalProperties** | [**Map&lt;String, Property&gt;**](Property.md) | A map of additional properties, keyed on the property name.  Must match the names and types defined in the template for this item type, or be an extra not from the template | [optional] [default to {}]
**behaviors** | [**List&lt;Behavior&gt;**](Behavior.md) | The behaviors linked to the item, describing various options and interactions. May not be included in item lists | [optional] [default to []]
**category** | **String** | A category for filtering items | [optional] [default to null]
**createdDate** | **int** | The date the item was created, unix timestamp in seconds | [optional] [default to null]
**id** | **int** | The id of the item | [optional] [default to null]
**longDescription** | **String** | A long description of the item | [optional] [default to null]
**name** | **String** | The name of the item | [default to null]
**shortDescription** | **String** | A short description of the item, max 255 chars | [optional] [default to null]
**sort** | **int** | A number to use in sorting items.  Default 500 | [optional] [default to null]
**tags** | **List&lt;String&gt;** | List of tags used for filtering items | [optional] [default to []]
**template** | **String** | An item template this item is validated against.  May be null and no validation of additional_properties will be done.  Default &#x3D; null | [optional] [default to null]
**typeHint** | **String** | The type of the item | [default to null]
**uniqueKey** | **String** | The unique key for the item | [optional] [default to null]
**updatedDate** | **int** | The date the item was last updated, unix timestamp in seconds | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


