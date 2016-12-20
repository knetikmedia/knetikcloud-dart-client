# swagger.model.PollResource

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**active** | **bool** | Whether the poll is active | [default to null]
**additionalProperties** | [**Map&lt;String, Property&gt;**](Property.md) | A map of additional properties, keyed on the property name.  Must match the names and types defined in the template for this item type | [optional] [default to {}]
**answers** | [**List&lt;PollAnswerResource&gt;**](PollAnswerResource.md) | The answers to the poll | [default to []]
**category** | [**NestedCategory**](NestedCategory.md) | The category for the poll | [default to null]
**createdDate** | **int** | The date/time this resource was created in seconds since unix epoch | [optional] [default to null]
**id** | **String** | The id of the poll | [optional] [default to null]
**tags** | **List&lt;String&gt;** | The tags for the poll | [optional] [default to []]
**template** | **String** | A poll template this poll is validated against (private). May be null and no validation of additional_properties will be done | [optional] [default to null]
**text** | **String** | The text of the poll | [default to null]
**type** | **String** | The media type of the poll | [default to null]
**updatedDate** | **int** | The date/time this resource was last updated in seconds since unix epoch | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


