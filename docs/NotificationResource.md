# swagger.model.NotificationResource

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data** | [**Object**](Object.md) | The data to send to websockets. Also used to fill in the templates | [optional] [default to null]
**notificationId** | **String** | The id of this individual notification. Default: random | [optional] [default to null]
**notificationTypeId** | **String** | The id of the notification type which will define message templates | [default to null]
**recipient** | **String** | The id of the recipient, dependent on the recipient_type. The user&#39;s id or the topic&#39;s id | [default to null]
**recipientType** | **String** | The type of recipient for the notification. Either a user, or all users in a topic | [default to null]
**sendDate** | **int** | The date this notification was sent | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


