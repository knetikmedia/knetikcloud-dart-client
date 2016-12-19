# swagger.model.ActivityUserResource

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**host** | **bool** | Whether this user is the &#39;host&#39; of the occurrence and has increased access to settings/etc (default: false) | [optional] [default to null]
**id** | **int** | The id of the activity user entry | [optional] [default to null]
**joinedDate** | **int** | The date this user last joined the occurrence, unix timestamp in seconds | [optional] [default to null]
**leftDate** | **int** | The date this user last left the occurrence, unix timestamp in seconds. Null if still present | [optional] [default to null]
**metric** | [**MetricResource**](MetricResource.md) | The metric for the user&#39;s results, after the game is over | [optional] [default to null]
**status** | **String** | The current status of the user in the occurrence (default: present) | [optional] [default to null]
**user** | [**SimpleUserResource**](SimpleUserResource.md) | The user | [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


