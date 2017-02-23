# swagger.model.BreTriggerResource

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**category** | **String** | The category this trigger belongs to. See endpoints for related asset information. All new triggers are in category &#39;custom&#39; | [optional] [default to null]
**eventName** | **String** | The unique name for the event. This serves as the unique identifier. Cannot be changed after creation | [default to null]
**parameters** | [**List&lt;BreTriggerParameterDefinition&gt;**](BreTriggerParameterDefinition.md) | A list af parameters that will be sent with the event when the trigger is fired. These must be included in the event and match the described types | [optional] [default to []]
**systemTrigger** | **bool** | Where this trigger came from. System triggers cannot be removed or updated | [optional] [default to null]
**triggerDescription** | **String** | A description of the trigger | [default to null]
**triggerName** | **String** | A human readable name for this trigger | [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


