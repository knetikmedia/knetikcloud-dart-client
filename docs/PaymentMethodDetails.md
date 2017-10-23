# swagger.model.PaymentMethodDetails

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**_default** | **bool** |  | [optional] [default to null]
**expirationDate** | **int** | The expiration date for the payment method, expressed as seconds since epoch. Typically used for credit card payment methods | [optional] [default to null]
**expirationMonth** | **int** | The expiration month (1 - 12) for the payment method. Typically used for credit card payment methods | [optional] [default to null]
**expirationYear** | **int** | The expiration year for the payment method. Typically used for credit card payment methods | [optional] [default to null]
**last4** | **String** | The last 4 digits of the account number for the payment method. Typically used for credit card payment methods | [optional] [default to null]
**sort** | **int** | The sort value for the payment method | [optional] [default to null]
**uniqueKey** | **String** | An optional unique identifier | [optional] [default to null]
**verified** | **bool** |  | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


