# swagger.model.BatchResult

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**batchReturn** | [**List&lt;BatchReturn&gt;**](BatchReturn.md) | List of batch responses.  Returns in the order requested | [optional] [default to []]
**createdDate** | **int** | The date the batch call started processing | [optional] [default to null]
**id** | **String** | The token to use at the /batch/{token} endpoint if the request times out | [optional] [default to null]
**updatedDate** | **int** | The date the batch call finished processing | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


