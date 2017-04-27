# swagger.model.Cart

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**availableShippingOptions** | [**List&lt;CartShippingOption&gt;**](CartShippingOption.md) |  | [optional] [default to []]
**countryTax** | **double** |  | [optional] [default to null]
**coupons** | [**List&lt;CouponDefinition&gt;**](CouponDefinition.md) |  | [optional] [default to []]
**created** | **int** |  | [optional] [default to null]
**currencyCode** | **String** |  | [optional] [default to null]
**discountTotal** | **double** |  | [optional] [default to null]
**errorCode** | **int** |  | [optional] [default to null]
**errorMessage** | **String** |  | [optional] [default to null]
**grandTotal** | **double** |  | [optional] [default to null]
**id** | **String** |  | [optional] [default to null]
**invoiceId** | **double** |  | [optional] [default to null]
**items** | [**List&lt;CartLineItem&gt;**](CartLineItem.md) |  | [optional] [default to []]
**owner** | **int** |  | [optional] [default to null]
**selectedShippingOptions** | [**List&lt;CartShippingOption&gt;**](CartShippingOption.md) |  | [optional] [default to []]
**shippable** | **bool** |  | [optional] [default to null]
**shippingAddress** | [**CartShippingAddressRequest**](CartShippingAddressRequest.md) |  | [optional] [default to null]
**shippingCost** | **double** |  | [optional] [default to null]
**stateTax** | **double** |  | [optional] [default to null]
**status** | **String** |  | [optional] [default to null]
**subtotal** | **double** |  | [optional] [default to null]
**updated** | **int** |  | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


