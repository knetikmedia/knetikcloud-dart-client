# swagger.model.MapPropertyDefinitionResource

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
**allowAdditional** | **bool** | Whether to allow additional properties beyond those specified or not | [optional] [default to null]
**properties** | [**List&lt;PropertyDefinitionResource&gt;**](PropertyDefinitionResource.md) | If provided, a list of property definitions for each map entry | [optional] [default to []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


