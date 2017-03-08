# swagger.model.CreatePayPalPaymentRequest

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**cancelUrl** | **String** | The endpoint URL to which PayPal should forward the user to if they cancel the checkout process | [default to null]
**invoiceId** | **int** | The ID of an invoice to pay | [default to null]
**returnUrl** | **String** | The endpoint URL to which PayPal should forward the user after they accept. This endpoint will receive information needed for the next step | [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


