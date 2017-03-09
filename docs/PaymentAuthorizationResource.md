# swagger.model.PaymentAuthorizationResource

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**captured** | **bool** | Whether this authorization has been captured | [optional] [default to null]
**created** | **int** | The date this authorization was received, unix timestamp in seconds | [optional] [default to null]
**details** | [**Object**](Object.md) | The details for this authorization. Format dependent on payment provider | [optional] [default to null]
**id** | **int** | The id of the authorization | [optional] [default to null]
**invoice** | **int** | The invoice this authorization is intended to pay | [optional] [default to null]
**paymentType** | [**SimpleReferenceResource«int»**](SimpleReferenceResource«int».md) | The payment type (which provider) this payment is through | [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


