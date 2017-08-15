# swagger.api.GamificationTriviaApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://sandbox.knetikcloud.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addQuestionAnswers**](GamificationTriviaApi.md#addQuestionAnswers) | **POST** /trivia/questions/{question_id}/answers | Add an answer to a question
[**addQuestionTag**](GamificationTriviaApi.md#addQuestionTag) | **POST** /trivia/questions/{id}/tags | Add a tag to a question
[**addTagToQuestionsBatch**](GamificationTriviaApi.md#addTagToQuestionsBatch) | **POST** /trivia/questions/tags | Add a tag to a batch of questions
[**createImportJob**](GamificationTriviaApi.md#createImportJob) | **POST** /trivia/import | Create an import job
[**createQuestion**](GamificationTriviaApi.md#createQuestion) | **POST** /trivia/questions | Create a question
[**createQuestionTemplate**](GamificationTriviaApi.md#createQuestionTemplate) | **POST** /trivia/questions/templates | Create a question template
[**deleteImportJob**](GamificationTriviaApi.md#deleteImportJob) | **DELETE** /trivia/import/{id} | Delete an import job
[**deleteQuestion**](GamificationTriviaApi.md#deleteQuestion) | **DELETE** /trivia/questions/{id} | Delete a question
[**deleteQuestionAnswers**](GamificationTriviaApi.md#deleteQuestionAnswers) | **DELETE** /trivia/questions/{question_id}/answers/{id} | Remove an answer from a question
[**deleteQuestionTemplate**](GamificationTriviaApi.md#deleteQuestionTemplate) | **DELETE** /trivia/questions/templates/{id} | Delete a question template
[**getImportJob**](GamificationTriviaApi.md#getImportJob) | **GET** /trivia/import/{id} | Get an import job
[**getImportJobs**](GamificationTriviaApi.md#getImportJobs) | **GET** /trivia/import | Get a list of import job
[**getQuestion**](GamificationTriviaApi.md#getQuestion) | **GET** /trivia/questions/{id} | Get a single question
[**getQuestionAnswer**](GamificationTriviaApi.md#getQuestionAnswer) | **GET** /trivia/questions/{question_id}/answers/{id} | Get an answer for a question
[**getQuestionAnswers**](GamificationTriviaApi.md#getQuestionAnswers) | **GET** /trivia/questions/{question_id}/answers | List the answers available for a question
[**getQuestionDeltas**](GamificationTriviaApi.md#getQuestionDeltas) | **GET** /trivia/questions/delta | List question deltas in ascending order of updated date
[**getQuestionTags**](GamificationTriviaApi.md#getQuestionTags) | **GET** /trivia/questions/{id}/tags | List the tags for a question
[**getQuestionTemplate**](GamificationTriviaApi.md#getQuestionTemplate) | **GET** /trivia/questions/templates/{id} | Get a single question template
[**getQuestionTemplates**](GamificationTriviaApi.md#getQuestionTemplates) | **GET** /trivia/questions/templates | List and search question templates
[**getQuestions**](GamificationTriviaApi.md#getQuestions) | **GET** /trivia/questions | List and search questions
[**getQuestionsCount**](GamificationTriviaApi.md#getQuestionsCount) | **GET** /trivia/questions/count | Count questions based on filters
[**processImportJob**](GamificationTriviaApi.md#processImportJob) | **POST** /trivia/import/{id}/process | Start processing an import job
[**removeQuestionTag**](GamificationTriviaApi.md#removeQuestionTag) | **DELETE** /trivia/questions/{id}/tags/{tag} | Remove a tag from a question
[**removeTagToQuestionsBatch**](GamificationTriviaApi.md#removeTagToQuestionsBatch) | **DELETE** /trivia/questions/tags/{tag} | Remove a tag from a batch of questions
[**searchQuestionTags**](GamificationTriviaApi.md#searchQuestionTags) | **GET** /trivia/tags | List and search tags by the beginning of the string
[**updateImportJob**](GamificationTriviaApi.md#updateImportJob) | **PUT** /trivia/import/{id} | Update an import job
[**updateQuestion**](GamificationTriviaApi.md#updateQuestion) | **PUT** /trivia/questions/{id} | Update a question
[**updateQuestionAnswer**](GamificationTriviaApi.md#updateQuestionAnswer) | **PUT** /trivia/questions/{question_id}/answers/{id} | Update an answer for a question
[**updateQuestionTemplate**](GamificationTriviaApi.md#updateQuestionTemplate) | **PUT** /trivia/questions/templates/{id} | Update a question template
[**updateQuestionsInBulk**](GamificationTriviaApi.md#updateQuestionsInBulk) | **PUT** /trivia/questions | Bulk update questions


# **addQuestionAnswers**
> AnswerResource addQuestionAnswers(questionId, answer)

Add an answer to a question

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new GamificationTriviaApi();
var questionId = questionId_example; // String | The id of the question
var answer = new AnswerResource(); // AnswerResource | The new answer

try { 
    var result = api_instance.addQuestionAnswers(questionId, answer);
    print(result);
} catch (e) {
    print("Exception when calling GamificationTriviaApi->addQuestionAnswers: $e\n");
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

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **addQuestionTag**
> addQuestionTag(id, tag)

Add a tag to a question

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new GamificationTriviaApi();
var id = id_example; // String | The id of the question
var tag = new StringWrapper(); // StringWrapper | The new tag

try { 
    api_instance.addQuestionTag(id, tag);
} catch (e) {
    print("Exception when calling GamificationTriviaApi->addQuestionTag: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the question | 
 **tag** | [**StringWrapper**](StringWrapper.md)| The new tag | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **addTagToQuestionsBatch**
> int addTagToQuestionsBatch(tag, filterSearch, filterIdset, filterCategory, filterTag, filterTagset, filterType, filterPublished, filterImportId)

Add a tag to a batch of questions

All questions that dont't have the tag and match filters will have it added. The returned number is the number of questions updated.

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new GamificationTriviaApi();
var tag = new StringWrapper(); // StringWrapper | The tag to add
var filterSearch = filterSearch_example; // String | Filter for documents whose question, answers or tags contains provided string
var filterIdset = filterIdset_example; // String | Filter for documents whose id is in the comma separated list provided
var filterCategory = filterCategory_example; // String | Filter for questions with specified category, by id
var filterTag = filterTag_example; // String | Filter for questions with specified tag
var filterTagset = filterTagset_example; // String | Filter for questions with specified tags (separated by comma)
var filterType = filterType_example; // String | Filter for questions with specified type
var filterPublished = true; // bool | Filter for questions currenctly published or not
var filterImportId = 789; // int | Filter for questions from a specific import job

try { 
    var result = api_instance.addTagToQuestionsBatch(tag, filterSearch, filterIdset, filterCategory, filterTag, filterTagset, filterType, filterPublished, filterImportId);
    print(result);
} catch (e) {
    print("Exception when calling GamificationTriviaApi->addTagToQuestionsBatch: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tag** | [**StringWrapper**](StringWrapper.md)| The tag to add | [optional] 
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

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createImportJob**
> ImportJobResource createImportJob(request)

Create an import job

Set up a job to import a set of trivia questions from a cvs file at a remote url. the file will be validated asynchronously but will not be processed until started manually with the process endpoint.

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new GamificationTriviaApi();
var request = new ImportJobResource(); // ImportJobResource | The new import job

try { 
    var result = api_instance.createImportJob(request);
    print(result);
} catch (e) {
    print("Exception when calling GamificationTriviaApi->createImportJob: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**ImportJobResource**](ImportJobResource.md)| The new import job | [optional] 

### Return type

[**ImportJobResource**](ImportJobResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createQuestion**
> QuestionResource createQuestion(question)

Create a question

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new GamificationTriviaApi();
var question = new QuestionResource(); // QuestionResource | The new question

try { 
    var result = api_instance.createQuestion(question);
    print(result);
} catch (e) {
    print("Exception when calling GamificationTriviaApi->createQuestion: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **question** | [**QuestionResource**](QuestionResource.md)| The new question | [optional] 

### Return type

[**QuestionResource**](QuestionResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createQuestionTemplate**
> QuestionTemplateResource createQuestionTemplate(questionTemplateResource)

Create a question template

Question templates define a type of question and the properties they have

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new GamificationTriviaApi();
var questionTemplateResource = new QuestionTemplateResource(); // QuestionTemplateResource | The question template resource object

try { 
    var result = api_instance.createQuestionTemplate(questionTemplateResource);
    print(result);
} catch (e) {
    print("Exception when calling GamificationTriviaApi->createQuestionTemplate: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **questionTemplateResource** | [**QuestionTemplateResource**](QuestionTemplateResource.md)| The question template resource object | [optional] 

### Return type

[**QuestionTemplateResource**](QuestionTemplateResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteImportJob**
> deleteImportJob(id)

Delete an import job

Also deletes all questions that were imported by it

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new GamificationTriviaApi();
var id = 789; // int | The id of the job

try { 
    api_instance.deleteImportJob(id);
} catch (e) {
    print("Exception when calling GamificationTriviaApi->deleteImportJob: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The id of the job | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteQuestion**
> deleteQuestion(id)

Delete a question

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new GamificationTriviaApi();
var id = id_example; // String | The id of the question

try { 
    api_instance.deleteQuestion(id);
} catch (e) {
    print("Exception when calling GamificationTriviaApi->deleteQuestion: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the question | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteQuestionAnswers**
> deleteQuestionAnswers(questionId, id)

Remove an answer from a question

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new GamificationTriviaApi();
var questionId = questionId_example; // String | The id of the question
var id = id_example; // String | The id of the answer

try { 
    api_instance.deleteQuestionAnswers(questionId, id);
} catch (e) {
    print("Exception when calling GamificationTriviaApi->deleteQuestionAnswers: $e\n");
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

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteQuestionTemplate**
> deleteQuestionTemplate(id, cascade)

Delete a question template

If cascade = 'detach', it will force delete the template even if it's attached to other objects

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new GamificationTriviaApi();
var id = id_example; // String | The id of the template
var cascade = cascade_example; // String | The value needed to delete used templates

try { 
    api_instance.deleteQuestionTemplate(id, cascade);
} catch (e) {
    print("Exception when calling GamificationTriviaApi->deleteQuestionTemplate: $e\n");
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

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getImportJob**
> ImportJobResource getImportJob(id)

Get an import job

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new GamificationTriviaApi();
var id = 789; // int | The id of the job

try { 
    var result = api_instance.getImportJob(id);
    print(result);
} catch (e) {
    print("Exception when calling GamificationTriviaApi->getImportJob: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The id of the job | 

### Return type

[**ImportJobResource**](ImportJobResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getImportJobs**
> PageResource«ImportJobResource» getImportJobs(filterVendor, filterCategory, filterName, filterStatus, size, page, order)

Get a list of import job

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new GamificationTriviaApi();
var filterVendor = filterVendor_example; // String | Filter for jobs by vendor id
var filterCategory = filterCategory_example; // String | Filter for jobs by category id
var filterName = filterName_example; // String | Filter for jobs which name *STARTS* with the given string
var filterStatus = filterStatus_example; // String | Filter for jobs that are in a specific set of statuses (comma separated)
var size = 56; // int | The number of objects returned per page
var page = 56; // int | The number of the page returned, starting with 1
var order = order_example; // String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]

try { 
    var result = api_instance.getImportJobs(filterVendor, filterCategory, filterName, filterStatus, size, page, order);
    print(result);
} catch (e) {
    print("Exception when calling GamificationTriviaApi->getImportJobs: $e\n");
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

[**PageResource«ImportJobResource»**](PageResource«ImportJobResource».md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getQuestion**
> QuestionResource getQuestion(id)

Get a single question

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new GamificationTriviaApi();
var id = id_example; // String | The id of the question

try { 
    var result = api_instance.getQuestion(id);
    print(result);
} catch (e) {
    print("Exception when calling GamificationTriviaApi->getQuestion: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the question | 

### Return type

[**QuestionResource**](QuestionResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getQuestionAnswer**
> AnswerResource getQuestionAnswer(questionId, id)

Get an answer for a question

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new GamificationTriviaApi();
var questionId = questionId_example; // String | The id of the question
var id = id_example; // String | The id of the answer

try { 
    var result = api_instance.getQuestionAnswer(questionId, id);
    print(result);
} catch (e) {
    print("Exception when calling GamificationTriviaApi->getQuestionAnswer: $e\n");
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

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getQuestionAnswers**
> List<AnswerResource> getQuestionAnswers(questionId)

List the answers available for a question

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new GamificationTriviaApi();
var questionId = questionId_example; // String | The id of the question

try { 
    var result = api_instance.getQuestionAnswers(questionId);
    print(result);
} catch (e) {
    print("Exception when calling GamificationTriviaApi->getQuestionAnswers: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **questionId** | **String**| The id of the question | 

### Return type

[**List<AnswerResource>**](AnswerResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getQuestionDeltas**
> List<DeltaResource> getQuestionDeltas(since)

List question deltas in ascending order of updated date

The 'since' parameter is important to avoid getting a full list of all questions. Implementors should make sure they pass the updated date of the last resource loaded, not the date of the last request, in order to avoid gaps

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new GamificationTriviaApi();
var since = 789; // int | Timestamp in seconds

try { 
    var result = api_instance.getQuestionDeltas(since);
    print(result);
} catch (e) {
    print("Exception when calling GamificationTriviaApi->getQuestionDeltas: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **since** | **int**| Timestamp in seconds | [optional] 

### Return type

[**List<DeltaResource>**](DeltaResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getQuestionTags**
> List<String> getQuestionTags(id)

List the tags for a question

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new GamificationTriviaApi();
var id = id_example; // String | The id of the question

try { 
    var result = api_instance.getQuestionTags(id);
    print(result);
} catch (e) {
    print("Exception when calling GamificationTriviaApi->getQuestionTags: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the question | 

### Return type

**List<String>**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getQuestionTemplate**
> QuestionTemplateResource getQuestionTemplate(id)

Get a single question template

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new GamificationTriviaApi();
var id = id_example; // String | The id of the template

try { 
    var result = api_instance.getQuestionTemplate(id);
    print(result);
} catch (e) {
    print("Exception when calling GamificationTriviaApi->getQuestionTemplate: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the template | 

### Return type

[**QuestionTemplateResource**](QuestionTemplateResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getQuestionTemplates**
> PageResource«QuestionTemplateResource» getQuestionTemplates(size, page, order)

List and search question templates

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new GamificationTriviaApi();
var size = 56; // int | The number of objects returned per page
var page = 56; // int | The number of the page returned, starting with 1
var order = order_example; // String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]

try { 
    var result = api_instance.getQuestionTemplates(size, page, order);
    print(result);
} catch (e) {
    print("Exception when calling GamificationTriviaApi->getQuestionTemplates: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **String**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to id:ASC]

### Return type

[**PageResource«QuestionTemplateResource»**](PageResource«QuestionTemplateResource».md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getQuestions**
> PageResource«QuestionResource» getQuestions(size, page, order, filterSearch, filterIdset, filterCategory, filterTagset, filterTag, filterType, filterPublished, filterImportId)

List and search questions

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new GamificationTriviaApi();
var size = 56; // int | The number of objects returned per page
var page = 56; // int | The number of the page returned, starting with 1
var order = order_example; // String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
var filterSearch = filterSearch_example; // String | Filter for documents whose question, answers or tags contains provided string
var filterIdset = filterIdset_example; // String | Filter for documents whose id is in the comma separated list provided
var filterCategory = filterCategory_example; // String | Filter for questions with specified category, by id
var filterTagset = filterTagset_example; // String | Filter for questions with specified tags (separated by comma)
var filterTag = filterTag_example; // String | Filter for questions with specified tag
var filterType = filterType_example; // String | Filter for questions with specified type.  Allowable values: ('TEXT', 'IMAGE', 'VIDEO', 'AUDIO')
var filterPublished = true; // bool | Filter for questions currenctly published or not
var filterImportId = 789; // int | Filter for questions from a specific import job

try { 
    var result = api_instance.getQuestions(size, page, order, filterSearch, filterIdset, filterCategory, filterTagset, filterTag, filterType, filterPublished, filterImportId);
    print(result);
} catch (e) {
    print("Exception when calling GamificationTriviaApi->getQuestions: $e\n");
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
 **filterTag** | **String**| Filter for questions with specified tag | [optional] 
 **filterType** | **String**| Filter for questions with specified type.  Allowable values: (&#39;TEXT&#39;, &#39;IMAGE&#39;, &#39;VIDEO&#39;, &#39;AUDIO&#39;) | [optional] 
 **filterPublished** | **bool**| Filter for questions currenctly published or not | [optional] 
 **filterImportId** | **int**| Filter for questions from a specific import job | [optional] 

### Return type

[**PageResource«QuestionResource»**](PageResource«QuestionResource».md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getQuestionsCount**
> int getQuestionsCount(filterSearch, filterIdset, filterCategory, filterTag, filterTagset, filterType, filterPublished)

Count questions based on filters

This is also provided by the list endpoint so you don't need to call this for pagination purposes

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new GamificationTriviaApi();
var filterSearch = filterSearch_example; // String | Filter for documents whose question, answers or tags contains provided string
var filterIdset = filterIdset_example; // String | Filter for documents whose id is in the comma separated list provided
var filterCategory = filterCategory_example; // String | Filter for questions with specified category, by id
var filterTag = filterTag_example; // String | Filter for questions with specified tag
var filterTagset = filterTagset_example; // String | Filter for questions with specified tags (separated by comma)
var filterType = filterType_example; // String | Filter for questions with specified type.  Allowable values: ('TEXT', 'IMAGE', 'VIDEO', 'AUDIO')
var filterPublished = true; // bool | Filter for questions currenctly published or not

try { 
    var result = api_instance.getQuestionsCount(filterSearch, filterIdset, filterCategory, filterTag, filterTagset, filterType, filterPublished);
    print(result);
} catch (e) {
    print("Exception when calling GamificationTriviaApi->getQuestionsCount: $e\n");
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

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **processImportJob**
> ImportJobResource processImportJob(id, publishNow)

Start processing an import job

Will process the CSV file and add new questions asynchronously. The status of the job must be 'VALID'.

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new GamificationTriviaApi();
var id = 789; // int | The id of the job
var publishNow = true; // bool | Whether the new questions should be published live immediately

try { 
    var result = api_instance.processImportJob(id, publishNow);
    print(result);
} catch (e) {
    print("Exception when calling GamificationTriviaApi->processImportJob: $e\n");
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

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **removeQuestionTag**
> removeQuestionTag(id, tag)

Remove a tag from a question

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new GamificationTriviaApi();
var id = id_example; // String | The id of the question
var tag = tag_example; // String | The tag to remove

try { 
    api_instance.removeQuestionTag(id, tag);
} catch (e) {
    print("Exception when calling GamificationTriviaApi->removeQuestionTag: $e\n");
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

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **removeTagToQuestionsBatch**
> int removeTagToQuestionsBatch(tag, filterSearch, filterIdset, filterCategory, filterTag, filterTagset, filterType, filterPublished, filterImportId)

Remove a tag from a batch of questions

ll questions that have the tag and match filters will have it removed. The returned number is the number of questions updated.

### Example 
```dart
import 'package:swagger/api.dart';

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
    var result = api_instance.removeTagToQuestionsBatch(tag, filterSearch, filterIdset, filterCategory, filterTag, filterTagset, filterType, filterPublished, filterImportId);
    print(result);
} catch (e) {
    print("Exception when calling GamificationTriviaApi->removeTagToQuestionsBatch: $e\n");
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

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchQuestionTags**
> Collection«string» searchQuestionTags(filterSearch, filterCategory, filterImportId)

List and search tags by the beginning of the string

For performance reasons, search & category filters are mutually exclusive. If category is specified, search filter will be ignored in order to do fast matches for typeahead.

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new GamificationTriviaApi();
var filterSearch = filterSearch_example; // String | Filter for tags starting with the given text
var filterCategory = filterCategory_example; // String | Filter for tags on questions from a specific category
var filterImportId = 789; // int | Filter for tags on questions from a specific import job

try { 
    var result = api_instance.searchQuestionTags(filterSearch, filterCategory, filterImportId);
    print(result);
} catch (e) {
    print("Exception when calling GamificationTriviaApi->searchQuestionTags: $e\n");
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

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateImportJob**
> ImportJobResource updateImportJob(id, request)

Update an import job

Changes should be made before process is started for there to be any effect.

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new GamificationTriviaApi();
var id = 789; // int | The id of the job
var request = new ImportJobResource(); // ImportJobResource | The updated job

try { 
    var result = api_instance.updateImportJob(id, request);
    print(result);
} catch (e) {
    print("Exception when calling GamificationTriviaApi->updateImportJob: $e\n");
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

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateQuestion**
> QuestionResource updateQuestion(id, question)

Update a question

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new GamificationTriviaApi();
var id = id_example; // String | The id of the question
var question = new QuestionResource(); // QuestionResource | The updated question

try { 
    var result = api_instance.updateQuestion(id, question);
    print(result);
} catch (e) {
    print("Exception when calling GamificationTriviaApi->updateQuestion: $e\n");
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

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateQuestionAnswer**
> updateQuestionAnswer(questionId, id, answer)

Update an answer for a question

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new GamificationTriviaApi();
var questionId = questionId_example; // String | The id of the question
var id = id_example; // String | The id of the answer
var answer = new AnswerResource(); // AnswerResource | The updated answer

try { 
    api_instance.updateQuestionAnswer(questionId, id, answer);
} catch (e) {
    print("Exception when calling GamificationTriviaApi->updateQuestionAnswer: $e\n");
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

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateQuestionTemplate**
> QuestionTemplateResource updateQuestionTemplate(id, questionTemplateResource)

Update a question template

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new GamificationTriviaApi();
var id = id_example; // String | The id of the template
var questionTemplateResource = new QuestionTemplateResource(); // QuestionTemplateResource | The question template resource object

try { 
    var result = api_instance.updateQuestionTemplate(id, questionTemplateResource);
    print(result);
} catch (e) {
    print("Exception when calling GamificationTriviaApi->updateQuestionTemplate: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the template | 
 **questionTemplateResource** | [**QuestionTemplateResource**](QuestionTemplateResource.md)| The question template resource object | [optional] 

### Return type

[**QuestionTemplateResource**](QuestionTemplateResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateQuestionsInBulk**
> int updateQuestionsInBulk(question, filterSearch, filterIdset, filterCategory, filterTagset, filterType, filterPublished, filterImportId)

Bulk update questions

Will update all questions that match filters used (or all questions in system if no filters used). Body should match a question resource with only those properties you wish to set. Null values will be ignored. Returned number is how many were updated.

### Example 
```dart
import 'package:swagger/api.dart';

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
    var result = api_instance.updateQuestionsInBulk(question, filterSearch, filterIdset, filterCategory, filterTagset, filterType, filterPublished, filterImportId);
    print(result);
} catch (e) {
    print("Exception when calling GamificationTriviaApi->updateQuestionsInBulk: $e\n");
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

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

