# swagger.model.UserBaseResource

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**avatarUrl** | **String** | The url of the user&#39;s avatar image | [optional] [default to null]
**displayName** | **String** | The chosen display name of the user, defaults to username if not present | [optional] [default to null]
**email** | **String** | The user&#39;s email address (private). May be required and/or unique depending on system configuration (both on by default). Must match standard email requirements if provided (RFC 2822) | [default to null]
**fullname** | **String** | The user&#39;s full name (private) | [optional] [default to null]
**id** | **int** | The id of the user | [optional] [default to null]
**lastUpdated** | **int** | The date the user&#39;s info was last updated as a unix timestamp | [optional] [default to null]
**memberSince** | **int** | The user&#39;s date of registration as a unix timestamp | [optional] [default to null]
**username** | **String** | The login username for the user (private). May be set to match email if system does not require usernames separately. | [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


