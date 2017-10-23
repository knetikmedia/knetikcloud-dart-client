# swagger.model.StripePaymentRequest

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**amount** | **num** | The amount to pay, if not the full remaining balance (leave out to pay in full, but be careful no other partial payment has been started) | [optional] [default to null]
**invoiceId** | **int** | The id of the invoice to pay | [default to null]
**token** | **String** | A token from Stripe to identify payment info to be tied to the customer | [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


