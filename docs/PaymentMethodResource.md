# swagger.model.PaymentMethodResource

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**createdDate** | **int** | The date/time this resource was created in seconds since unix epoch | [optional] [default to null]
**_default** | **bool** |  | [optional] [default to null]
**disabled** | **bool** | Whether this payment method is disabled or not | [optional] [default to null]
**expirationDate** | **int** | The expiration date for the payment method, expressed as seconds since epoch. Typically used for credit card payment methods | [optional] [default to null]
**expirationMonth** | **int** | The expiration month (1 - 12) for the payment method. Typically used for credit card payment methods | [optional] [default to null]
**expirationYear** | **int** | The expiration year for the payment method. Typically used for credit card payment methods | [optional] [default to null]
**id** | **int** | The unique ID for that resource | [optional] [default to null]
**last4** | **String** | The last 4 digits of the account number for the payment method. Typically used for credit card payment methods | [optional] [default to null]
**longDescription** | **String** | The user friendly name of that resource. Defaults to blank string | [optional] [default to null]
**name** | **String** | The user friendly name of that resource | [default to null]
**paymentMethodType** | [**PaymentMethodTypeResource**](PaymentMethodTypeResource.md) | The type of payment method. Must be a pre-existing value | [default to null]
**paymentType** | **String** | The generic payment type. Default is card | [optional] [default to null]
**shortDescription** | **String** | The user friendly name of that resource. Defaults to blank string | [optional] [default to null]
**sort** | **int** | The sort value for the payment method | [optional] [default to null]
**token** | **String** | The unique token for the payment method | [optional] [default to null]
**uniqueKey** | **String** | An optional unique identifier | [optional] [default to null]
**updatedDate** | **int** | The date/time this resource was last updated in seconds since unix epoch | [optional] [default to null]
**userId** | **int** | The user&#39;s id. If null, indicates a shared payment method that any user can use (i.e., &#39;wallet&#39;) | [optional] [default to null]
**verified** | **bool** |  | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


