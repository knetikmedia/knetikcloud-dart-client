# swagger.model.CurrencyResource

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**active** | **bool** | Whether the currency is active. Default true | [optional] [default to null]
**code** | **String** | The unique id code for the currency. Maximum 5 characters | [default to null]
**createdDate** | **int** | The unix timestamp in seconds the currency was added to the system | [optional] [default to null]
**factor** | **num** | The decimal to multiply the system base currency (from config &#39;currency&#39;) to localize to this one. Should be 1 for the base currency itself. | [default to null]
**icon** | **String** | The url for an icon of the currency | [optional] [default to null]
**name** | **String** | The name of the currency | [default to null]
**type** | **String** | The type of currency. Default &#39;real&#39; | [optional] [default to null]
**updatedDate** | **int** | The unix timestamp in seconds the currency was last updated in the system. | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


