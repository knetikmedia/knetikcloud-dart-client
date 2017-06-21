# swagger.api.ActivitiesApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://sandbox.knetikcloud.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createActivity**](ActivitiesApi.md#createActivity) | **POST** /activities | Create an activity
[**createActivityOccurrence**](ActivitiesApi.md#createActivityOccurrence) | **POST** /activity-occurrences | Create a new activity occurrence. Ex: start a game
[**createActivityTemplate**](ActivitiesApi.md#createActivityTemplate) | **POST** /activities/templates | Create a activity template
[**deleteActivity**](ActivitiesApi.md#deleteActivity) | **DELETE** /activities/{id} | Delete an activity
[**deleteActivityTemplate**](ActivitiesApi.md#deleteActivityTemplate) | **DELETE** /activities/templates/{id} | Delete a activity template
[**getActivities**](ActivitiesApi.md#getActivities) | **GET** /activities | List activity definitions
[**getActivity**](ActivitiesApi.md#getActivity) | **GET** /activities/{id} | Get a single activity
[**getActivityTemplate**](ActivitiesApi.md#getActivityTemplate) | **GET** /activities/templates/{id} | Get a single activity template
[**getActivityTemplates**](ActivitiesApi.md#getActivityTemplates) | **GET** /activities/templates | List and search activity templates
[**setActivityOccurrenceResults**](ActivitiesApi.md#setActivityOccurrenceResults) | **POST** /activity-occurrences/{activity_occurrence_id}/results | Sets the status of an activity occurrence to FINISHED and logs metrics
[**updateActivity**](ActivitiesApi.md#updateActivity) | **PUT** /activities/{id} | Update an activity
[**updateActivityOccurrence**](ActivitiesApi.md#updateActivityOccurrence) | **PUT** /activity-occurrences/{activity_occurrence_id}/status | Updated the status of an activity occurrence
[**updateActivityTemplate**](ActivitiesApi.md#updateActivityTemplate) | **PUT** /activities/templates/{id} | Update an activity template


# **createActivity**
> Represents an activity that can be parameterized and tracked through metrics (scores, etc) createActivity(activityResource)

Create an activity

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new ActivitiesApi();
var activityResource = new Represents an activity that can be parameterized and tracked through metrics (scores, etc)(); // Represents an activity that can be parameterized and tracked through metrics (scores, etc) | The activity resource object

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
 **activityResource** | [**Represents an activity that can be parameterized and tracked through metrics (scores, etc)**](Represents an activity that can be parameterized and tracked through metrics (scores, etc).md)| The activity resource object | [optional] 

### Return type

[**Represents an activity that can be parameterized and tracked through metrics (scores, etc)**](Represents an activity that can be parameterized and tracked through metrics (scores, etc).md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createActivityOccurrence**
> A occurrence of an activity (the actual game for example) Used to track scores, participants, and provide settings createActivityOccurrence(test, activityOccurrenceResource)

Create a new activity occurrence. Ex: start a game

Has to enforce extra rules if not used as an admin

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new ActivitiesApi();
var test = true; // bool | if true, indicates that the occurrence should NOT be created. This can be used to test for eligibility and valid settings
var activityOccurrenceResource = new A occurrence of an activity (the actual game for example) Used to track scores, participants, and provide settings(); // A occurrence of an activity (the actual game for example) Used to track scores, participants, and provide settings | The activity occurrence object

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
 **activityOccurrenceResource** | [**A occurrence of an activity (the actual game for example) Used to track scores, participants, and provide settings**](A occurrence of an activity (the actual game for example) Used to track scores, participants, and provide settings.md)| The activity occurrence object | [optional] 

### Return type

[**A occurrence of an activity (the actual game for example) Used to track scores, participants, and provide settings**](A occurrence of an activity (the actual game for example) Used to track scores, participants, and provide settings.md)

### Authorization

[OAuth2](../README.md#OAuth2)

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
// TODO Configure OAuth2 access token for authorization: OAuth2
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

[OAuth2](../README.md#OAuth2)

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
// TODO Configure OAuth2 access token for authorization: OAuth2
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

[OAuth2](../README.md#OAuth2)

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
// TODO Configure OAuth2 access token for authorization: OAuth2
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

[OAuth2](../README.md#OAuth2)

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

var api_instance = new ActivitiesApi();
var filterTemplate = true; // bool | Filter for activities that are templates, or specifically not if false
var filterName = filterName_example; // String | Filter for activities that have a name starting with specified string
var filterId = ; // Object | Filter for activities with an id in the given comma separated list of ids
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
 **filterId** | [**Object**](.md)| Filter for activities with an id in the given comma separated list of ids | [optional] 
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **String**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to id:ASC]

### Return type

[**PageResource«BareActivityResource»**](PageResource«BareActivityResource».md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getActivity**
> Represents an activity that can be parameterized and tracked through metrics (scores, etc) getActivity(id)

Get a single activity

### Example 
```dart
import 'package:swagger/api.dart';

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

[**Represents an activity that can be parameterized and tracked through metrics (scores, etc)**](Represents an activity that can be parameterized and tracked through metrics (scores, etc).md)

### Authorization

No authorization required

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
// TODO Configure OAuth2 access token for authorization: OAuth2
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

[OAuth2](../README.md#OAuth2)

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
// TODO Configure OAuth2 access token for authorization: OAuth2
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

[OAuth2](../README.md#OAuth2)

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
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new ActivitiesApi();
var activityOccurrenceId = 789; // int | The id of the activity occurrence
var activityOccurrenceResults = new ActivityOccurrenceResults(); // ActivityOccurrenceResults | The activity occurrence object

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
 **activityOccurrenceResults** | [**ActivityOccurrenceResults**](ActivityOccurrenceResults.md)| The activity occurrence object | [optional] 

### Return type

[**ActivityOccurrenceResults**](ActivityOccurrenceResults.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateActivity**
> Represents an activity that can be parameterized and tracked through metrics (scores, etc) updateActivity(id, activityResource)

Update an activity

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new ActivitiesApi();
var id = 789; // int | The id of the activity
var activityResource = new Represents an activity that can be parameterized and tracked through metrics (scores, etc)(); // Represents an activity that can be parameterized and tracked through metrics (scores, etc) | The activity resource object

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
 **activityResource** | [**Represents an activity that can be parameterized and tracked through metrics (scores, etc)**](Represents an activity that can be parameterized and tracked through metrics (scores, etc).md)| The activity resource object | [optional] 

### Return type

[**Represents an activity that can be parameterized and tracked through metrics (scores, etc)**](Represents an activity that can be parameterized and tracked through metrics (scores, etc).md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateActivityOccurrence**
> updateActivityOccurrence(activityOccurrenceId, activityCccurrenceStatus)

Updated the status of an activity occurrence

If setting to 'FINISHED' you must POST to /results instead to record the metrics and get synchronous reward results

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new ActivitiesApi();
var activityOccurrenceId = 789; // int | The id of the activity occurrence
var activityCccurrenceStatus = new String(); // String | The activity occurrence status object

try { 
    api_instance.updateActivityOccurrence(activityOccurrenceId, activityCccurrenceStatus);
} catch (e) {
    print("Exception when calling ActivitiesApi->updateActivityOccurrence: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **activityOccurrenceId** | **int**| The id of the activity occurrence | 
 **activityCccurrenceStatus** | **String**| The activity occurrence status object | [optional] 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

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
// TODO Configure OAuth2 access token for authorization: OAuth2
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

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

