# swagger.model.UserItemLogResource

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** | The log entry id | [optional] [default to null]
**info** | **String** | Additional information defined by the type | [optional] [default to null]
**item** | [**SimpleReferenceResource«int»**](SimpleReferenceResource«int».md) | The item interacted with | [optional] [default to null]
**logDate** | **int** | The date/time this event occurred in seconds since epoch | [optional] [default to null]
**type** | **String** | The type of event | [optional] [default to null]
**user** | [**SimpleUserResource**](SimpleUserResource.md) | The user making the interaction | [optional] [default to null]
**userInventory** | **int** | The id of the inventory entry this event is related to, if any | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


