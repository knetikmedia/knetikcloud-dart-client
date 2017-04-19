# swagger.model.UserInventoryAddRequest

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**note** | **String** | A note to be passed to the invoice or transaction | [default to null]
**overrides** | **List&lt;String&gt;** | A list of behaviors to ignore explicitely.  Ex: &#39;limited_gettable&#39; | [optional] [default to []]
**skipInvoice** | **bool** | If set to true will cause the endpoint to skip creation of cart and invoice to track the inventory change | [default to null]
**sku** | **String** | The specific SKU of the item to be added to the inventory | [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


