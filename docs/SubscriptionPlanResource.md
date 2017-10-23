# swagger.model.SubscriptionPlanResource

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**additionalProperties** | [**Map&lt;String, Property&gt;**](Property.md) | A map of additional properties, keyed on the property name.  Must match the names and types defined in the template for this subscription | [optional] [default to {}]
**billingCycleLength** | **int** | The length of the billing cycle in number of billing cycle unit | [default to null]
**billingCycleUnit** | **String** | The time period unit to apply to the length of billing cycles | [default to null]
**consolidated** | **bool** | Whether this plan will be renewed on the consolidated billing cycle | [default to null]
**currencyCode** | **String** | The ISO3 currency code to use for the fees | [default to null]
**endDate** | **int** | Used to schedule plan availability end date | [optional] [default to null]
**firstBillingCycleLength** | **int** | Optional override for the length of the first billing cycle before the first recurring billing | [optional] [default to null]
**firstBillingCycleUnit** | **String** | The time period unit to apply to the length of the first billing cycle. Required when first_billing_cycle_length is specified | [optional] [default to null]
**gracePeriod** | **int** | The number of late payment days before a subscription is canceled | [default to null]
**id** | **String** | The id of the plan used to generate the SKUs | [optional] [default to null]
**initialFee** | **num** | The fee charged when the subscription is purchased | [default to null]
**initialSku** | **String** | The SKU to be used when purchasing the subscription through the cart | [optional] [default to null]
**latePaymentFee** | **num** | The fee to add to the bill when an invoice has gone unpaid passed the grace period | [default to null]
**latePaymentSku** | **String** | The SKU that will show on the invoice when the subscription is delinquent | [optional] [default to null]
**locked** | **bool** | Whether this plan is locked because it has been purchased by at least one user.  When locked, a number of properties can no longer be changed | [optional] [default to null]
**maxBillAttempts** | **int** | The number of charge attempts before the subscription becomes delinquent | [default to null]
**maxCycles** | **int** | Maximum number of renewals. If a migration plan is provided, the subscription will automatically switch to it when this limit is reached | [optional] [default to null]
**migrateToPlan** | **String** | Automatically migrate to the specified plan when the subscription is first renewed | [optional] [default to null]
**minCycles** | **int** | The minimum number of renewals to charge for | [optional] [default to null]
**name** | **String** | The name of the plan used to generate the SKUs | [default to null]
**published** | **bool** | Whether this plan is currently available | [default to null]
**reactivationFee** | **num** | The fee to charge when a suspended subscription is to be re-activated | [default to null]
**reactivationSku** | **String** | The SKU that will show on the invoice when the subscription is re-activated after a suspension | [optional] [default to null]
**recurringFee** | **num** | The recurring fee to charge for each renewal | [default to null]
**recurringSku** | **String** | The SKU that will show on the invoice when the subscription is activated | [optional] [default to null]
**startDate** | **int** | Used to schedule plan availability start date | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


