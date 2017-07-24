# swagger.model.InventorySubscriptionResource

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**billDate** | **int** | The date the subscription will be billed | [optional] [default to null]
**credit** | **double** | A credit of money already applied to a subscription for the next bill, or a debt if negative | [optional] [default to null]
**creditLog** | [**List&lt;SubscriptionCreditResource&gt;**](SubscriptionCreditResource.md) | A record of past and present credit/debt changes | [optional] [default to []]
**graceEnd** | **int** | The date the grace period ends | [optional] [default to null]
**inventoryId** | **int** | The id of the inventory | [optional] [default to null]
**inventoryStatus** | **String** | The inventory status object | [optional] [default to null]
**itemId** | **int** | The id of the item | [optional] [default to null]
**paymentMethod** | [**PaymentMethodResource**](PaymentMethodResource.md) | The payment method object | [optional] [default to null]
**priceOverride** | **double** | The recurring price that has been set to override the base price. Null if not overriding | [optional] [default to null]
**priceOverrideReason** | **String** | An explanation for the reason the price is being overridden | [optional] [default to null]
**recurringPrice** | **double** | The default recurring price | [optional] [default to null]
**sku** | **String** | The recurring sku of the subscription | [optional] [default to null]
**startDate** | **int** | The date the subscription will start | [optional] [default to null]
**subscriptionStatus** | **int** | The status of the subscription | [optional] [default to null]
**user** | [**SimpleUserResource**](SimpleUserResource.md) | The user | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


