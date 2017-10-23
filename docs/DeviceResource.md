# swagger.model.DeviceResource

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**additionalProperties** | [**Map&lt;String, Property&gt;**](Property.md) | A map of additional properties, keyed on the property name.  Must match the names and types defined in the template if one is specified | [optional] [default to {}]
**createdDate** | **int** | The date the device log was created | [optional] [default to null]
**description** | **String** | The description of the device | [optional] [default to null]
**deviceType** | **String** | The type of device. Use mobile to specifically register mobile devices. This particular type will be used to send and receive notifications | [optional] [default to null]
**id** | **String** | The unique ID for this device | [optional] [default to null]
**location** | **String** | The physical location of the device, coordinates or named place (office, living room, etc) | [optional] [default to null]
**macAddress** | **String** | The MAC (media access control) address of the device | [optional] [default to null]
**make** | **String** | The make of the device | [optional] [default to null]
**model** | **String** | The model of the device | [optional] [default to null]
**name** | **String** | The name of the device | [optional] [default to null]
**os** | **String** | The OS (operating system) on the device | [optional] [default to null]
**owner** | [**SimpleUserResource**](SimpleUserResource.md) | The user that owns the device | [optional] [default to null]
**serial** | **String** | The serial number of the device | [optional] [default to null]
**tags** | **List&lt;String&gt;** | Random tags to facilitate search | [optional] [default to []]
**template** | **String** | Use to describe and validate custom properties (custom schema). May be null and no validation of additional_properties will be done | [optional] [default to null]
**updatedDate** | **int** | The date the device log was updated | [optional] [default to null]
**users** | [**List&lt;SimpleUserResource&gt;**](SimpleUserResource.md) | The users currently using the device | [optional] [default to []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


