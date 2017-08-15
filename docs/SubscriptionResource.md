# swagger.model.SubscriptionResource

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**additionalProperties** | [**Map&lt;String, Property&gt;**](Property.md) | A map of item additional properties, keyed on the property name. Must match the names and types defined in the template for this item type. | [optional] [default to {}]
**availability** | **String** | Who can purchase this subscription | [optional] [default to null]
**behaviors** | [**List&lt;Behavior&gt;**](Behavior.md) | The behaviors linked to the item, describing various options and interactions. May not be included in item lists | [optional] [default to []]
**category** | **String** | A category for filtering items | [optional] [default to null]
**consolidationDayOfMonth** | **int** | The day of the month 1..31 this subscription will renew | [optional] [default to null]
**createdDate** | **int** | The date the item was created, unix timestamp in seconds | [optional] [default to null]
**geoCountryList** | **List&lt;String&gt;** | A list of country iso3 codes to include in the blacklist/whitelist geo policy | [optional] [default to []]
**geoPolicyType** | **String** | Whether to use the geo_country_list as a black list or white list for item geographical availability | [optional] [default to null]
**id** | **int** | The id of the item | [optional] [default to null]
**longDescription** | **String** | A long description of the subscription | [optional] [default to null]
**name** | **String** | The name of the item | [default to null]
**plans** | [**List&lt;SubscriptionPlanResource&gt;**](SubscriptionPlanResource.md) | The billing options for this subscription | [optional] [default to []]
**shortDescription** | **String** | A short description of the subscription.  Max 255 characters | [optional] [default to null]
**sort** | **int** | A number to use in sorting items.  Default 500 | [optional] [default to null]
**storeEnd** | **int** | Used to schedule removal from store.  Null means the subscription will never be removed | [optional] [default to null]
**storeStart** | **int** | Used to schedule appearance in store.  Null means the subscription will appear now | [optional] [default to null]
**tags** | **List&lt;String&gt;** | List of tags used for filtering items | [optional] [default to []]
**template** | **String** | An item template this item is validated against. May be null and no validation of additional properties will be done. | [optional] [default to null]
**uniqueKey** | **String** | The unique key for the item | [optional] [default to null]
**updatedDate** | **int** | The date the item was last updated | [optional] [default to null]
**vendorId** | **int** | The vendor who provides the item | [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


