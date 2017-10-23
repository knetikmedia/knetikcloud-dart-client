# swagger.model.QuestionTemplateResource

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**allowAdditional** | **bool** | Whether to allow additional properties beyond those specified or not | [optional] [default to null]
**answerProperty** | [**PropertyDefinitionResource**](PropertyDefinitionResource.md) | A property definition for all answers. If included each answer must match this definition&#39;s type and be valid | [optional] [default to null]
**createdDate** | **int** | The date/time this resource was created in seconds since unix epoch | [optional] [default to null]
**id** | **String** | The id of the template | [optional] [default to null]
**name** | **String** | The name of the template | [default to null]
**properties** | [**List&lt;PropertyDefinitionResource&gt;**](PropertyDefinitionResource.md) | The customized properties that are present | [optional] [default to []]
**questionProperty** | [**PropertyDefinitionResource**](PropertyDefinitionResource.md) | A property definition for the question itself. If included the answer must match this definition&#39;s type and be valid | [optional] [default to null]
**updatedDate** | **int** | The date/time this resource was last updated in seconds since unix epoch | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


