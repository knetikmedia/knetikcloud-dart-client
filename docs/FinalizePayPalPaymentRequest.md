# swagger.model.FinalizePayPalPaymentRequest

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**invoiceId** | **int** | The ID of the invoice that is being paid. Must match the invoice sent in originally | [default to null]
**payerId** | **String** | The ID of the payer that PayPal returned with the user at the return URL | [default to null]
**token** | **String** | The token that PayPal returned with the user in the return URL | [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


