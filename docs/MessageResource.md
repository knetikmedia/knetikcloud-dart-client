# swagger.model.MessageResource

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**content** | [**MessageContentResource**](MessageContentResource.md) | The content of the message in various formats | [default to null]
**recipient** | **String** | The id of the recipient, dependent on the recipient_type. The user&#39;s id or the topic&#39;s id. Required if sending directly to messaging service | [optional] [default to null]
**recipientType** | **String** | The type of recipient for the message. Either a user, or all users in a topic. Required if sending directly to messaging service | [optional] [default to null]
**subject** | **String** | The subject of the message. Required for email messages | [optional] [default to null]
**type** | **String** | The type of message for websocket type hinting. will be added to the payload with the key _type | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


