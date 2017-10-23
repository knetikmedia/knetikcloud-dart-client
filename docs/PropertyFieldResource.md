# swagger.model.PropertyFieldResource

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**description** | **String** | A description of the field | [optional] [default to null]
**innerType** | **String** | The type of values within a &#39;list&#39; type field | [optional] [default to null]
**innerTypeFields** | [**List&lt;PropertyFieldResource&gt;**](PropertyFieldResource.md) | A description of fields within objects within a &#39;list&#39; type field, when inner_type is &#39;object&#39; | [optional] [default to []]
**name** | **String** | The name of the field | [optional] [default to null]
**required** | **bool** | Whether the field is required | [optional] [default to null]
**type** | **String** | The type of the field | [optional] [default to null]
**validValues** | **List&lt;String&gt;** | A list of valid values for &#39;enum&#39; type fields | [optional] [default to []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


