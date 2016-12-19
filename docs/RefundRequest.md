# swagger.model.RefundRequest

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**amount** | **double** | The amount to refund. If left off, will refund the remaining balance of the transaction or specific item balance (if SKU provided), whichever is less. | [optional] [default to null]
**notes** | **String** | Notes about or reason for the refund | [default to null]
**sku** | **String** | The SKU of a specific item from the invoice to refund. Affects the maximum refund amount (not to exceed the price of this item times quantity on invoice). Transaction must be tied to an invoice if used. | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


