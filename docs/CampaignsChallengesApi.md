# swagger.api.CampaignsChallengesApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://localhost:8080/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createChallengeActivityUsingPOST**](CampaignsChallengesApi.md#createChallengeActivityUsingPOST) | **POST** /challenges/{challenge_id}/activities | Create a challenge activity
[**createChallengeTemplateUsingPOST**](CampaignsChallengesApi.md#createChallengeTemplateUsingPOST) | **POST** /challenges/templates | Create a challenge template
[**createChallengeUsingPOST**](CampaignsChallengesApi.md#createChallengeUsingPOST) | **POST** /challenges | Create a challenge
[**deleteChallengeActivityUsingDELETE**](CampaignsChallengesApi.md#deleteChallengeActivityUsingDELETE) | **DELETE** /challenges/{challenge_id}/activities/{activity_id} | Delete a challenge activity
[**deleteChallengeEventUsingDELETE**](CampaignsChallengesApi.md#deleteChallengeEventUsingDELETE) | **DELETE** /challenges/events/{id} | Delete a challenge event
[**deleteChallengeTemplateUsingDELETE**](CampaignsChallengesApi.md#deleteChallengeTemplateUsingDELETE) | **DELETE** /challenges/templates/{id} | Delete a challenge template
[**deleteChallengeUsingDELETE**](CampaignsChallengesApi.md#deleteChallengeUsingDELETE) | **DELETE** /challenges/{id} | Delete a challenge
[**getActivitiesUsingGET1**](CampaignsChallengesApi.md#getActivitiesUsingGET1) | **GET** /challenges/{challenge_id}/activities | List and search challenge activities
[**getChallengeActivityUsingGET**](CampaignsChallengesApi.md#getChallengeActivityUsingGET) | **GET** /challenges/{challenge_id}/activities/{activity_id} | Get a single challenge activity
[**getChallengeEventUsingGET**](CampaignsChallengesApi.md#getChallengeEventUsingGET) | **GET** /challenges/events/{id} | Retrieve a single challenge event details
[**getChallengeEventssUsingGET**](CampaignsChallengesApi.md#getChallengeEventssUsingGET) | **GET** /challenges/events | Retrieve a list of challenge events
[**getChallengeTemplateUsingGET**](CampaignsChallengesApi.md#getChallengeTemplateUsingGET) | **GET** /challenges/templates/{id} | Get a single challenge template
[**getChallengeTemplatesUsingGET**](CampaignsChallengesApi.md#getChallengeTemplatesUsingGET) | **GET** /challenges/templates | List and search challenge templates
[**getChallengeUsingGET**](CampaignsChallengesApi.md#getChallengeUsingGET) | **GET** /challenges/{id} | Retrieve a single challenge details
[**getChallengesUsingGET1**](CampaignsChallengesApi.md#getChallengesUsingGET1) | **GET** /challenges | Retrieve a list of challenges
[**updateChallengeActivityUsingPUT**](CampaignsChallengesApi.md#updateChallengeActivityUsingPUT) | **PUT** /challenges/{challenge_id}/activities/{activity_id} | Update a challenge activity
[**updateChallengeTemplateUsingPUT**](CampaignsChallengesApi.md#updateChallengeTemplateUsingPUT) | **PUT** /challenges/templates/{id} | Update a challenge template
[**updateChallengeUsingPUT**](CampaignsChallengesApi.md#updateChallengeUsingPUT) | **PUT** /challenges/{id} | Update a challenge&#39;s information


# **createChallengeActivityUsingPOST**
> ChallengeActivityResource createChallengeActivityUsingPOST(challengeId, challengeActivityResource, validateSettings)

Create a challenge activity

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new CampaignsChallengesApi();
var challengeId = 789; // int | The challenge id
var challengeActivityResource = new ChallengeActivityResource(); // ChallengeActivityResource | The challenge activity resource object
var validateSettings = true; // bool | Whether to validate the settings being sent against the available settings on the base activity.

try { 
    var result = api_instance.createChallengeActivityUsingPOST(challengeId, challengeActivityResource, validateSettings);
    print(result);
} catch (e) {
    print("Exception when calling CampaignsChallengesApi->createChallengeActivityUsingPOST: $e\n");
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

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createChallengeTemplateUsingPOST**
> TemplateResource createChallengeTemplateUsingPOST(challengeTemplateResource)

Create a challenge template

Challenge Templates define a type of challenge and the properties they have

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new CampaignsChallengesApi();
var challengeTemplateResource = new TemplateResource(); // TemplateResource | The challenge template resource object

try { 
    var result = api_instance.createChallengeTemplateUsingPOST(challengeTemplateResource);
    print(result);
} catch (e) {
    print("Exception when calling CampaignsChallengesApi->createChallengeTemplateUsingPOST: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **challengeTemplateResource** | [**TemplateResource**](TemplateResource.md)| The challenge template resource object | [optional] 

### Return type

[**TemplateResource**](TemplateResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createChallengeUsingPOST**
> ChallengeResource createChallengeUsingPOST(challengeResource)

Create a challenge

Challenges do not run on their own.  They must be added to a campaign before events will spawn.

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new CampaignsChallengesApi();
var challengeResource = new ChallengeResource(); // ChallengeResource | The challenge resource object

try { 
    var result = api_instance.createChallengeUsingPOST(challengeResource);
    print(result);
} catch (e) {
    print("Exception when calling CampaignsChallengesApi->createChallengeUsingPOST: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **challengeResource** | [**ChallengeResource**](ChallengeResource.md)| The challenge resource object | [optional] 

### Return type

[**ChallengeResource**](ChallengeResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteChallengeActivityUsingDELETE**
> deleteChallengeActivityUsingDELETE(activityId, challengeId)

Delete a challenge activity

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new CampaignsChallengesApi();
var activityId = 789; // int | The activity id
var challengeId = 789; // int | The challenge id

try { 
    api_instance.deleteChallengeActivityUsingDELETE(activityId, challengeId);
} catch (e) {
    print("Exception when calling CampaignsChallengesApi->deleteChallengeActivityUsingDELETE: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **activityId** | **int**| The activity id | 
 **challengeId** | **int**| The challenge id | 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteChallengeEventUsingDELETE**
> deleteChallengeEventUsingDELETE(id)

Delete a challenge event

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new CampaignsChallengesApi();
var id = 789; // int | The challenge event id

try { 
    api_instance.deleteChallengeEventUsingDELETE(id);
} catch (e) {
    print("Exception when calling CampaignsChallengesApi->deleteChallengeEventUsingDELETE: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The challenge event id | 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteChallengeTemplateUsingDELETE**
> deleteChallengeTemplateUsingDELETE(id, cascade)

Delete a challenge template

If cascade = 'detach', it will force delete the template even if it's attached to other objects

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new CampaignsChallengesApi();
var id = id_example; // String | The id of the template
var cascade = cascade_example; // String | The value needed to delete used templates

try { 
    api_instance.deleteChallengeTemplateUsingDELETE(id, cascade);
} catch (e) {
    print("Exception when calling CampaignsChallengesApi->deleteChallengeTemplateUsingDELETE: $e\n");
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

# **deleteChallengeUsingDELETE**
> deleteChallengeUsingDELETE(id)

Delete a challenge

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new CampaignsChallengesApi();
var id = 789; // int | The challenge id

try { 
    api_instance.deleteChallengeUsingDELETE(id);
} catch (e) {
    print("Exception when calling CampaignsChallengesApi->deleteChallengeUsingDELETE: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The challenge id | 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getActivitiesUsingGET1**
> Page«BareChallengeActivityResource» getActivitiesUsingGET1(challengeId, size, page, order)

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
    var result = api_instance.getActivitiesUsingGET1(challengeId, size, page, order);
    print(result);
} catch (e) {
    print("Exception when calling CampaignsChallengesApi->getActivitiesUsingGET1: $e\n");
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

[**Page«BareChallengeActivityResource»**](Page«BareChallengeActivityResource».md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getChallengeActivityUsingGET**
> ChallengeActivityResource getChallengeActivityUsingGET(activityId)

Get a single challenge activity

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new CampaignsChallengesApi();
var activityId = 789; // int | The activity id

try { 
    var result = api_instance.getChallengeActivityUsingGET(activityId);
    print(result);
} catch (e) {
    print("Exception when calling CampaignsChallengesApi->getChallengeActivityUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **activityId** | **int**| The activity id | 

### Return type

[**ChallengeActivityResource**](ChallengeActivityResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getChallengeEventUsingGET**
> ChallengeEventResource getChallengeEventUsingGET(id)

Retrieve a single challenge event details

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new CampaignsChallengesApi();
var id = 789; // int | The challenge event id

try { 
    var result = api_instance.getChallengeEventUsingGET(id);
    print(result);
} catch (e) {
    print("Exception when calling CampaignsChallengesApi->getChallengeEventUsingGET: $e\n");
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
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getChallengeEventssUsingGET**
> Page«ChallengeEventResource» getChallengeEventssUsingGET(filterStartDate, filterEndDate, filterCampaigns, filterChallenge, size, page, order)

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
    var result = api_instance.getChallengeEventssUsingGET(filterStartDate, filterEndDate, filterCampaigns, filterChallenge, size, page, order);
    print(result);
} catch (e) {
    print("Exception when calling CampaignsChallengesApi->getChallengeEventssUsingGET: $e\n");
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

[**Page«ChallengeEventResource»**](Page«ChallengeEventResource».md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getChallengeTemplateUsingGET**
> TemplateResource getChallengeTemplateUsingGET(id)

Get a single challenge template

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new CampaignsChallengesApi();
var id = id_example; // String | The id of the template

try { 
    var result = api_instance.getChallengeTemplateUsingGET(id);
    print(result);
} catch (e) {
    print("Exception when calling CampaignsChallengesApi->getChallengeTemplateUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the template | 

### Return type

[**TemplateResource**](TemplateResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getChallengeTemplatesUsingGET**
> Page«TemplateResource» getChallengeTemplatesUsingGET(size, page, order)

List and search challenge templates

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new CampaignsChallengesApi();
var size = 56; // int | The number of objects returned per page
var page = 56; // int | The number of the page returned, starting with 1
var order = order_example; // String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]

try { 
    var result = api_instance.getChallengeTemplatesUsingGET(size, page, order);
    print(result);
} catch (e) {
    print("Exception when calling CampaignsChallengesApi->getChallengeTemplatesUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **String**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to id:ASC]

### Return type

[**Page«TemplateResource»**](Page«TemplateResource».md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getChallengeUsingGET**
> ChallengeResource getChallengeUsingGET(id)

Retrieve a single challenge details

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new CampaignsChallengesApi();
var id = 789; // int | The challenge id

try { 
    var result = api_instance.getChallengeUsingGET(id);
    print(result);
} catch (e) {
    print("Exception when calling CampaignsChallengesApi->getChallengeUsingGET: $e\n");
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
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getChallengesUsingGET1**
> Page«ChallengeResource» getChallengesUsingGET1(filterTemplate, filterActiveCampaign)

Retrieve a list of challenges

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new CampaignsChallengesApi();
var filterTemplate = true; // bool | Filter for challenges that are not tied to campaigns (templates)
var filterActiveCampaign = true; // bool | Filter for challenges that are tied to active campaigns

try { 
    var result = api_instance.getChallengesUsingGET1(filterTemplate, filterActiveCampaign);
    print(result);
} catch (e) {
    print("Exception when calling CampaignsChallengesApi->getChallengesUsingGET1: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterTemplate** | **bool**| Filter for challenges that are not tied to campaigns (templates) | [optional] 
 **filterActiveCampaign** | **bool**| Filter for challenges that are tied to active campaigns | [optional] 

### Return type

[**Page«ChallengeResource»**](Page«ChallengeResource».md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateChallengeActivityUsingPUT**
> updateChallengeActivityUsingPUT(activityId, challengeId, challengeActivityResource)

Update a challenge activity

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new CampaignsChallengesApi();
var activityId = 789; // int | The activity id
var challengeId = 789; // int | The challenge id
var challengeActivityResource = new ChallengeActivityResource(); // ChallengeActivityResource | The challenge activity resource object

try { 
    api_instance.updateChallengeActivityUsingPUT(activityId, challengeId, challengeActivityResource);
} catch (e) {
    print("Exception when calling CampaignsChallengesApi->updateChallengeActivityUsingPUT: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **activityId** | **int**| The activity id | 
 **challengeId** | **int**| The challenge id | 
 **challengeActivityResource** | [**ChallengeActivityResource**](ChallengeActivityResource.md)| The challenge activity resource object | [optional] 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateChallengeTemplateUsingPUT**
> updateChallengeTemplateUsingPUT(id, challengeTemplateResource)

Update a challenge template

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new CampaignsChallengesApi();
var id = id_example; // String | The id of the template
var challengeTemplateResource = new TemplateResource(); // TemplateResource | The challenge template resource object

try { 
    api_instance.updateChallengeTemplateUsingPUT(id, challengeTemplateResource);
} catch (e) {
    print("Exception when calling CampaignsChallengesApi->updateChallengeTemplateUsingPUT: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the template | 
 **challengeTemplateResource** | [**TemplateResource**](TemplateResource.md)| The challenge template resource object | [optional] 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateChallengeUsingPUT**
> ChallengeResource updateChallengeUsingPUT(id, challengeResource)

Update a challenge's information

If the challenge is a copy, changes will propagate to all the related challenges

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new CampaignsChallengesApi();
var id = 789; // int | The challenge id
var challengeResource = new ChallengeResource(); // ChallengeResource | The challenge resource object

try { 
    var result = api_instance.updateChallengeUsingPUT(id, challengeResource);
    print(result);
} catch (e) {
    print("Exception when calling CampaignsChallengesApi->updateChallengeUsingPUT: $e\n");
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

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

