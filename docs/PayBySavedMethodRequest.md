# swagger.model.PayBySavedMethodRequest

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**paymentMethod** | **int** | The id of the payment method to use. Must belong to the caller, be public or have PAYMENTS_ADMIN permission | [default to null]
**userId** | **int** | The id of a user to bill. Must have PAYMENTS_ADMIN permission | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


