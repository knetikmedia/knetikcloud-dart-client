# swagger.model.UserInventoryResource

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**behaviorData** | [**Object**](Object.md) | A map of data for behaviors | [optional] [default to null]
**createdDate** | **int** | The date/time this resource was created in seconds since epoch | [optional] [default to null]
**expires** | **int** | The date/time this resource exires in seconds since epoch. Null for no expiration. For subscriptions, this is the end of the &#39;grace period&#39; if left unpaid | [optional] [default to null]
**id** | **int** | The id of the inventory | [optional] [default to null]
**invoiceId** | **int** | The id of the invoice that resulted in this inventory, if any | [optional] [default to null]
**itemId** | **int** | The id of the item | [optional] [default to null]
**itemName** | **String** | The name of the item | [optional] [default to null]
**itemTypeHint** | **String** | The type hint of the item | [optional] [default to null]
**status** | **String** | The status of the inventory. Pending inventory is not yet ready for use. Inactive inventory has expired or been used up | [optional] [default to null]
**updatedDate** | **int** | The date/time this resource was last updated in seconds since epoch | [optional] [default to null]
**user** | [**SimpleUserResource**](SimpleUserResource.md) | The id of the user this inventory belongs to | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


