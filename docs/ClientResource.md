# swagger.model.ClientResource

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**accessTokenValiditySeconds** | **int** | The time limit of the token in seconds | [optional] [default to null]
**clientKey** | **String** | The client key, cannot be edited once created | [default to null]
**grantTypes** | **List&lt;String&gt;** | The grant types of the client | [optional] [default to []]
**id** | **int** | The id of the client | [optional] [default to null]
**isPublic** | **bool** | Whether the client is public or not | [optional] [default to null]
**locked** | **bool** | Whether a client is locked from being deleted | [optional] [default to null]
**name** | **String** | The name of the client | [default to null]
**redirectUris** | **List&lt;String&gt;** | The redirect uris of the client | [optional] [default to []]
**refreshTokenValiditySeconds** | **int** | The time limit of the refresh token in seconds | [optional] [default to null]
**secret** | **String** | The secret key of the client | [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


