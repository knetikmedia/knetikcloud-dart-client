# swagger.model.StoreItemTemplateResource

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**behaviors** | [**List&lt;ItemBehaviorDefinitionResource&gt;**](ItemBehaviorDefinitionResource.md) | The customized behaviors that are required or default for this type of item | [optional] [default to []]
**createdDate** | **int** | The date/time this resource was created in seconds since unix epoch | [optional] [default to null]
**id** | **String** | The id of the template | [optional] [default to null]
**name** | **String** | The name of the template | [default to null]
**properties** | [**List&lt;PropertyDefinitionResource&gt;**](PropertyDefinitionResource.md) | The customized properties that are present | [optional] [default to []]
**skuTemplate** | [**TemplateResource**](TemplateResource.md) | A template to apply to all skus on an item using this template | [optional] [default to null]
**updatedDate** | **int** | The date/time this resource was last updated in seconds since unix epoch | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


