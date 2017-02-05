# swagger.model.ImportJobResource

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**categoryId** | **String** | The id of the category to assign all questions in the import to | [default to null]
**createdDate** | **int** | The date the job was created in seconds since unix epoc | [optional] [default to null]
**id** | **int** | The id of the job | [optional] [default to null]
**name** | **String** | A name for this import for later reference | [default to null]
**output** | [**List&lt;ImportJobOutputResource&gt;**](ImportJobOutputResource.md) | Error information from validation | [optional] [default to []]
**recordCount** | **int** | The number of questions form the CSV file. Filled in after validation | [optional] [default to null]
**status** | **String** | The status of the job | [optional] [default to null]
**updatedDate** | **int** | The date the job was last updated in seconds since unix epoc | [optional] [default to null]
**url** | **String** | The url of a CSV file to pull trivia questions from. Cannot be changed after initial POST | [default to null]
**vendor** | **String** | The vendor who supplied this set of questions | [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


