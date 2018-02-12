# swagger.model.BreGlobalResource

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**description** | **String** | A human readable description for display in admin pages | [optional] [default to null]
**id** | **String** | The id of the global definition. Default is a random guid. Cannot be updated | [optional] [default to null]
**key** | **String** | The key for the global. Must be unique when combined with scope names. Usually a single descriptive word like &#39;purchases&#39; or &#39;logins&#39; | [default to null]
**name** | **String** | A human readable name for display in admin pages | [optional] [default to null]
**scopes** | [**List&lt;BreGlobalScopeDefinition&gt;**](BreGlobalScopeDefinition.md) | A list of scoping parameters. Allows the global to have a different value in different context such as a count of purchases for each user (by putting a &#39;user&#39; scope in this list). When using this global in a rule these scopes will need to be mapped with an expression to provide a value, similar to the parameters in an action | [optional] [default to []]
**systemGlobal** | **bool** | Where this global came from. System globals cannot be removed or updated | [optional] [default to null]
**type** | **String** | The variable type the global stores. See the BRE variables endpoint for list | [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


