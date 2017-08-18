# swagger.api.ContentPollsApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://sandbox.knetikcloud.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**answerPoll**](ContentPollsApi.md#answerPoll) | **POST** /media/polls/{id}/response | Add your vote to a poll
[**createPoll**](ContentPollsApi.md#createPoll) | **POST** /media/polls | Create a new poll
[**createPollTemplate**](ContentPollsApi.md#createPollTemplate) | **POST** /media/polls/templates | Create a poll template
[**deletePoll**](ContentPollsApi.md#deletePoll) | **DELETE** /media/polls/{id} | Delete an existing poll
[**deletePollTemplate**](ContentPollsApi.md#deletePollTemplate) | **DELETE** /media/polls/templates/{id} | Delete a poll template
[**getPoll**](ContentPollsApi.md#getPoll) | **GET** /media/polls/{id} | Get a single poll
[**getPollAnswer**](ContentPollsApi.md#getPollAnswer) | **GET** /media/polls/{id}/response | Get poll answer
[**getPollTemplate**](ContentPollsApi.md#getPollTemplate) | **GET** /media/polls/templates/{id} | Get a single poll template
[**getPollTemplates**](ContentPollsApi.md#getPollTemplates) | **GET** /media/polls/templates | List and search poll templates
[**getPolls**](ContentPollsApi.md#getPolls) | **GET** /media/polls | List and search polls
[**updatePoll**](ContentPollsApi.md#updatePoll) | **PUT** /media/polls/{id} | Update an existing poll
[**updatePollTemplate**](ContentPollsApi.md#updatePollTemplate) | **PUT** /media/polls/templates/{id} | Update a poll template


# **answerPoll**
> PollResponseResource answerPoll(id, answerKey)

Add your vote to a poll

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new ContentPollsApi();
var id = id_example; // String | The poll id
var answerKey = new StringWrapper(); // StringWrapper | The answer key

try { 
    var result = api_instance.answerPoll(id, answerKey);
    print(result);
} catch (e) {
    print("Exception when calling ContentPollsApi->answerPoll: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The poll id | 
 **answerKey** | [**StringWrapper**](StringWrapper.md)| The answer key | [optional] 

### Return type

[**PollResponseResource**](PollResponseResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createPoll**
> PollResource createPoll(pollResource)

Create a new poll

Polls are blobs of text with titles, a category and assets. Formatting and display of the text is in the hands of the front end.

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new ContentPollsApi();
var pollResource = new PollResource(); // PollResource | The poll object

try { 
    var result = api_instance.createPoll(pollResource);
    print(result);
} catch (e) {
    print("Exception when calling ContentPollsApi->createPoll: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pollResource** | [**PollResource**](PollResource.md)| The poll object | [optional] 

### Return type

[**PollResource**](PollResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createPollTemplate**
> TemplateResource createPollTemplate(pollTemplateResource)

Create a poll template

Poll templates define a type of poll and the properties they have

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new ContentPollsApi();
var pollTemplateResource = new TemplateResource(); // TemplateResource | The poll template resource object

try { 
    var result = api_instance.createPollTemplate(pollTemplateResource);
    print(result);
} catch (e) {
    print("Exception when calling ContentPollsApi->createPollTemplate: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pollTemplateResource** | [**TemplateResource**](TemplateResource.md)| The poll template resource object | [optional] 

### Return type

[**TemplateResource**](TemplateResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deletePoll**
> deletePoll(id)

Delete an existing poll

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new ContentPollsApi();
var id = id_example; // String | The poll id

try { 
    api_instance.deletePoll(id);
} catch (e) {
    print("Exception when calling ContentPollsApi->deletePoll: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The poll id | 

### Return type

void (empty response body)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deletePollTemplate**
> deletePollTemplate(id, cascade)

Delete a poll template

If cascade = 'detach', it will force delete the template even if it's attached to other objects

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new ContentPollsApi();
var id = id_example; // String | The id of the template
var cascade = cascade_example; // String | The value needed to delete used templates

try { 
    api_instance.deletePollTemplate(id, cascade);
} catch (e) {
    print("Exception when calling ContentPollsApi->deletePollTemplate: $e\n");
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

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPoll**
> PollResource getPoll(id)

Get a single poll

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new ContentPollsApi();
var id = id_example; // String | The poll id

try { 
    var result = api_instance.getPoll(id);
    print(result);
} catch (e) {
    print("Exception when calling ContentPollsApi->getPoll: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The poll id | 

### Return type

[**PollResource**](PollResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPollAnswer**
> PollResponseResource getPollAnswer(id)

Get poll answer

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new ContentPollsApi();
var id = id_example; // String | The poll id

try { 
    var result = api_instance.getPollAnswer(id);
    print(result);
} catch (e) {
    print("Exception when calling ContentPollsApi->getPollAnswer: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The poll id | 

### Return type

[**PollResponseResource**](PollResponseResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPollTemplate**
> TemplateResource getPollTemplate(id)

Get a single poll template

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new ContentPollsApi();
var id = id_example; // String | The id of the template

try { 
    var result = api_instance.getPollTemplate(id);
    print(result);
} catch (e) {
    print("Exception when calling ContentPollsApi->getPollTemplate: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the template | 

### Return type

[**TemplateResource**](TemplateResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPollTemplates**
> PageResource«TemplateResource» getPollTemplates(size, page, order)

List and search poll templates

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new ContentPollsApi();
var size = 56; // int | The number of objects returned per page
var page = 56; // int | The number of the page returned, starting with 1
var order = order_example; // String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]

try { 
    var result = api_instance.getPollTemplates(size, page, order);
    print(result);
} catch (e) {
    print("Exception when calling ContentPollsApi->getPollTemplates: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **String**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to id:ASC]

### Return type

[**PageResource«TemplateResource»**](PageResource«TemplateResource».md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPolls**
> PageResource«PollResource» getPolls(filterCategory, filterTagset, filterText, size, page, order)

List and search polls

Get a list of polls with optional filtering. Assets will not be filled in on the resources returned. Use 'Get a single poll' to retrieve the full resource with assets for a given item as needed.

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new ContentPollsApi();
var filterCategory = filterCategory_example; // String | Filter for polls from a specific category by id
var filterTagset = filterTagset_example; // String | Filter for polls with specified tags (separated by comma)
var filterText = filterText_example; // String | Filter for polls whose text contains a string
var size = 56; // int | The number of objects returned per page
var page = 56; // int | The number of the page returned
var order = order_example; // String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]

try { 
    var result = api_instance.getPolls(filterCategory, filterTagset, filterText, size, page, order);
    print(result);
} catch (e) {
    print("Exception when calling ContentPollsApi->getPolls: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterCategory** | **String**| Filter for polls from a specific category by id | [optional] 
 **filterTagset** | **String**| Filter for polls with specified tags (separated by comma) | [optional] 
 **filterText** | **String**| Filter for polls whose text contains a string | [optional] 
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned | [optional] [default to 1]
 **order** | **String**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to id:ASC]

### Return type

[**PageResource«PollResource»**](PageResource«PollResource».md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updatePoll**
> PollResource updatePoll(id, pollResource)

Update an existing poll

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new ContentPollsApi();
var id = id_example; // String | The poll id
var pollResource = new PollResource(); // PollResource | The poll object

try { 
    var result = api_instance.updatePoll(id, pollResource);
    print(result);
} catch (e) {
    print("Exception when calling ContentPollsApi->updatePoll: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The poll id | 
 **pollResource** | [**PollResource**](PollResource.md)| The poll object | [optional] 

### Return type

[**PollResource**](PollResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updatePollTemplate**
> TemplateResource updatePollTemplate(id, pollTemplateResource)

Update a poll template

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new ContentPollsApi();
var id = id_example; // String | The id of the template
var pollTemplateResource = new TemplateResource(); // TemplateResource | The poll template resource object

try { 
    var result = api_instance.updatePollTemplate(id, pollTemplateResource);
    print(result);
} catch (e) {
    print("Exception when calling ContentPollsApi->updatePollTemplate: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the template | 
 **pollTemplateResource** | [**TemplateResource**](TemplateResource.md)| The poll template resource object | [optional] 

### Return type

[**TemplateResource**](TemplateResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

