# swagger.model.DeviceResource

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**authorization** | **String** | The authorization code for the device | [optional] [default to null]
**condition** | **String** | The current condition of the device (New, Defective, Reconditioned) | [optional] [default to null]
**createdDate** | **int** | The date the device log was created | [optional] [default to null]
**data** | **Map&lt;String, String&gt;** | The key/value pairs for extended data | [optional] [default to {}]
**description** | **String** | The description of the device | [optional] [default to null]
**deviceType** | **String** | The type of the device | [optional] [default to null]
**id** | **int** | The unique ID for this device. Cannot be changed once created | [default to null]
**location** | **String** | The location of the device | [optional] [default to null]
**macAddress** | **String** | The MAC (media access control) address of the device | [optional] [default to null]
**make** | **String** | The make of the device | [optional] [default to null]
**model** | **String** | The model of the device | [optional] [default to null]
**name** | **String** | The name of the device | [optional] [default to null]
**os** | **String** | The OS (operating system) on the device | [optional] [default to null]
**serial** | **String** | The serial number of the device | [optional] [default to null]
**status** | **String** | The current status the device (Active, Pending Active, Inactive, Repair | [optional] [default to null]
**updatedDate** | **int** | The date the device log was updated | [optional] [default to null]
**user** | [**SimpleUserResource**](SimpleUserResource.md) | The user that owns the device | [optional] [default to null]
**users** | [**List&lt;SimpleUserResource&gt;**](SimpleUserResource.md) | The users currently using the device | [optional] [default to []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


