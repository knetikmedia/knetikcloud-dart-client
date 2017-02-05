# swagger.api.ContentPollsApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://integration.knetikcloud.com/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**answerPollUsingPOST**](ContentPollsApi.md#answerPollUsingPOST) | **POST** /media/polls/{id}/response | Add your vote to a poll
[**createPollTemplateUsingPOST**](ContentPollsApi.md#createPollTemplateUsingPOST) | **POST** /media/polls/templates | Create a poll template
[**createPollUsingPOST**](ContentPollsApi.md#createPollUsingPOST) | **POST** /media/polls | Create a new poll
[**deletePollTemplateUsingDELETE**](ContentPollsApi.md#deletePollTemplateUsingDELETE) | **DELETE** /media/polls/templates/{id} | Delete a poll template
[**deletePollUsingDELETE**](ContentPollsApi.md#deletePollUsingDELETE) | **DELETE** /media/polls/{id} | Delete an existing poll
[**getPollAnswerUsingGET**](ContentPollsApi.md#getPollAnswerUsingGET) | **GET** /media/polls/{id}/response | Get poll answer
[**getPollTemplateUsingGET**](ContentPollsApi.md#getPollTemplateUsingGET) | **GET** /media/polls/templates/{id} | Get a single poll template
[**getPollTemplatesUsingGET**](ContentPollsApi.md#getPollTemplatesUsingGET) | **GET** /media/polls/templates | List and search poll templates
[**getPollUsingGET**](ContentPollsApi.md#getPollUsingGET) | **GET** /media/polls/{id} | Get a single poll
[**getPollsUsingGET**](ContentPollsApi.md#getPollsUsingGET) | **GET** /media/polls | List and search polls
[**updatePollTemplateUsingPUT**](ContentPollsApi.md#updatePollTemplateUsingPUT) | **PUT** /media/polls/templates/{id} | Update a poll template
[**updatePollUsingPUT**](ContentPollsApi.md#updatePollUsingPUT) | **PUT** /media/polls/{id} | Update an existing poll


# **answerPollUsingPOST**
> PollResponseResource answerPollUsingPOST(id, answerKey)

Add your vote to a poll

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: knetik_oauth
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new ContentPollsApi();
var id = id_example; // String | The poll id
var answerKey = new String(); // String | The answer key

try { 
    var result = api_instance.answerPollUsingPOST(id, answerKey);
    print(result);
} catch (e) {
    print("Exception when calling ContentPollsApi->answerPollUsingPOST: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The poll id | 
 **answerKey** | **String**| The answer key | [optional] 

### Return type

[**PollResponseResource**](PollResponseResource.md)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createPollTemplateUsingPOST**
> TemplateResource createPollTemplateUsingPOST(pollTemplateResource)

Create a poll template

Poll templates define a type of poll and the properties they have

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: knetik_oauth
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new ContentPollsApi();
var pollTemplateResource = new TemplateResource(); // TemplateResource | The poll template resource object

try { 
    var result = api_instance.createPollTemplateUsingPOST(pollTemplateResource);
    print(result);
} catch (e) {
    print("Exception when calling ContentPollsApi->createPollTemplateUsingPOST: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pollTemplateResource** | [**TemplateResource**](TemplateResource.md)| The poll template resource object | [optional] 

### Return type

[**TemplateResource**](TemplateResource.md)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createPollUsingPOST**
> PollResource createPollUsingPOST(pollResource)

Create a new poll

Polls are blobs of text with titles, a category and assets. Formatting and display of the text is in the hands of the front end.

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: knetik_oauth
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new ContentPollsApi();
var pollResource = new PollResource(); // PollResource | The poll object

try { 
    var result = api_instance.createPollUsingPOST(pollResource);
    print(result);
} catch (e) {
    print("Exception when calling ContentPollsApi->createPollUsingPOST: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pollResource** | [**PollResource**](PollResource.md)| The poll object | [optional] 

### Return type

[**PollResource**](PollResource.md)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deletePollTemplateUsingDELETE**
> deletePollTemplateUsingDELETE(id, cascade)

Delete a poll template

If cascade = 'detach', it will force delete the template even if it's attached to other objects

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: knetik_oauth
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new ContentPollsApi();
var id = id_example; // String | The id of the template
var cascade = cascade_example; // String | The value needed to delete used templates

try { 
    api_instance.deletePollTemplateUsingDELETE(id, cascade);
} catch (e) {
    print("Exception when calling ContentPollsApi->deletePollTemplateUsingDELETE: $e\n");
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

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deletePollUsingDELETE**
> deletePollUsingDELETE(id)

Delete an existing poll

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: knetik_oauth
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new ContentPollsApi();
var id = id_example; // String | The poll id

try { 
    api_instance.deletePollUsingDELETE(id);
} catch (e) {
    print("Exception when calling ContentPollsApi->deletePollUsingDELETE: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The poll id | 

### Return type

void (empty response body)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPollAnswerUsingGET**
> PollResponseResource getPollAnswerUsingGET(id)

Get poll answer

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: knetik_oauth
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new ContentPollsApi();
var id = id_example; // String | The poll id

try { 
    var result = api_instance.getPollAnswerUsingGET(id);
    print(result);
} catch (e) {
    print("Exception when calling ContentPollsApi->getPollAnswerUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The poll id | 

### Return type

[**PollResponseResource**](PollResponseResource.md)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPollTemplateUsingGET**
> TemplateResource getPollTemplateUsingGET(id)

Get a single poll template

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: knetik_oauth
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new ContentPollsApi();
var id = id_example; // String | The id of the template

try { 
    var result = api_instance.getPollTemplateUsingGET(id);
    print(result);
} catch (e) {
    print("Exception when calling ContentPollsApi->getPollTemplateUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the template | 

### Return type

[**TemplateResource**](TemplateResource.md)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPollTemplatesUsingGET**
> PageResource«TemplateResource» getPollTemplatesUsingGET(size, page, order)

List and search poll templates

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: knetik_oauth
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new ContentPollsApi();
var size = 56; // int | The number of objects returned per page
var page = 56; // int | The number of the page returned, starting with 1
var order = order_example; // String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]

try { 
    var result = api_instance.getPollTemplatesUsingGET(size, page, order);
    print(result);
} catch (e) {
    print("Exception when calling ContentPollsApi->getPollTemplatesUsingGET: $e\n");
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

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPollUsingGET**
> PollResource getPollUsingGET(id)

Get a single poll

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new ContentPollsApi();
var id = id_example; // String | The poll id

try { 
    var result = api_instance.getPollUsingGET(id);
    print(result);
} catch (e) {
    print("Exception when calling ContentPollsApi->getPollUsingGET: $e\n");
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

# **getPollsUsingGET**
> PageResource«PollResource» getPollsUsingGET(filterCategory, filterTagset, filterText, size, page, order)

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
    var result = api_instance.getPollsUsingGET(filterCategory, filterTagset, filterText, size, page, order);
    print(result);
} catch (e) {
    print("Exception when calling ContentPollsApi->getPollsUsingGET: $e\n");
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

# **updatePollTemplateUsingPUT**
> updatePollTemplateUsingPUT(id, pollTemplateResource)

Update a poll template

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: knetik_oauth
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new ContentPollsApi();
var id = id_example; // String | The id of the template
var pollTemplateResource = new TemplateResource(); // TemplateResource | The poll template resource object

try { 
    api_instance.updatePollTemplateUsingPUT(id, pollTemplateResource);
} catch (e) {
    print("Exception when calling ContentPollsApi->updatePollTemplateUsingPUT: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the template | 
 **pollTemplateResource** | [**TemplateResource**](TemplateResource.md)| The poll template resource object | [optional] 

### Return type

void (empty response body)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updatePollUsingPUT**
> updatePollUsingPUT(id, pollResource)

Update an existing poll

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: knetik_oauth
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new ContentPollsApi();
var id = id_example; // String | The poll id
var pollResource = new PollResource(); // PollResource | The poll object

try { 
    api_instance.updatePollUsingPUT(id, pollResource);
} catch (e) {
    print("Exception when calling ContentPollsApi->updatePollUsingPUT: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The poll id | 
 **pollResource** | [**PollResource**](PollResource.md)| The poll object | [optional] 

### Return type

void (empty response body)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

