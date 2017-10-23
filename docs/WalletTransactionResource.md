# swagger.model.WalletTransactionResource

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**balance** | **num** | The new balance of the wallet after the transaction | [optional] [default to null]
**createDate** | **int** | The unix timestamp in seconds of the transaction | [optional] [default to null]
**currencyCode** | **String** | The code of the currency for the transaction | [optional] [default to null]
**details** | **String** | The specific details of the transaction, such as a message from the admin that created it | [optional] [default to null]
**id** | **int** | The id of the transaction | [optional] [default to null]
**invoiceId** | **int** | The id of the invoice that spawned the transaction, if any | [optional] [default to null]
**isRefunded** | **bool** | Whether the transaction has been refunded | [optional] [default to null]
**response** | **String** | The response | [optional] [default to null]
**source** | **String** | The root source of the transaction | [optional] [default to null]
**successful** | **bool** | If the transaction was successful | [optional] [default to null]
**transactionId** | **String** | The payment gateway (external) transaction ID | [optional] [default to null]
**type** | **String** | The general type of the transaction | [optional] [default to null]
**typeHint** | **String** | The table name of the subclass | [optional] [default to null]
**user** | [**SimpleUserResource**](SimpleUserResource.md) | The owner of the wallet | [optional] [default to null]
**value** | **num** | The amount of the transaction, positive if a gain, negative if an expenditure | [optional] [default to null]
**walletId** | **int** | The id of the wallet this transaction affected | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


