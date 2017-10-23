# swagger.model.BreRule

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**actions** | [**List&lt;ActionContext«object»&gt;**](ActionContext«object».md) | A list of actions to execute, and the mapping for their parameters, when the rule runs. Minimum 1 | [default to []]
**condition** | [**PredicateResource**](PredicateResource.md) | A condition expression that must be met in a given event for the rule to run. Null to always run. | [optional] [default to null]
**conditionText** | **String** | The condition as a readable string. Filled in by the system from the condition | [optional] [default to null]
**description** | **String** | The human readable description of the rule | [optional] [default to null]
**enabled** | **bool** | Whether the rule is enabled to run (in conjunction with dates). Default true | [optional] [default to null]
**endDate** | **int** | The date the rule ceases to take effect, or null if never. Unix timestamp in seconds | [optional] [default to null]
**eventName** | **String** | The event name of the trigger this rule runs for. Affects which parameters are available | [default to null]
**id** | **String** | The id of the rule for later references. If left null a random guid will be generated. Must be unique. Cannot be changed | [optional] [default to null]
**name** | **String** | The human readable name of the rule | [default to null]
**sort** | **int** | Used to sort rules to control the order they run in. Larger numbered sort values run first.  Default 500 | [optional] [default to null]
**startDate** | **int** | The date the rule begins to take effect, or null if always. Unix timestamp in seconds | [optional] [default to null]
**systemRule** | **bool** | Whether the rule is a default part of the system. System rules cannot be edited or deleted, but may be disabled | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


