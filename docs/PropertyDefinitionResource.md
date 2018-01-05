# swagger.model.PropertyDefinitionResource

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**description** | **String** | The description of the property | [optional] [default to null]
**fieldList** | [**PropertyFieldListResource**](PropertyFieldListResource.md) | A list of the fields on both the property definition and property of this type | [optional] [default to null]
**friendlyName** | **String** | The friendly front-facing name of the property | [optional] [default to null]
**name** | **String** | The name of the property | [default to null]
**optionLabelPath** | **String** | The JSON path to the option label | [optional] [default to null]
**optionValuePath** | **String** | The JSON path to the option value | [optional] [default to null]
**optionsUrl** | **String** | URL of service containing the property options (assumed JSON array) | [optional] [default to null]
**required** | **bool** | Whether the property is required | [default to null]
**type** | **String** | The type of the property. Used for polymorphic type recognition and thus must match an expected type with additional properties. | [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


