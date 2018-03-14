# swagger.model.ServiceDeployedEvent

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**client** | **String** |  | [optional] [default to null]
**customer** | **String** |  | [optional] [default to null]
**doNotBroadcast** | **bool** |  | [optional] [default to null]
**section** | **String** |  | [optional] [default to null]
**source** | [**Object**](Object.md) |  | [optional] [default to null]
**specifics** | **String** |  | [optional] [default to null]
**synchronous** | **bool** |  | [optional] [default to null]
**timestamp** | **int** |  | [optional] [default to null]
**type** | **String** | The type of the event. Used for polymorphic type recognition and thus must match an expected type | [default to null]
**events** | [**List&lt;BreTriggerResource&gt;**](BreTriggerResource.md) | The events fired by this service | [default to []]
**resources** | [**List&lt;ResourceTypeDescription&gt;**](ResourceTypeDescription.md) | The resources managed by this service | [default to []]
**serviceName** | **String** | The unique name for the service. This serves as the unique identifier. Cannot be changed after creation | [default to null]
**swaggerUrl** | **String** | The url of the swagger doc | [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


