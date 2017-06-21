# swagger.model.The definition of an activity parameters: ex: difficulty level

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**advancedOption** | **bool** | Whether the setting is advanced. Default: false | [optional] [default to null]
**defaultValue** | **String** | The default value of the setting (must be in options array). Ex: easy | [default to null]
**description** | **String** | The description of the setting: Ex: Choose the difficulty level to show more or less complicated questions (for a trivia activity) | [optional] [default to null]
**key** | **String** | The unique ID for the setting: Ex: difficulty | [default to null]
**name** | **String** | The textual name of the setting: Ex: Difficulty Level | [default to null]
**options** | [**List&lt;SettingOption&gt;**](SettingOption.md) | The set of options available for this setting, Ex: easy, medium, hard | [default to []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


