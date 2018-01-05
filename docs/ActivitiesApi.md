# swagger.api.ActivitiesApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://devsandbox.knetikcloud.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createActivity**](ActivitiesApi.md#createActivity) | **POST** /activities | Create an activity
[**createActivityOccurrence**](ActivitiesApi.md#createActivityOccurrence) | **POST** /activity-occurrences | Create a new activity occurrence. Ex: start a game
[**createActivityTemplate**](ActivitiesApi.md#createActivityTemplate) | **POST** /activities/templates | Create a activity template
[**deleteActivity**](ActivitiesApi.md#deleteActivity) | **DELETE** /activities/{id} | Delete an activity
[**deleteActivityTemplate**](ActivitiesApi.md#deleteActivityTemplate) | **DELETE** /activities/templates/{id} | Delete a activity template
[**getActivities**](ActivitiesApi.md#getActivities) | **GET** /activities | List activity definitions
[**getActivity**](ActivitiesApi.md#getActivity) | **GET** /activities/{id} | Get a single activity
[**getActivityOccurrenceDetails**](ActivitiesApi.md#getActivityOccurrenceDetails) | **GET** /activity-occurrences/{activity_occurrence_id} | Load a single activity occurrence details
[**getActivityTemplate**](ActivitiesApi.md#getActivityTemplate) | **GET** /activities/templates/{id} | Get a single activity template
[**getActivityTemplates**](ActivitiesApi.md#getActivityTemplates) | **GET** /activities/templates | List and search activity templates
[**listActivityOccurrences**](ActivitiesApi.md#listActivityOccurrences) | **GET** /activity-occurrences | List activity occurrences
[**setActivityOccurrenceResults**](ActivitiesApi.md#setActivityOccurrenceResults) | **POST** /activity-occurrences/{activity_occurrence_id}/results | Sets the status of an activity occurrence to FINISHED and logs metrics
[**updateActivity**](ActivitiesApi.md#updateActivity) | **PUT** /activities/{id} | Update an activity
[**updateActivityOccurrence**](ActivitiesApi.md#updateActivityOccurrence) | **PUT** /activity-occurrences/{activity_occurrence_id}/status | Updated the status of an activity occurrence
[**updateActivityTemplate**](ActivitiesApi.md#updateActivityTemplate) | **PUT** /activities/templates/{id} | Update an activity template


# **createActivity**
> ActivityResource createActivity(activityResource)

Create an activity

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new ActivitiesApi();
var activityResource = new ActivityResource(); // ActivityResource | The activity resource object

try { 
    var result = api_instance.createActivity(activityResource);
    print(result);
} catch (e) {
    print("Exception when calling ActivitiesApi->createActivity: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **activityResource** | [**ActivityResource**](ActivityResource.md)| The activity resource object | [optional] 

### Return type

[**ActivityResource**](ActivityResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createActivityOccurrence**
> ActivityOccurrenceResource createActivityOccurrence(test, activityOccurrenceResource)

Create a new activity occurrence. Ex: start a game

Has to enforce extra rules if not used as an admin

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new ActivitiesApi();
var test = true; // bool | if true, indicates that the occurrence should NOT be created. This can be used to test for eligibility and valid settings
var activityOccurrenceResource = new CreateActivityOccurrenceRequest(); // CreateActivityOccurrenceRequest | The activity occurrence object

try { 
    var result = api_instance.createActivityOccurrence(test, activityOccurrenceResource);
    print(result);
} catch (e) {
    print("Exception when calling ActivitiesApi->createActivityOccurrence: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **test** | **bool**| if true, indicates that the occurrence should NOT be created. This can be used to test for eligibility and valid settings | [optional] [default to false]
 **activityOccurrenceResource** | [**CreateActivityOccurrenceRequest**](CreateActivityOccurrenceRequest.md)| The activity occurrence object | [optional] 

### Return type

[**ActivityOccurrenceResource**](ActivityOccurrenceResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createActivityTemplate**
> TemplateResource createActivityTemplate(activityTemplateResource)

Create a activity template

Activity Templates define a type of activity and the properties they have

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new ActivitiesApi();
var activityTemplateResource = new TemplateResource(); // TemplateResource | The activity template resource object

try { 
    var result = api_instance.createActivityTemplate(activityTemplateResource);
    print(result);
} catch (e) {
    print("Exception when calling ActivitiesApi->createActivityTemplate: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **activityTemplateResource** | [**TemplateResource**](TemplateResource.md)| The activity template resource object | [optional] 

### Return type

[**TemplateResource**](TemplateResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteActivity**
> deleteActivity(id)

Delete an activity

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new ActivitiesApi();
var id = 789; // int | The id of the activity

try { 
    api_instance.deleteActivity(id);
} catch (e) {
    print("Exception when calling ActivitiesApi->deleteActivity: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The id of the activity | 

### Return type

void (empty response body)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteActivityTemplate**
> deleteActivityTemplate(id, cascade)

Delete a activity template

If cascade = 'detach', it will force delete the template even if it's attached to other objects

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new ActivitiesApi();
var id = id_example; // String | The id of the template
var cascade = cascade_example; // String | The value needed to delete used templates

try { 
    api_instance.deleteActivityTemplate(id, cascade);
} catch (e) {
    print("Exception when calling ActivitiesApi->deleteActivityTemplate: $e\n");
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

# **getActivities**
> PageResource«BareActivityResource» getActivities(filterTemplate, filterName, filterId, size, page, order)

List activity definitions

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new ActivitiesApi();
var filterTemplate = true; // bool | Filter for activities that are templates, or specifically not if false
var filterName = filterName_example; // String | Filter for activities that have a name starting with specified string
var filterId = filterId_example; // String | Filter for activities with an id in the given comma separated list of ids
var size = 56; // int | The number of objects returned per page
var page = 56; // int | The number of the page returned, starting with 1
var order = order_example; // String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]

try { 
    var result = api_instance.getActivities(filterTemplate, filterName, filterId, size, page, order);
    print(result);
} catch (e) {
    print("Exception when calling ActivitiesApi->getActivities: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterTemplate** | **bool**| Filter for activities that are templates, or specifically not if false | [optional] 
 **filterName** | **String**| Filter for activities that have a name starting with specified string | [optional] 
 **filterId** | **String**| Filter for activities with an id in the given comma separated list of ids | [optional] 
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **String**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to id:ASC]

### Return type

[**PageResource«BareActivityResource»**](PageResource«BareActivityResource».md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getActivity**
> ActivityResource getActivity(id)

Get a single activity

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new ActivitiesApi();
var id = 789; // int | The id of the activity

try { 
    var result = api_instance.getActivity(id);
    print(result);
} catch (e) {
    print("Exception when calling ActivitiesApi->getActivity: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The id of the activity | 

### Return type

[**ActivityResource**](ActivityResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getActivityOccurrenceDetails**
> ActivityOccurrenceResource getActivityOccurrenceDetails(activityOccurrenceId)

Load a single activity occurrence details

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new ActivitiesApi();
var activityOccurrenceId = 789; // int | The id of the activity occurrence

try { 
    var result = api_instance.getActivityOccurrenceDetails(activityOccurrenceId);
    print(result);
} catch (e) {
    print("Exception when calling ActivitiesApi->getActivityOccurrenceDetails: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **activityOccurrenceId** | **int**| The id of the activity occurrence | 

### Return type

[**ActivityOccurrenceResource**](ActivityOccurrenceResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getActivityTemplate**
> TemplateResource getActivityTemplate(id)

Get a single activity template

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new ActivitiesApi();
var id = id_example; // String | The id of the template

try { 
    var result = api_instance.getActivityTemplate(id);
    print(result);
} catch (e) {
    print("Exception when calling ActivitiesApi->getActivityTemplate: $e\n");
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

# **getActivityTemplates**
> PageResource«TemplateResource» getActivityTemplates(size, page, order)

List and search activity templates

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new ActivitiesApi();
var size = 56; // int | The number of objects returned per page
var page = 56; // int | The number of the page returned, starting with 1
var order = order_example; // String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]

try { 
    var result = api_instance.getActivityTemplates(size, page, order);
    print(result);
} catch (e) {
    print("Exception when calling ActivitiesApi->getActivityTemplates: $e\n");
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

# **listActivityOccurrences**
> PageResource«ActivityOccurrenceResource» listActivityOccurrences(filterActivity, filterStatus, filterEvent, filterChallenge, size, page, order)

List activity occurrences

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new ActivitiesApi();
var filterActivity = filterActivity_example; // String | Filter for occurrences of the given activity ID
var filterStatus = filterStatus_example; // String | Filter for occurrences of the given activity ID
var filterEvent = 56; // int | Filter for occurrences played during the given event
var filterChallenge = 56; // int | Filter for occurrences played within the given challenge
var size = 56; // int | The number of objects returned per page
var page = 56; // int | The number of the page returned, starting with 1
var order = order_example; // String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]

try { 
    var result = api_instance.listActivityOccurrences(filterActivity, filterStatus, filterEvent, filterChallenge, size, page, order);
    print(result);
} catch (e) {
    print("Exception when calling ActivitiesApi->listActivityOccurrences: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterActivity** | **String**| Filter for occurrences of the given activity ID | [optional] 
 **filterStatus** | **String**| Filter for occurrences of the given activity ID | [optional] 
 **filterEvent** | **int**| Filter for occurrences played during the given event | [optional] 
 **filterChallenge** | **int**| Filter for occurrences played within the given challenge | [optional] 
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **String**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to id:ASC]

### Return type

[**PageResource«ActivityOccurrenceResource»**](PageResource«ActivityOccurrenceResource».md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **setActivityOccurrenceResults**
> ActivityOccurrenceResults setActivityOccurrenceResults(activityOccurrenceId, activityOccurrenceResults)

Sets the status of an activity occurrence to FINISHED and logs metrics

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new ActivitiesApi();
var activityOccurrenceId = 789; // int | The id of the activity occurrence
var activityOccurrenceResults = new ActivityOccurrenceResultsResource(); // ActivityOccurrenceResultsResource | The activity occurrence object

try { 
    var result = api_instance.setActivityOccurrenceResults(activityOccurrenceId, activityOccurrenceResults);
    print(result);
} catch (e) {
    print("Exception when calling ActivitiesApi->setActivityOccurrenceResults: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **activityOccurrenceId** | **int**| The id of the activity occurrence | 
 **activityOccurrenceResults** | [**ActivityOccurrenceResultsResource**](ActivityOccurrenceResultsResource.md)| The activity occurrence object | [optional] 

### Return type

[**ActivityOccurrenceResults**](ActivityOccurrenceResults.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateActivity**
> ActivityResource updateActivity(id, activityResource)

Update an activity

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new ActivitiesApi();
var id = 789; // int | The id of the activity
var activityResource = new ActivityResource(); // ActivityResource | The activity resource object

try { 
    var result = api_instance.updateActivity(id, activityResource);
    print(result);
} catch (e) {
    print("Exception when calling ActivitiesApi->updateActivity: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The id of the activity | 
 **activityResource** | [**ActivityResource**](ActivityResource.md)| The activity resource object | [optional] 

### Return type

[**ActivityResource**](ActivityResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateActivityOccurrence**
> updateActivityOccurrence(activityOccurrenceId, activityOccurrenceStatus)

Updated the status of an activity occurrence

If setting to 'FINISHED' reward will be run based on current metrics that have been recorded already. Aternatively, see results endpoint to finish and record all metrics at once.

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new ActivitiesApi();
var activityOccurrenceId = 789; // int | The id of the activity occurrence
var activityOccurrenceStatus = new String(); // String | The activity occurrence status object

try { 
    api_instance.updateActivityOccurrence(activityOccurrenceId, activityOccurrenceStatus);
} catch (e) {
    print("Exception when calling ActivitiesApi->updateActivityOccurrence: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **activityOccurrenceId** | **int**| The id of the activity occurrence | 
 **activityOccurrenceStatus** | **String**| The activity occurrence status object | [optional] 

### Return type

void (empty response body)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateActivityTemplate**
> TemplateResource updateActivityTemplate(id, activityTemplateResource)

Update an activity template

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new ActivitiesApi();
var id = id_example; // String | The id of the template
var activityTemplateResource = new TemplateResource(); // TemplateResource | The activity template resource object

try { 
    var result = api_instance.updateActivityTemplate(id, activityTemplateResource);
    print(result);
} catch (e) {
    print("Exception when calling ActivitiesApi->updateActivityTemplate: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the template | 
 **activityTemplateResource** | [**TemplateResource**](TemplateResource.md)| The activity template resource object | [optional] 

### Return type

[**TemplateResource**](TemplateResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

