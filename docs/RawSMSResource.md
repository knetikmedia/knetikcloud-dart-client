# swagger.model.RawSMSResource

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**from** | **String** | The phone number to attribute the outgoing message to. Optional if the config text.out_number is set. | [optional] [default to null]
**recipients** | **List&lt;int&gt;** | A list of user ids to send the message to. | [default to []]
**text** | **String** | The body of the outgoing text message. | [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


