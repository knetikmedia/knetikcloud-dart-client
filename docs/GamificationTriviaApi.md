# swagger.api.GamificationTriviaApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://localhost:8080/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addAnswersUsingPOST**](GamificationTriviaApi.md#addAnswersUsingPOST) | **POST** /trivia/questions/{question_id}/answers | Add an answer to a question
[**addTagUsingPOST**](GamificationTriviaApi.md#addTagUsingPOST) | **POST** /trivia/questions/{id}/tags | Add a tag to a question
[**batchAddTagUsingPOST**](GamificationTriviaApi.md#batchAddTagUsingPOST) | **POST** /trivia/questions/tags | Add a tag to a batch of questions
[**batchRemoveTagUsingDELETE**](GamificationTriviaApi.md#batchRemoveTagUsingDELETE) | **DELETE** /trivia/questions/tags/{tag} | Remove a tag from a batch of questions
[**bulkUpdateUsingPUT**](GamificationTriviaApi.md#bulkUpdateUsingPUT) | **PUT** /trivia/questions | Bulk update questions
[**countQuestionsUsingGET**](GamificationTriviaApi.md#countQuestionsUsingGET) | **GET** /trivia/questions/count | Count questions based on filters.
[**createQuestionTemplateUsingPOST**](GamificationTriviaApi.md#createQuestionTemplateUsingPOST) | **POST** /trivia/questions/templates | Create a question template
[**createQuestionUsingPOST**](GamificationTriviaApi.md#createQuestionUsingPOST) | **POST** /trivia/questions | Create a question
[**createUsingPOST**](GamificationTriviaApi.md#createUsingPOST) | **POST** /trivia/import | Create an import job
[**deleteQuestionTemplateUsingDELETE**](GamificationTriviaApi.md#deleteQuestionTemplateUsingDELETE) | **DELETE** /trivia/questions/templates/{id} | Delete a question template
[**deleteQuestionUsingDELETE**](GamificationTriviaApi.md#deleteQuestionUsingDELETE) | **DELETE** /trivia/questions/{id} | Delete a question
[**deleteUsingDELETE**](GamificationTriviaApi.md#deleteUsingDELETE) | **DELETE** /trivia/import/{id} | Delete an import job
[**getAnswerUsingGET**](GamificationTriviaApi.md#getAnswerUsingGET) | **GET** /trivia/questions/{question_id}/answers/{id} | Get an answer for a question
[**getAnswersUsingGET**](GamificationTriviaApi.md#getAnswersUsingGET) | **GET** /trivia/questions/{question_id}/answers | List the answers available for a question
[**getListUsingGET1**](GamificationTriviaApi.md#getListUsingGET1) | **GET** /trivia/import | Get a list of import job
[**getQuestionTemplateUsingGET**](GamificationTriviaApi.md#getQuestionTemplateUsingGET) | **GET** /trivia/questions/templates/{id} | Get a single question template
[**getQuestionTemplatesUsingGET**](GamificationTriviaApi.md#getQuestionTemplatesUsingGET) | **GET** /trivia/questions/templates | List and search question templates
[**getQuestionUsingGET**](GamificationTriviaApi.md#getQuestionUsingGET) | **GET** /trivia/questions/{id} | Get a single question
[**getQuestionsDeltaUsingGET**](GamificationTriviaApi.md#getQuestionsDeltaUsingGET) | **GET** /trivia/questions/delta | List question deltas in ascending order of updated date
[**getQuestionsUsingGET**](GamificationTriviaApi.md#getQuestionsUsingGET) | **GET** /trivia/questions | List and search questions
[**getTagsUsingGET1**](GamificationTriviaApi.md#getTagsUsingGET1) | **GET** /trivia/questions/{id}/tags | List the tags for a question
[**getTagsUsingGET2**](GamificationTriviaApi.md#getTagsUsingGET2) | **GET** /trivia/tags | List and search tags by the beginning of the string
[**getUsingGET**](GamificationTriviaApi.md#getUsingGET) | **GET** /trivia/import/{id} | Get an import job
[**removeAnswersUsingDELETE**](GamificationTriviaApi.md#removeAnswersUsingDELETE) | **DELETE** /trivia/questions/{question_id}/answers/{id} | Remove an answer from a question
[**removeTagUsingDELETE**](GamificationTriviaApi.md#removeTagUsingDELETE) | **DELETE** /trivia/questions/{id}/tags/{tag} | Remove a tag from a question
[**startProcessUsingPOST**](GamificationTriviaApi.md#startProcessUsingPOST) | **POST** /trivia/import/{id}/process | Start processing an import job
[**updateAnswerUsingPUT**](GamificationTriviaApi.md#updateAnswerUsingPUT) | **PUT** /trivia/questions/{question_id}/answers/{id} | Update an answer for a question
[**updateQuestionTemplateUsingPUT**](GamificationTriviaApi.md#updateQuestionTemplateUsingPUT) | **PUT** /trivia/questions/templates/{id} | Update a question template
[**updateQuestionUsingPUT**](GamificationTriviaApi.md#updateQuestionUsingPUT) | **PUT** /trivia/questions/{id} | Update a question
[**updateUsingPUT**](GamificationTriviaApi.md#updateUsingPUT) | **PUT** /trivia/import/{id} | Update an import job


# **addAnswersUsingPOST**
> AnswerResource addAnswersUsingPOST(questionId, answer)

Add an answer to a question

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new GamificationTriviaApi();
var questionId = questionId_example; // String | The id of the question
var answer = new AnswerResource(); // AnswerResource | The new answer

try { 
    var result = api_instance.addAnswersUsingPOST(questionId, answer);
    print(result);
} catch (e) {
    print("Exception when calling GamificationTriviaApi->addAnswersUsingPOST: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **questionId** | **String**| The id of the question | 
 **answer** | [**AnswerResource**](AnswerResource.md)| The new answer | [optional] 

### Return type

[**AnswerResource**](AnswerResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **addTagUsingPOST**
> addTagUsingPOST(id, tag)

Add a tag to a question

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new GamificationTriviaApi();
var id = id_example; // String | The id of the question
var tag = new String(); // String | The new tag

try { 
    api_instance.addTagUsingPOST(id, tag);
} catch (e) {
    print("Exception when calling GamificationTriviaApi->addTagUsingPOST: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the question | 
 **tag** | **String**| The new tag | [optional] 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **batchAddTagUsingPOST**
> int batchAddTagUsingPOST(tag, filterSearch, filterIdset, filterCategory, filterTag, filterTagset, filterType, filterPublished, filterImportId)

Add a tag to a batch of questions

All questions that dont't have the tag and match filters will have it added. The returned number is the number of questions updated.

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new GamificationTriviaApi();
var tag = new String(); // String | The tag to add
var filterSearch = filterSearch_example; // String | Filter for documents whose question, answers or tags contains provided string
var filterIdset = filterIdset_example; // String | Filter for documents whose id is in the comma separated list provided
var filterCategory = filterCategory_example; // String | Filter for questions with specified category, by id
var filterTag = filterTag_example; // String | Filter for questions with specified tag
var filterTagset = filterTagset_example; // String | Filter for questions with specified tags (separated by comma)
var filterType = filterType_example; // String | Filter for questions with specified type
var filterPublished = true; // bool | Filter for questions currenctly published or not
var filterImportId = 789; // int | Filter for questions from a specific import job

try { 
    var result = api_instance.batchAddTagUsingPOST(tag, filterSearch, filterIdset, filterCategory, filterTag, filterTagset, filterType, filterPublished, filterImportId);
    print(result);
} catch (e) {
    print("Exception when calling GamificationTriviaApi->batchAddTagUsingPOST: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tag** | **String**| The tag to add | [optional] 
 **filterSearch** | **String**| Filter for documents whose question, answers or tags contains provided string | [optional] 
 **filterIdset** | **String**| Filter for documents whose id is in the comma separated list provided | [optional] 
 **filterCategory** | **String**| Filter for questions with specified category, by id | [optional] 
 **filterTag** | **String**| Filter for questions with specified tag | [optional] 
 **filterTagset** | **String**| Filter for questions with specified tags (separated by comma) | [optional] 
 **filterType** | **String**| Filter for questions with specified type | [optional] 
 **filterPublished** | **bool**| Filter for questions currenctly published or not | [optional] 
 **filterImportId** | **int**| Filter for questions from a specific import job | [optional] 

### Return type

**int**

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **batchRemoveTagUsingDELETE**
> int batchRemoveTagUsingDELETE(tag, filterSearch, filterIdset, filterCategory, filterTag, filterTagset, filterType, filterPublished, filterImportId)

Remove a tag from a batch of questions

ll questions that have the tag and match filters will have it removed. The returned number is the number of questions updated.

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new GamificationTriviaApi();
var tag = tag_example; // String | The tag to remove
var filterSearch = filterSearch_example; // String | Filter for documents whose question, answers or tags contains provided string
var filterIdset = filterIdset_example; // String | Filter for documents whose id is in the comma separated list provided
var filterCategory = filterCategory_example; // String | Filter for questions with specified category, by id
var filterTag = filterTag_example; // String | Filter for questions with specified tag
var filterTagset = filterTagset_example; // String | Filter for questions with specified tags (separated by comma)
var filterType = filterType_example; // String | Filter for questions with specified type.  Allowable values: ('TEXT', 'IMAGE', 'VIDEO', 'AUDIO')
var filterPublished = true; // bool | Filter for questions currenctly published or not
var filterImportId = 789; // int | Filter for questions from a specific import job

try { 
    var result = api_instance.batchRemoveTagUsingDELETE(tag, filterSearch, filterIdset, filterCategory, filterTag, filterTagset, filterType, filterPublished, filterImportId);
    print(result);
} catch (e) {
    print("Exception when calling GamificationTriviaApi->batchRemoveTagUsingDELETE: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tag** | **String**| The tag to remove | 
 **filterSearch** | **String**| Filter for documents whose question, answers or tags contains provided string | [optional] 
 **filterIdset** | **String**| Filter for documents whose id is in the comma separated list provided | [optional] 
 **filterCategory** | **String**| Filter for questions with specified category, by id | [optional] 
 **filterTag** | **String**| Filter for questions with specified tag | [optional] 
 **filterTagset** | **String**| Filter for questions with specified tags (separated by comma) | [optional] 
 **filterType** | **String**| Filter for questions with specified type.  Allowable values: (&#39;TEXT&#39;, &#39;IMAGE&#39;, &#39;VIDEO&#39;, &#39;AUDIO&#39;) | [optional] 
 **filterPublished** | **bool**| Filter for questions currenctly published or not | [optional] 
 **filterImportId** | **int**| Filter for questions from a specific import job | [optional] 

### Return type

**int**

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **bulkUpdateUsingPUT**
> int bulkUpdateUsingPUT(question, filterSearch, filterIdset, filterCategory, filterTagset, filterType, filterPublished, filterImportId)

Bulk update questions

Will update all questions that match filters used (or all questions in system if no filters used). Body should match a question resource with only those properties you wish to set. Null values will be ignored. Returned number is how many were updated.

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new GamificationTriviaApi();
var question = new QuestionResource(); // QuestionResource | New values for a set of question fields
var filterSearch = filterSearch_example; // String | Filter for documents whose question, answers or tags contains provided string
var filterIdset = filterIdset_example; // String | Filter for documents whose id is in the comma separated list provided
var filterCategory = filterCategory_example; // String | Filter for questions with specified category, by id
var filterTagset = filterTagset_example; // String | Filter for questions with specified tags (separated by comma)
var filterType = filterType_example; // String | Filter for questions with specified type.  Allowable values: ('TEXT', 'IMAGE', 'VIDEO', 'AUDIO')
var filterPublished = true; // bool | Filter for questions currenctly published or not
var filterImportId = 789; // int | Filter for questions from a specific import job

try { 
    var result = api_instance.bulkUpdateUsingPUT(question, filterSearch, filterIdset, filterCategory, filterTagset, filterType, filterPublished, filterImportId);
    print(result);
} catch (e) {
    print("Exception when calling GamificationTriviaApi->bulkUpdateUsingPUT: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **question** | [**QuestionResource**](QuestionResource.md)| New values for a set of question fields | [optional] 
 **filterSearch** | **String**| Filter for documents whose question, answers or tags contains provided string | [optional] 
 **filterIdset** | **String**| Filter for documents whose id is in the comma separated list provided | [optional] 
 **filterCategory** | **String**| Filter for questions with specified category, by id | [optional] 
 **filterTagset** | **String**| Filter for questions with specified tags (separated by comma) | [optional] 
 **filterType** | **String**| Filter for questions with specified type.  Allowable values: (&#39;TEXT&#39;, &#39;IMAGE&#39;, &#39;VIDEO&#39;, &#39;AUDIO&#39;) | [optional] 
 **filterPublished** | **bool**| Filter for questions currenctly published or not | [optional] 
 **filterImportId** | **int**| Filter for questions from a specific import job | [optional] 

### Return type

**int**

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **countQuestionsUsingGET**
> int countQuestionsUsingGET(filterSearch, filterIdset, filterCategory, filterTag, filterTagset, filterType, filterPublished)

Count questions based on filters.

This is also provided by the list endpoint so you don't need to call this for pagination purposes

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new GamificationTriviaApi();
var filterSearch = filterSearch_example; // String | Filter for documents whose question, answers or tags contains provided string
var filterIdset = filterIdset_example; // String | Filter for documents whose id is in the comma separated list provided
var filterCategory = filterCategory_example; // String | Filter for questions with specified category, by id
var filterTag = filterTag_example; // String | Filter for questions with specified tag
var filterTagset = filterTagset_example; // String | Filter for questions with specified tags (separated by comma)
var filterType = filterType_example; // String | Filter for questions with specified type.  Allowable values: ('TEXT', 'IMAGE', 'VIDEO', 'AUDIO')
var filterPublished = true; // bool | Filter for questions currenctly published or not

try { 
    var result = api_instance.countQuestionsUsingGET(filterSearch, filterIdset, filterCategory, filterTag, filterTagset, filterType, filterPublished);
    print(result);
} catch (e) {
    print("Exception when calling GamificationTriviaApi->countQuestionsUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterSearch** | **String**| Filter for documents whose question, answers or tags contains provided string | [optional] 
 **filterIdset** | **String**| Filter for documents whose id is in the comma separated list provided | [optional] 
 **filterCategory** | **String**| Filter for questions with specified category, by id | [optional] 
 **filterTag** | **String**| Filter for questions with specified tag | [optional] 
 **filterTagset** | **String**| Filter for questions with specified tags (separated by comma) | [optional] 
 **filterType** | **String**| Filter for questions with specified type.  Allowable values: (&#39;TEXT&#39;, &#39;IMAGE&#39;, &#39;VIDEO&#39;, &#39;AUDIO&#39;) | [optional] 
 **filterPublished** | **bool**| Filter for questions currenctly published or not | [optional] 

### Return type

**int**

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createQuestionTemplateUsingPOST**
> QuestionTemplateResource createQuestionTemplateUsingPOST(questionTemplateResource)

Create a question template

Question templates define a type of question and the properties they have

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new GamificationTriviaApi();
var questionTemplateResource = new QuestionTemplateResource(); // QuestionTemplateResource | The question template resource object

try { 
    var result = api_instance.createQuestionTemplateUsingPOST(questionTemplateResource);
    print(result);
} catch (e) {
    print("Exception when calling GamificationTriviaApi->createQuestionTemplateUsingPOST: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **questionTemplateResource** | [**QuestionTemplateResource**](QuestionTemplateResource.md)| The question template resource object | [optional] 

### Return type

[**QuestionTemplateResource**](QuestionTemplateResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createQuestionUsingPOST**
> QuestionResource createQuestionUsingPOST(question)

Create a question

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new GamificationTriviaApi();
var question = new QuestionResource(); // QuestionResource | The new question

try { 
    var result = api_instance.createQuestionUsingPOST(question);
    print(result);
} catch (e) {
    print("Exception when calling GamificationTriviaApi->createQuestionUsingPOST: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **question** | [**QuestionResource**](QuestionResource.md)| The new question | [optional] 

### Return type

[**QuestionResource**](QuestionResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createUsingPOST**
> ImportJobResource createUsingPOST(request)

Create an import job

Set up a job to import a set of trivia questions from a cvs file at a remote url. the file will be validated asynchronously but will not be processed until started manually with the process endpoint.

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new GamificationTriviaApi();
var request = new ImportJobResource(); // ImportJobResource | The new import job

try { 
    var result = api_instance.createUsingPOST(request);
    print(result);
} catch (e) {
    print("Exception when calling GamificationTriviaApi->createUsingPOST: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**ImportJobResource**](ImportJobResource.md)| The new import job | [optional] 

### Return type

[**ImportJobResource**](ImportJobResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteQuestionTemplateUsingDELETE**
> deleteQuestionTemplateUsingDELETE(id, cascade)

Delete a question template

If cascade = 'detach', it will force delete the template even if it's attached to other objects

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new GamificationTriviaApi();
var id = id_example; // String | The id of the template
var cascade = cascade_example; // String | The value needed to delete used templates

try { 
    api_instance.deleteQuestionTemplateUsingDELETE(id, cascade);
} catch (e) {
    print("Exception when calling GamificationTriviaApi->deleteQuestionTemplateUsingDELETE: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the template | 
 **cascade** | **String**| The value needed to delete used templates | [optional] 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteQuestionUsingDELETE**
> deleteQuestionUsingDELETE(id)

Delete a question

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new GamificationTriviaApi();
var id = id_example; // String | The id of the question

try { 
    api_instance.deleteQuestionUsingDELETE(id);
} catch (e) {
    print("Exception when calling GamificationTriviaApi->deleteQuestionUsingDELETE: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the question | 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteUsingDELETE**
> deleteUsingDELETE(id)

Delete an import job

Also deletes all questions that were imported by it

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new GamificationTriviaApi();
var id = 789; // int | The id of the job

try { 
    api_instance.deleteUsingDELETE(id);
} catch (e) {
    print("Exception when calling GamificationTriviaApi->deleteUsingDELETE: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The id of the job | 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAnswerUsingGET**
> AnswerResource getAnswerUsingGET(questionId, id)

Get an answer for a question

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new GamificationTriviaApi();
var questionId = questionId_example; // String | The id of the question
var id = id_example; // String | The id of the answer

try { 
    var result = api_instance.getAnswerUsingGET(questionId, id);
    print(result);
} catch (e) {
    print("Exception when calling GamificationTriviaApi->getAnswerUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **questionId** | **String**| The id of the question | 
 **id** | **String**| The id of the answer | 

### Return type

[**AnswerResource**](AnswerResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAnswersUsingGET**
> List<AnswerResource> getAnswersUsingGET(questionId)

List the answers available for a question

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new GamificationTriviaApi();
var questionId = questionId_example; // String | The id of the question

try { 
    var result = api_instance.getAnswersUsingGET(questionId);
    print(result);
} catch (e) {
    print("Exception when calling GamificationTriviaApi->getAnswersUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **questionId** | **String**| The id of the question | 

### Return type

[**List<AnswerResource>**](AnswerResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getListUsingGET1**
> Page«ImportJobResource» getListUsingGET1(filterVendor, filterCategory, filterName, filterStatus, size, page, order)

Get a list of import job

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new GamificationTriviaApi();
var filterVendor = filterVendor_example; // String | Filter for jobs by vendor id
var filterCategory = filterCategory_example; // String | Filter for jobs by category id
var filterName = filterName_example; // String | Filter for jobs which name *STARTS* with the given string
var filterStatus = filterStatus_example; // String | Filter for jobs that are in a specific set of statuses (comma separated)
var size = 56; // int | The number of objects returned per page
var page = 56; // int | The number of the page returned, starting with 1
var order = order_example; // String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]

try { 
    var result = api_instance.getListUsingGET1(filterVendor, filterCategory, filterName, filterStatus, size, page, order);
    print(result);
} catch (e) {
    print("Exception when calling GamificationTriviaApi->getListUsingGET1: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterVendor** | **String**| Filter for jobs by vendor id | [optional] 
 **filterCategory** | **String**| Filter for jobs by category id | [optional] 
 **filterName** | **String**| Filter for jobs which name *STARTS* with the given string | [optional] 
 **filterStatus** | **String**| Filter for jobs that are in a specific set of statuses (comma separated) | [optional] 
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **String**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to id:ASC]

### Return type

[**Page«ImportJobResource»**](Page«ImportJobResource».md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getQuestionTemplateUsingGET**
> QuestionTemplateResource getQuestionTemplateUsingGET(id)

Get a single question template

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new GamificationTriviaApi();
var id = id_example; // String | The id of the template

try { 
    var result = api_instance.getQuestionTemplateUsingGET(id);
    print(result);
} catch (e) {
    print("Exception when calling GamificationTriviaApi->getQuestionTemplateUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the template | 

### Return type

[**QuestionTemplateResource**](QuestionTemplateResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getQuestionTemplatesUsingGET**
> Page«QuestionTemplateResource» getQuestionTemplatesUsingGET(size, page, order)

List and search question templates

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new GamificationTriviaApi();
var size = 56; // int | The number of objects returned per page
var page = 56; // int | The number of the page returned, starting with 1
var order = order_example; // String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]

try { 
    var result = api_instance.getQuestionTemplatesUsingGET(size, page, order);
    print(result);
} catch (e) {
    print("Exception when calling GamificationTriviaApi->getQuestionTemplatesUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **String**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to id:ASC]

### Return type

[**Page«QuestionTemplateResource»**](Page«QuestionTemplateResource».md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getQuestionUsingGET**
> QuestionResource getQuestionUsingGET(id)

Get a single question

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new GamificationTriviaApi();
var id = id_example; // String | The id of the question

try { 
    var result = api_instance.getQuestionUsingGET(id);
    print(result);
} catch (e) {
    print("Exception when calling GamificationTriviaApi->getQuestionUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the question | 

### Return type

[**QuestionResource**](QuestionResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getQuestionsDeltaUsingGET**
> List<DeltaResource> getQuestionsDeltaUsingGET(since)

List question deltas in ascending order of updated date

The 'since' parameter is important to avoid getting a full list of all questions. Implementors should make sure they pass the updated date of the last resource loaded, not the date of the last request, in order to avoid gaps

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new GamificationTriviaApi();
var since = 789; // int | Timestamp in seconds

try { 
    var result = api_instance.getQuestionsDeltaUsingGET(since);
    print(result);
} catch (e) {
    print("Exception when calling GamificationTriviaApi->getQuestionsDeltaUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **since** | **int**| Timestamp in seconds | [optional] 

### Return type

[**List<DeltaResource>**](DeltaResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getQuestionsUsingGET**
> Page«QuestionResource» getQuestionsUsingGET(size, page, order, filterSearch, filterIdset, filterCategory, filterTagset, filterType, filterPublished, filterImportId)

List and search questions

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new GamificationTriviaApi();
var size = 56; // int | The number of objects returned per page
var page = 56; // int | The number of the page returned, starting with 1
var order = order_example; // String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
var filterSearch = filterSearch_example; // String | Filter for documents whose question, answers or tags contains provided string
var filterIdset = filterIdset_example; // String | Filter for documents whose id is in the comma separated list provided
var filterCategory = filterCategory_example; // String | Filter for questions with specified category, by id
var filterTagset = filterTagset_example; // String | Filter for questions with specified tags (separated by comma)
var filterType = filterType_example; // String | Filter for questions with specified type.  Allowable values: ('TEXT', 'IMAGE', 'VIDEO', 'AUDIO')
var filterPublished = true; // bool | Filter for questions currenctly published or not
var filterImportId = 789; // int | Filter for questions from a specific import job

try { 
    var result = api_instance.getQuestionsUsingGET(size, page, order, filterSearch, filterIdset, filterCategory, filterTagset, filterType, filterPublished, filterImportId);
    print(result);
} catch (e) {
    print("Exception when calling GamificationTriviaApi->getQuestionsUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **String**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to id:ASC]
 **filterSearch** | **String**| Filter for documents whose question, answers or tags contains provided string | [optional] 
 **filterIdset** | **String**| Filter for documents whose id is in the comma separated list provided | [optional] 
 **filterCategory** | **String**| Filter for questions with specified category, by id | [optional] 
 **filterTagset** | **String**| Filter for questions with specified tags (separated by comma) | [optional] 
 **filterType** | **String**| Filter for questions with specified type.  Allowable values: (&#39;TEXT&#39;, &#39;IMAGE&#39;, &#39;VIDEO&#39;, &#39;AUDIO&#39;) | [optional] 
 **filterPublished** | **bool**| Filter for questions currenctly published or not | [optional] 
 **filterImportId** | **int**| Filter for questions from a specific import job | [optional] 

### Return type

[**Page«QuestionResource»**](Page«QuestionResource».md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTagsUsingGET1**
> List<String> getTagsUsingGET1(id)

List the tags for a question

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new GamificationTriviaApi();
var id = id_example; // String | The id of the question

try { 
    var result = api_instance.getTagsUsingGET1(id);
    print(result);
} catch (e) {
    print("Exception when calling GamificationTriviaApi->getTagsUsingGET1: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the question | 

### Return type

**List<String>**

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTagsUsingGET2**
> Collection«string» getTagsUsingGET2(filterSearch, filterCategory, filterImportId)

List and search tags by the beginning of the string

For performance reasons, search & category filters are mutually exclusive. If category is specified, search filter will be ignored in order to do fast matches for typeahead.

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new GamificationTriviaApi();
var filterSearch = filterSearch_example; // String | Filter for tags starting with the given text
var filterCategory = filterCategory_example; // String | Filter for tags on questions from a specific category
var filterImportId = 789; // int | Filter for tags on questions from a specific import job

try { 
    var result = api_instance.getTagsUsingGET2(filterSearch, filterCategory, filterImportId);
    print(result);
} catch (e) {
    print("Exception when calling GamificationTriviaApi->getTagsUsingGET2: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterSearch** | **String**| Filter for tags starting with the given text | [optional] 
 **filterCategory** | **String**| Filter for tags on questions from a specific category | [optional] 
 **filterImportId** | **int**| Filter for tags on questions from a specific import job | [optional] 

### Return type

[**Collection«string»**](Collection«string».md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUsingGET**
> ImportJobResource getUsingGET(id)

Get an import job

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new GamificationTriviaApi();
var id = 789; // int | The id of the job

try { 
    var result = api_instance.getUsingGET(id);
    print(result);
} catch (e) {
    print("Exception when calling GamificationTriviaApi->getUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The id of the job | 

### Return type

[**ImportJobResource**](ImportJobResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **removeAnswersUsingDELETE**
> removeAnswersUsingDELETE(questionId, id)

Remove an answer from a question

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new GamificationTriviaApi();
var questionId = questionId_example; // String | The id of the question
var id = id_example; // String | The id of the answer

try { 
    api_instance.removeAnswersUsingDELETE(questionId, id);
} catch (e) {
    print("Exception when calling GamificationTriviaApi->removeAnswersUsingDELETE: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **questionId** | **String**| The id of the question | 
 **id** | **String**| The id of the answer | 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **removeTagUsingDELETE**
> removeTagUsingDELETE(id, tag)

Remove a tag from a question

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new GamificationTriviaApi();
var id = id_example; // String | The id of the question
var tag = tag_example; // String | The tag to remove

try { 
    api_instance.removeTagUsingDELETE(id, tag);
} catch (e) {
    print("Exception when calling GamificationTriviaApi->removeTagUsingDELETE: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the question | 
 **tag** | **String**| The tag to remove | 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **startProcessUsingPOST**
> ImportJobResource startProcessUsingPOST(id, publishNow)

Start processing an import job

Will process the CSV file and add new questions asynchronously. The status of the job must be 'VALID'.

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new GamificationTriviaApi();
var id = 789; // int | The id of the job
var publishNow = true; // bool | Whether the new questions should be published live immediately

try { 
    var result = api_instance.startProcessUsingPOST(id, publishNow);
    print(result);
} catch (e) {
    print("Exception when calling GamificationTriviaApi->startProcessUsingPOST: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The id of the job | 
 **publishNow** | **bool**| Whether the new questions should be published live immediately | 

### Return type

[**ImportJobResource**](ImportJobResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateAnswerUsingPUT**
> updateAnswerUsingPUT(questionId, id, answer)

Update an answer for a question

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new GamificationTriviaApi();
var questionId = questionId_example; // String | The id of the question
var id = id_example; // String | The id of the answer
var answer = new AnswerResource(); // AnswerResource | The updated answer

try { 
    api_instance.updateAnswerUsingPUT(questionId, id, answer);
} catch (e) {
    print("Exception when calling GamificationTriviaApi->updateAnswerUsingPUT: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **questionId** | **String**| The id of the question | 
 **id** | **String**| The id of the answer | 
 **answer** | [**AnswerResource**](AnswerResource.md)| The updated answer | [optional] 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateQuestionTemplateUsingPUT**
> updateQuestionTemplateUsingPUT(id, questionTemplateResource)

Update a question template

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new GamificationTriviaApi();
var id = id_example; // String | The id of the template
var questionTemplateResource = new QuestionTemplateResource(); // QuestionTemplateResource | The question template resource object

try { 
    api_instance.updateQuestionTemplateUsingPUT(id, questionTemplateResource);
} catch (e) {
    print("Exception when calling GamificationTriviaApi->updateQuestionTemplateUsingPUT: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the template | 
 **questionTemplateResource** | [**QuestionTemplateResource**](QuestionTemplateResource.md)| The question template resource object | [optional] 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateQuestionUsingPUT**
> QuestionResource updateQuestionUsingPUT(id, question)

Update a question

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new GamificationTriviaApi();
var id = id_example; // String | The id of the question
var question = new QuestionResource(); // QuestionResource | The updated question

try { 
    var result = api_instance.updateQuestionUsingPUT(id, question);
    print(result);
} catch (e) {
    print("Exception when calling GamificationTriviaApi->updateQuestionUsingPUT: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the question | 
 **question** | [**QuestionResource**](QuestionResource.md)| The updated question | [optional] 

### Return type

[**QuestionResource**](QuestionResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateUsingPUT**
> ImportJobResource updateUsingPUT(id, request)

Update an import job

Changes should be made before process is started for there to be any effect.

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new GamificationTriviaApi();
var id = 789; // int | The id of the job
var request = new ImportJobResource(); // ImportJobResource | The updated job

try { 
    var result = api_instance.updateUsingPUT(id, request);
    print(result);
} catch (e) {
    print("Exception when calling GamificationTriviaApi->updateUsingPUT: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The id of the job | 
 **request** | [**ImportJobResource**](ImportJobResource.md)| The updated job | [optional] 

### Return type

[**ImportJobResource**](ImportJobResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

