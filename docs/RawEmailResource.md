# swagger.model.RawEmailResource

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**body** | **String** | The body of the outgoing message. | [default to null]
**from** | **String** | Address to attribute the outgoing message to. Optional if the config email.out_address is set. | [optional] [default to null]
**html** | **bool** | Whether the body is to be treated as html. Default false. | [optional] [default to null]
**recipients** | **List&lt;int&gt;** | A list of user ids to send the message to. | [default to []]
**subject** | **String** | The subject of the outgoing message. | [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


