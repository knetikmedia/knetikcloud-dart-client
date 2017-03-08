# swagger.model.QuestionResource

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**additionalProperties** | [**Map&lt;String, Property&gt;**](Property.md) | A map of additional properties, keyed on the property name.  Must match the names and types defined in the template for this item type | [optional] [default to {}]
**answers** | [**List&lt;AnswerResource&gt;**](AnswerResource.md) | The list of available answers | [optional] [default to []]
**category** | [**NestedCategory**](NestedCategory.md) | The category for the question | [default to null]
**createdDate** | **int** | The date/time this resource was created in seconds since unix epoch | [optional] [default to null]
**difficulty** | **int** | The difficulty of the question | [default to null]
**id** | **String** | The unique ID for that resource | [optional] [default to null]
**importId** | **int** | The id of the import job that created the question, or null if not from an import | [optional] [default to null]
**publishedDate** | **int** | When the question becomes available, null for never, in seconds since epoch | [optional] [default to null]
**question** | [**Property**](Property.md) | The question. Different &#39;type&#39; values indicate different structures as the question may be test, image, etc. See information on additional properties for the list and their structures | [default to null]
**source1** | **String** | The first source of the question | [optional] [default to null]
**source2** | **String** | The second source of the question | [optional] [default to null]
**tags** | **List&lt;String&gt;** | The list of tags | [optional] [default to []]
**template** | **String** | A question template this question is validated against (private). May be null and no validation of additional_properties will be done | [optional] [default to null]
**updatedDate** | **int** | The date/time this resource was last updated in seconds since unix epoch | [optional] [default to null]
**vendor** | **String** | The supplier of the question | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


