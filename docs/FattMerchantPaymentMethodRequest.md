# swagger.model.FattMerchantPaymentMethodRequest

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**method** | [**FattMerchantPaymentMethod**](FattMerchantPaymentMethod.md) | The FattMerchant payment method being created/updated | [default to null]
**userId** | **int** | ID of the JSAPI user for whom the payment method is being created/updated. If ID is not that of the currently logged in user, FATMMERCHANT_ADMIN privilege is required. If ID is null, will use the currently logged in user&#39;s ID. | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


