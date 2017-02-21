# swagger.model.ActivityOccurrenceJoinResult

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**entitlement** | [**ActivityEntitlementResource**](ActivityEntitlementResource.md) | The details on the entitlement object needed to enter the occurrence (if any) | [optional] [default to null]
**errorCode** | **int** | Zero if the user was/could be added to the occurrence. Jsapi error code indicating the reason of the failure otherwise | [default to null]
**message** | **String** | An error message if failure | [optional] [default to null]
**userId** | **int** | The user&#39;s id | [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


