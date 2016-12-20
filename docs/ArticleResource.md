# swagger.model.ArticleResource

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**active** | **bool** | Whether the article is active | [default to null]
**additionalProperties** | [**Map&lt;String, Property&gt;**](Property.md) | A map of additional properties, keyed on the property name.  Must match the names and types defined in the template for this item type | [optional] [default to {}]
**body** | **String** | The body of the article | [default to null]
**category** | [**NestedCategory**](NestedCategory.md) | The category for the article | [default to null]
**createdDate** | **int** | The date/time this resource was created in seconds since unix epoch | [optional] [default to null]
**id** | **String** | The id of the article | [optional] [default to null]
**tags** | **List&lt;String&gt;** | The tags for the article | [optional] [default to []]
**template** | **String** | An article template this article is validated against (private). May be null and no validation of additional_properties will be done | [optional] [default to null]
**title** | **String** | The title of the article | [default to null]
**updatedDate** | **int** | The date/time this resource was last updated in seconds since unix epoch | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


