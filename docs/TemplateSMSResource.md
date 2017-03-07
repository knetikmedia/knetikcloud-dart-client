# swagger.model.TemplateSMSResource

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**from** | **String** | The phone number to attribute the outgoing message to. Optional if the config text.out_number is set. | [optional] [default to null]
**localizer** | [**Localizer**](Localizer.md) |  | [optional] [default to null]
**recipients** | **List&lt;int&gt;** | A list of user ids to send the message to. | [default to []]
**templateKey** | **String** | The key for the template. | [default to null]
**templateVars** | **List&lt;String&gt;** | A list of values to fill in the template. Order matters. | [optional] [default to []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


