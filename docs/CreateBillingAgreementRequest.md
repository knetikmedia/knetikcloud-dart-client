# swagger.model.CreateBillingAgreementRequest

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**cancelUrl** | **String** | The endpoint URL to which PayPal should forward the user if they cancel (do not accept) the agreement | [default to null]
**returnUrl** | **String** | The endpoint URL to which PayPal should forward the user after they accept the agreement. This endpoint will receive information needed for the next step | [default to null]
**userId** | **int** | The ID of the user. Defaults to the logged in user | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


