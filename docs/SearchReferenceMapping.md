# swagger.model.SearchReferenceMapping

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | Unique identifier for the mapping to protect against duplicates | [default to null]
**refIdField** | **String** | The field within the type that contains the id from the refType | [default to null]
**refType** | **String** | The index type that the mapping pulls data from | [default to null]
**sourceFieldToDestinationField** | **Map&lt;String, String&gt;** | A map whose keys are the field names in the refType and values are the field name in the type | [default to {}]
**type** | **String** | The index type that the mapping is for | [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


