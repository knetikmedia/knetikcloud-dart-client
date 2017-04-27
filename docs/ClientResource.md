# swagger.model.ClientResource

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**accessTokenValiditySeconds** | **int** | The expiration time of an initial oauth token in seconds | [optional] [default to null]
**clientKey** | **String** | The client_id field of the oauth token request | [default to null]
**grantTypes** | **List&lt;String&gt;** | The oauth grant type as in: password (username/password auth), client_credentials (server-to-server, private clients), refresh_token (to allow clients to refresh their initial token), facebook, google, etc) See documentation for a complete list. use dedicated endpoint PUT /grant-types to edit this list | [optional] [default to []]
**id** | **int** | Generated unique ID for the client | [optional] [default to null]
**isPublic** | **bool** | Set to true if the client is public i.e the secret key can be secured | [optional] [default to null]
**locked** | **bool** | Used to flag system clients that are not meant to be tinkered with | [optional] [default to null]
**name** | **String** | The friendly name of the client | [default to null]
**redirectUris** | **List&lt;String&gt;** | A redirection URL to use when granting access to third-parties (seldomly used) | [optional] [default to []]
**refreshTokenValiditySeconds** | **int** | The expiration time of a refresh oauth token in seconds | [optional] [default to null]
**secret** | **String** | The client-secret field of the oauth request when creating a private client | [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


