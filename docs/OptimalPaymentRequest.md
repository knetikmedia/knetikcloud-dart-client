# swagger.model.OptimalPaymentRequest

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**email** | **String** | The email address of the user | [optional] [default to null]
**firstName** | **String** | The first name of the user | [optional] [default to null]
**invoiceId** | **int** | The id of the invoice to pay | [default to null]
**lastName** | **String** | The last name of the user | [optional] [default to null]
**onDecline** | **String** | The url to redirect the user to after declining payment | [default to null]
**onError** | **String** | The url to redirect the user to after an error in payment | [default to null]
**onSuccess** | **String** | The url to redirect the user to after successful payment | [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


