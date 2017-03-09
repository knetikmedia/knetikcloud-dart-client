# swagger.model.UserActionLog

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**actionDescription** | **String** | A description of the action taken | [default to null]
**actionName** | **String** | The name of the action taken | [default to null]
**createdDate** | **int** | The date of the action, unix timestamp in seconds | [optional] [default to null]
**details** | **Map&lt;String, String&gt;** | A map of additional details such as the target of the action | [optional] [default to {}]
**id** | **String** | The id of the log entry | [optional] [default to null]
**requestId** | **String** | The id of the api request that spawned the action, if generated internally | [optional] [default to null]
**userId** | **int** | The id of the user that took the action, if any. Read-only if not posting with LOGS_ADMIN | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


