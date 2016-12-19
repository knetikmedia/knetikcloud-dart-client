# swagger.model.TemplateEmailResource

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**from** | **String** | Address to attribute the outgoing message to. Optional if the config email.out_address is set. | [optional] [default to null]
**recipients** | **List&lt;int&gt;** | A list of user ids to send the message to. | [default to []]
**templateKey** | **String** | The key for the template | [default to null]
**templateVars** | [**List&lt;KeyValuePair«string,string»&gt;**](KeyValuePair«string,string».md) | A list of variables to fill in the template | [optional] [default to []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


