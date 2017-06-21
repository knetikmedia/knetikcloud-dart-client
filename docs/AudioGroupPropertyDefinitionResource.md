# swagger.model.AudioGroupPropertyDefinitionResource

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**fieldList** | [**PropertyFieldListResource**](PropertyFieldListResource.md) | A list of the fields on both the property definition and property of this type | [optional] [default to null]
**name** | **String** | The name of the property | [default to null]
**required** | **bool** | Whether the property is required | [default to null]
**type** | **String** | The type of the property. Used for polymorphic type recognition and thus must match an expected type with additional properties. | [default to null]
**fileType** | **String** | If provided, a file type that the property must match | [optional] [default to null]
**maxCount** | **int** | If provided, the maximum number of files in the group | [optional] [default to null]
**maxFileSize** | **int** | If provided, the maximum allowed size per file in bytes | [optional] [default to null]
**minCount** | **int** | If provided, the minimum number of files in the group | [optional] [default to null]
**maxLength** | **int** | If provided, the maximum length of the audio | [optional] [default to null]
**minLength** | **int** | If provided, the minimum length of the audio | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


