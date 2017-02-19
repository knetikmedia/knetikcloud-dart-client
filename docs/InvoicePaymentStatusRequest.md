# swagger.model.InvoicePaymentStatusRequest

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**paymentMethodId** | **int** | If included, will set the payment method used on the invoice | [optional] [default to null]
**status** | **String** | The new status for the invoice. Additional options may be available based on configuration.  Allowable values: &#39;new&#39;, &#39;paid&#39;, &#39;hold&#39;, &#39;canceled&#39;, &#39;payment failed&#39;, &#39;partial refund&#39;, &#39;refund&#39; | [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


