# swagger.model.VideoGroupPropertyDefinitionResource

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
**fileType** | **String** | If provided, a file type that the property must match | [optional] [default to null]
**maxCount** | **int** | If provided, the maximum number of files in the group | [optional] [default to null]
**maxFileSize** | **int** | If provided, the maximum allowed size per file in bytes | [optional] [default to null]
**minCount** | **int** | If provided, the minimum number of files in the group | [optional] [default to null]
**maxHeight** | **int** | If provided, the maximum height of each video | [optional] [default to null]
**maxLength** | **int** | If provided, the maximum length of each video | [optional] [default to null]
**maxWidth** | **int** | If provided, the maximum width of each video | [optional] [default to null]
**minHeight** | **int** | If provided, the minimum height of each video | [optional] [default to null]
**minLength** | **int** | If provided, the minimum length of each video | [optional] [default to null]
**minWidth** | **int** | If provided, the minimum width of each video | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


