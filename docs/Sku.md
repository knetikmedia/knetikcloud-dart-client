# swagger.model.Sku

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**additionalProperties** | [**Map&lt;String, Property&gt;**](Property.md) | A map of additional properties, keyed on the property name.  Must match the names and types defined in the template for this item type, or be an extra not from the template | [optional] [default to {}]
**currencyCode** | **String** | The currency code for the SKU, a three letter string (ISO3) | [default to null]
**description** | **String** | The friendly name of the SKU as it will appear on invoices and reports. Typically represents the option name like red, large, etc | [default to null]
**inventory** | **int** | The number of SKUs currently in stock | [optional] [default to null]
**minInventoryThreshold** | **int** | Alerts vendor when SKU inventory drops below this value | [optional] [default to null]
**originalPrice** | **double** | The base price before any sale | [default to null]
**price** | **double** | The current price of the SKU with sales, if any. Set original_price for the base | [optional] [default to null]
**published** | **bool** | Whether or not the SKU is currently published | [optional] [default to null]
**saleId** | **int** | The id of a sale affecting the price, if any | [optional] [default to null]
**saleName** | **String** | The name of a sale affecting the price, if any | [optional] [default to null]
**sku** | **String** | The stock keeping unit (SKU), a unique identifier for a given product.  Max 40 characters | [default to null]
**startDate** | **int** | The date the sku becomes available, unix timestamp in seconds.  If set to null, sku will become available immediately | [optional] [default to null]
**stopDate** | **int** | The date the sku becomes unavailable, unix timestamp in seconds.  If set to null, sku is always available | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


