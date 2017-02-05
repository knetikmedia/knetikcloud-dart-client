# swagger.model.CategoryResource

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**active** | **bool** | Whether the category is currently active. If not, it and its questions will be filtered out. | [optional] [default to null]
**additionalProperties** | [**Map&lt;String, Property&gt;**](Property.md) | A map of additional properties, keyed on the property name.  Must match the names and types defined in the template for this item type | [optional] [default to {}]
**id** | **String** | The unique ID for this category | [optional] [default to null]
**name** | **String** | The name of this category. Cannot be blank | [default to null]
**template** | **String** | A category template this category is validated against (private). May be null and no validation of additional_properties will be done | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


