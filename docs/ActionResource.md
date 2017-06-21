# swagger.model.ActionResource

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**category** | **String** | The category the action is in. All customer specific actions are in the &#39;custom&#39; category | [optional] [default to null]
**description** | **String** | The description of the action | [default to null]
**name** | **String** | The name of the action. Used as the unique id for reference | [default to null]
**tags** | **List&lt;String&gt;** | A list of tags for searching | [optional] [default to []]
**variables** | [**List&lt;ActionVariableResource&gt;**](ActionVariableResource.md) | The variables required for the action | [default to []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


