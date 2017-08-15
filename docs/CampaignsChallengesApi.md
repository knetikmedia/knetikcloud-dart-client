# swagger.api.CampaignsChallengesApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://sandbox.knetikcloud.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createChallenge**](CampaignsChallengesApi.md#createChallenge) | **POST** /challenges | Create a challenge
[**createChallengeActivity**](CampaignsChallengesApi.md#createChallengeActivity) | **POST** /challenges/{challenge_id}/activities | Create a challenge activity
[**createChallengeActivityTemplate**](CampaignsChallengesApi.md#createChallengeActivityTemplate) | **POST** /challenge-activities/templates | Create a challenge activity template
[**createChallengeTemplate**](CampaignsChallengesApi.md#createChallengeTemplate) | **POST** /challenges/templates | Create a challenge template
[**deleteChallenge**](CampaignsChallengesApi.md#deleteChallenge) | **DELETE** /challenges/{id} | Delete a challenge
[**deleteChallengeActivity**](CampaignsChallengesApi.md#deleteChallengeActivity) | **DELETE** /challenges/{challenge_id}/activities/{id} | Delete a challenge activity
[**deleteChallengeActivityTemplate**](CampaignsChallengesApi.md#deleteChallengeActivityTemplate) | **DELETE** /challenge-activities/templates/{id} | Delete a challenge activity template
[**deleteChallengeEvent**](CampaignsChallengesApi.md#deleteChallengeEvent) | **DELETE** /challenges/events/{id} | Delete a challenge event
[**deleteChallengeTemplate**](CampaignsChallengesApi.md#deleteChallengeTemplate) | **DELETE** /challenges/templates/{id} | Delete a challenge template
[**getChallenge**](CampaignsChallengesApi.md#getChallenge) | **GET** /challenges/{id} | Retrieve a challenge
[**getChallengeActivities**](CampaignsChallengesApi.md#getChallengeActivities) | **GET** /challenges/{challenge_id}/activities | List and search challenge activities
[**getChallengeActivity**](CampaignsChallengesApi.md#getChallengeActivity) | **GET** /challenges/{challenge_id}/activities/{id} | Get a single challenge activity
[**getChallengeActivityTemplate**](CampaignsChallengesApi.md#getChallengeActivityTemplate) | **GET** /challenge-activities/templates/{id} | Get a single challenge activity template
[**getChallengeActivityTemplates**](CampaignsChallengesApi.md#getChallengeActivityTemplates) | **GET** /challenge-activities/templates | List and search challenge activity templates
[**getChallengeEvent**](CampaignsChallengesApi.md#getChallengeEvent) | **GET** /challenges/events/{id} | Retrieve a single challenge event details
[**getChallengeEvents**](CampaignsChallengesApi.md#getChallengeEvents) | **GET** /challenges/events | Retrieve a list of challenge events
[**getChallengeTemplate**](CampaignsChallengesApi.md#getChallengeTemplate) | **GET** /challenges/templates/{id} | Get a single challenge template
[**getChallengeTemplates**](CampaignsChallengesApi.md#getChallengeTemplates) | **GET** /challenges/templates | List and search challenge templates
[**getChallenges**](CampaignsChallengesApi.md#getChallenges) | **GET** /challenges | Retrieve a list of challenges
[**updateChallenge**](CampaignsChallengesApi.md#updateChallenge) | **PUT** /challenges/{id} | Update a challenge
[**updateChallengeActivity**](CampaignsChallengesApi.md#updateChallengeActivity) | **PUT** /challenges/{challenge_id}/activities/{id} | Update a challenge activity
[**updateChallengeActivityTemplate**](CampaignsChallengesApi.md#updateChallengeActivityTemplate) | **PUT** /challenge-activities/templates/{id} | Update an challenge activity template
[**updateChallengeTemplate**](CampaignsChallengesApi.md#updateChallengeTemplate) | **PUT** /challenges/templates/{id} | Update a challenge template


# **createChallenge**
> ChallengeResource createChallenge(challengeResource)

Create a challenge

Challenges do not run on their own.  They must be added to a campaign before events will spawn.

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new CampaignsChallengesApi();
var challengeResource = new ChallengeResource(); // ChallengeResource | The challenge resource object

try { 
    var result = api_instance.createChallenge(challengeResource);
    print(result);
} catch (e) {
    print("Exception when calling CampaignsChallengesApi->createChallenge: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **challengeResource** | [**ChallengeResource**](ChallengeResource.md)| The challenge resource object | [optional] 

### Return type

[**ChallengeResource**](ChallengeResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createChallengeActivity**
> ChallengeActivityResource createChallengeActivity(challengeId, challengeActivityResource, validateSettings)

Create a challenge activity

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new CampaignsChallengesApi();
var challengeId = 789; // int | The challenge id
var challengeActivityResource = new ChallengeActivityResource(); // ChallengeActivityResource | The challenge activity resource object
var validateSettings = true; // bool | Whether to validate the settings being sent against the available settings on the base activity.

try { 
    var result = api_instance.createChallengeActivity(challengeId, challengeActivityResource, validateSettings);
    print(result);
} catch (e) {
    print("Exception when calling CampaignsChallengesApi->createChallengeActivity: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **challengeId** | **int**| The challenge id | 
 **challengeActivityResource** | [**ChallengeActivityResource**](ChallengeActivityResource.md)| The challenge activity resource object | [optional] 
 **validateSettings** | **bool**| Whether to validate the settings being sent against the available settings on the base activity. | [optional] [default to false]

### Return type

[**ChallengeActivityResource**](ChallengeActivityResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createChallengeActivityTemplate**
> TemplateResource createChallengeActivityTemplate(challengeActivityTemplateResource)

Create a challenge activity template

Challenge Activity Templates define a type of challenge activity and the properties they have

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new CampaignsChallengesApi();
var challengeActivityTemplateResource = new TemplateResource(); // TemplateResource | The challengeActivity template resource object

try { 
    var result = api_instance.createChallengeActivityTemplate(challengeActivityTemplateResource);
    print(result);
} catch (e) {
    print("Exception when calling CampaignsChallengesApi->createChallengeActivityTemplate: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **challengeActivityTemplateResource** | [**TemplateResource**](TemplateResource.md)| The challengeActivity template resource object | [optional] 

### Return type

[**TemplateResource**](TemplateResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createChallengeTemplate**
> TemplateResource createChallengeTemplate(challengeTemplateResource)

Create a challenge template

Challenge Templates define a type of challenge and the properties they have

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new CampaignsChallengesApi();
var challengeTemplateResource = new TemplateResource(); // TemplateResource | The challenge template resource object

try { 
    var result = api_instance.createChallengeTemplate(challengeTemplateResource);
    print(result);
} catch (e) {
    print("Exception when calling CampaignsChallengesApi->createChallengeTemplate: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **challengeTemplateResource** | [**TemplateResource**](TemplateResource.md)| The challenge template resource object | [optional] 

### Return type

[**TemplateResource**](TemplateResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteChallenge**
> deleteChallenge(id)

Delete a challenge

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new CampaignsChallengesApi();
var id = 789; // int | The challenge id

try { 
    api_instance.deleteChallenge(id);
} catch (e) {
    print("Exception when calling CampaignsChallengesApi->deleteChallenge: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The challenge id | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteChallengeActivity**
> deleteChallengeActivity(id, challengeId)

Delete a challenge activity

A challenge can have multiple instances of the same activity and thus the id used is of the specific entry within the challenge

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new CampaignsChallengesApi();
var id = 789; // int | The challenge_activity id
var challengeId = 789; // int | The challenge id

try { 
    api_instance.deleteChallengeActivity(id, challengeId);
} catch (e) {
    print("Exception when calling CampaignsChallengesApi->deleteChallengeActivity: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The challenge_activity id | 
 **challengeId** | **int**| The challenge id | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteChallengeActivityTemplate**
> deleteChallengeActivityTemplate(id, cascade)

Delete a challenge activity template

If cascade = 'detach', it will force delete the template even if it's attached to other objects

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new CampaignsChallengesApi();
var id = id_example; // String | The id of the template
var cascade = cascade_example; // String | The value needed to delete used templates

try { 
    api_instance.deleteChallengeActivityTemplate(id, cascade);
} catch (e) {
    print("Exception when calling CampaignsChallengesApi->deleteChallengeActivityTemplate: $e\n");
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

# **deleteChallengeEvent**
> deleteChallengeEvent(id)

Delete a challenge event

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new CampaignsChallengesApi();
var id = 789; // int | The challenge event id

try { 
    api_instance.deleteChallengeEvent(id);
} catch (e) {
    print("Exception when calling CampaignsChallengesApi->deleteChallengeEvent: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The challenge event id | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteChallengeTemplate**
> deleteChallengeTemplate(id, cascade)

Delete a challenge template

If cascade = 'detach', it will force delete the template even if it's attached to other objects

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new CampaignsChallengesApi();
var id = id_example; // String | The id of the template
var cascade = cascade_example; // String | The value needed to delete used templates

try { 
    api_instance.deleteChallengeTemplate(id, cascade);
} catch (e) {
    print("Exception when calling CampaignsChallengesApi->deleteChallengeTemplate: $e\n");
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

# **getChallenge**
> ChallengeResource getChallenge(id)

Retrieve a challenge

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new CampaignsChallengesApi();
var id = 789; // int | The challenge id

try { 
    var result = api_instance.getChallenge(id);
    print(result);
} catch (e) {
    print("Exception when calling CampaignsChallengesApi->getChallenge: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The challenge id | 

### Return type

[**ChallengeResource**](ChallengeResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getChallengeActivities**
> PageResource«BareChallengeActivityResource» getChallengeActivities(challengeId, size, page, order)

List and search challenge activities

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new CampaignsChallengesApi();
var challengeId = 789; // int | The challenge id
var size = 56; // int | The number of objects returned per page
var page = 56; // int | The number of the page returned, starting with 1
var order = order_example; // String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]

try { 
    var result = api_instance.getChallengeActivities(challengeId, size, page, order);
    print(result);
} catch (e) {
    print("Exception when calling CampaignsChallengesApi->getChallengeActivities: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **challengeId** | **int**| The challenge id | 
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **String**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to id:ASC]

### Return type

[**PageResource«BareChallengeActivityResource»**](PageResource«BareChallengeActivityResource».md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getChallengeActivity**
> ChallengeActivityResource getChallengeActivity(id, challengeId)

Get a single challenge activity

A challenge can have multiple instances of the same activity and thus the id used is of the specific entry within the challenge

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new CampaignsChallengesApi();
var id = 789; // int | The challenge_activity id
var challengeId = 789; // int | The challenge id

try { 
    var result = api_instance.getChallengeActivity(id, challengeId);
    print(result);
} catch (e) {
    print("Exception when calling CampaignsChallengesApi->getChallengeActivity: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The challenge_activity id | 
 **challengeId** | **int**| The challenge id | 

### Return type

[**ChallengeActivityResource**](ChallengeActivityResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getChallengeActivityTemplate**
> TemplateResource getChallengeActivityTemplate(id)

Get a single challenge activity template

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new CampaignsChallengesApi();
var id = id_example; // String | The id of the template

try { 
    var result = api_instance.getChallengeActivityTemplate(id);
    print(result);
} catch (e) {
    print("Exception when calling CampaignsChallengesApi->getChallengeActivityTemplate: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the template | 

### Return type

[**TemplateResource**](TemplateResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getChallengeActivityTemplates**
> PageResource«TemplateResource» getChallengeActivityTemplates(size, page, order)

List and search challenge activity templates

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new CampaignsChallengesApi();
var size = 56; // int | The number of objects returned per page
var page = 56; // int | The number of the page returned, starting with 1
var order = order_example; // String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]

try { 
    var result = api_instance.getChallengeActivityTemplates(size, page, order);
    print(result);
} catch (e) {
    print("Exception when calling CampaignsChallengesApi->getChallengeActivityTemplates: $e\n");
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

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getChallengeEvent**
> ChallengeEventResource getChallengeEvent(id)

Retrieve a single challenge event details

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new CampaignsChallengesApi();
var id = 789; // int | The challenge event id

try { 
    var result = api_instance.getChallengeEvent(id);
    print(result);
} catch (e) {
    print("Exception when calling CampaignsChallengesApi->getChallengeEvent: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The challenge event id | 

### Return type

[**ChallengeEventResource**](ChallengeEventResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getChallengeEvents**
> PageResource«ChallengeEventResource» getChallengeEvents(filterStartDate, filterEndDate, filterCampaigns, filterChallenge, size, page, order)

Retrieve a list of challenge events

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new CampaignsChallengesApi();
var filterStartDate = filterStartDate_example; // String | A comma separated string without spaces.  First value is the operator to search on, second value is the event start date, a unix timestamp in seconds.  Allowed operators: (GT, LT, EQ, GOE, LOE).
var filterEndDate = filterEndDate_example; // String | A comma separated string without spaces.  First value is the operator to search on, second value is the event end date, a unix timestamp in seconds.  Allowed operators: (GT, LT, EQ, GOE, LOE).
var filterCampaigns = true; // bool | check only for events from currently running campaigns
var filterChallenge = 789; // int | check only for events from the challenge specified by id
var size = 56; // int | The number of objects returned per page
var page = 56; // int | The number of the page returned, starting with 1
var order = order_example; // String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]

try { 
    var result = api_instance.getChallengeEvents(filterStartDate, filterEndDate, filterCampaigns, filterChallenge, size, page, order);
    print(result);
} catch (e) {
    print("Exception when calling CampaignsChallengesApi->getChallengeEvents: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterStartDate** | **String**| A comma separated string without spaces.  First value is the operator to search on, second value is the event start date, a unix timestamp in seconds.  Allowed operators: (GT, LT, EQ, GOE, LOE). | [optional] 
 **filterEndDate** | **String**| A comma separated string without spaces.  First value is the operator to search on, second value is the event end date, a unix timestamp in seconds.  Allowed operators: (GT, LT, EQ, GOE, LOE). | [optional] 
 **filterCampaigns** | **bool**| check only for events from currently running campaigns | [optional] 
 **filterChallenge** | **int**| check only for events from the challenge specified by id | [optional] 
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **String**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to id:ASC]

### Return type

[**PageResource«ChallengeEventResource»**](PageResource«ChallengeEventResource».md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getChallengeTemplate**
> TemplateResource getChallengeTemplate(id)

Get a single challenge template

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new CampaignsChallengesApi();
var id = id_example; // String | The id of the template

try { 
    var result = api_instance.getChallengeTemplate(id);
    print(result);
} catch (e) {
    print("Exception when calling CampaignsChallengesApi->getChallengeTemplate: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the template | 

### Return type

[**TemplateResource**](TemplateResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getChallengeTemplates**
> PageResource«TemplateResource» getChallengeTemplates(size, page, order)

List and search challenge templates

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new CampaignsChallengesApi();
var size = 56; // int | The number of objects returned per page
var page = 56; // int | The number of the page returned, starting with 1
var order = order_example; // String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]

try { 
    var result = api_instance.getChallengeTemplates(size, page, order);
    print(result);
} catch (e) {
    print("Exception when calling CampaignsChallengesApi->getChallengeTemplates: $e\n");
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

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getChallenges**
> PageResource«ChallengeResource» getChallenges(filterTemplate, filterActiveCampaign, filterStartDate, filterEndDate, size, page, order)

Retrieve a list of challenges

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new CampaignsChallengesApi();
var filterTemplate = true; // bool | Filter for challenges that are not tied to campaigns (templates)
var filterActiveCampaign = true; // bool | Filter for challenges that are tied to active campaigns
var filterStartDate = filterStartDate_example; // String | A comma separated string without spaces.  First value is the operator to search on, second value is the challenge start date, a unix timestamp in seconds.  Allowed operators: (GT, LT, EQ, GOE, LOE).
var filterEndDate = filterEndDate_example; // String | A comma separated string without spaces.  First value is the operator to search on, second value is the challenge end date, a unix timestamp in seconds.  Allowed operators: (GT, LT, EQ, GOE, LOE).
var size = 56; // int | The number of objects returned per page
var page = 56; // int | The number of the page returned, starting with 1
var order = order_example; // String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]

try { 
    var result = api_instance.getChallenges(filterTemplate, filterActiveCampaign, filterStartDate, filterEndDate, size, page, order);
    print(result);
} catch (e) {
    print("Exception when calling CampaignsChallengesApi->getChallenges: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterTemplate** | **bool**| Filter for challenges that are not tied to campaigns (templates) | [optional] 
 **filterActiveCampaign** | **bool**| Filter for challenges that are tied to active campaigns | [optional] 
 **filterStartDate** | **String**| A comma separated string without spaces.  First value is the operator to search on, second value is the challenge start date, a unix timestamp in seconds.  Allowed operators: (GT, LT, EQ, GOE, LOE). | [optional] 
 **filterEndDate** | **String**| A comma separated string without spaces.  First value is the operator to search on, second value is the challenge end date, a unix timestamp in seconds.  Allowed operators: (GT, LT, EQ, GOE, LOE). | [optional] 
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **String**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to id:ASC]

### Return type

[**PageResource«ChallengeResource»**](PageResource«ChallengeResource».md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateChallenge**
> ChallengeResource updateChallenge(id, challengeResource)

Update a challenge

If the challenge is a copy, changes will propagate to all the related challenges

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new CampaignsChallengesApi();
var id = 789; // int | The challenge id
var challengeResource = new ChallengeResource(); // ChallengeResource | The challenge resource object

try { 
    var result = api_instance.updateChallenge(id, challengeResource);
    print(result);
} catch (e) {
    print("Exception when calling CampaignsChallengesApi->updateChallenge: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The challenge id | 
 **challengeResource** | [**ChallengeResource**](ChallengeResource.md)| The challenge resource object | [optional] 

### Return type

[**ChallengeResource**](ChallengeResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateChallengeActivity**
> ChallengeActivityResource updateChallengeActivity(id, challengeId, challengeActivityResource)

Update a challenge activity

A challenge can have multiple instances of the same activity and thus the id used is of the specific entry within the challenge

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new CampaignsChallengesApi();
var id = 789; // int | The challenge_activity id
var challengeId = 789; // int | The challenge id
var challengeActivityResource = new ChallengeActivityResource(); // ChallengeActivityResource | The challenge activity resource object

try { 
    var result = api_instance.updateChallengeActivity(id, challengeId, challengeActivityResource);
    print(result);
} catch (e) {
    print("Exception when calling CampaignsChallengesApi->updateChallengeActivity: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The challenge_activity id | 
 **challengeId** | **int**| The challenge id | 
 **challengeActivityResource** | [**ChallengeActivityResource**](ChallengeActivityResource.md)| The challenge activity resource object | [optional] 

### Return type

[**ChallengeActivityResource**](ChallengeActivityResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateChallengeActivityTemplate**
> TemplateResource updateChallengeActivityTemplate(id, challengeActivityTemplateResource)

Update an challenge activity template

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new CampaignsChallengesApi();
var id = id_example; // String | The id of the template
var challengeActivityTemplateResource = new TemplateResource(); // TemplateResource | The challengeActivity template resource object

try { 
    var result = api_instance.updateChallengeActivityTemplate(id, challengeActivityTemplateResource);
    print(result);
} catch (e) {
    print("Exception when calling CampaignsChallengesApi->updateChallengeActivityTemplate: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the template | 
 **challengeActivityTemplateResource** | [**TemplateResource**](TemplateResource.md)| The challengeActivity template resource object | [optional] 

### Return type

[**TemplateResource**](TemplateResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateChallengeTemplate**
> TemplateResource updateChallengeTemplate(id, challengeTemplateResource)

Update a challenge template

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new CampaignsChallengesApi();
var id = id_example; // String | The id of the template
var challengeTemplateResource = new TemplateResource(); // TemplateResource | The challenge template resource object

try { 
    var result = api_instance.updateChallengeTemplate(id, challengeTemplateResource);
    print(result);
} catch (e) {
    print("Exception when calling CampaignsChallengesApi->updateChallengeTemplate: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the template | 
 **challengeTemplateResource** | [**TemplateResource**](TemplateResource.md)| The challenge template resource object | [optional] 

### Return type

[**TemplateResource**](TemplateResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

