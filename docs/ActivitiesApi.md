# swagger.api.ActivitiesApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://sandbox.knetikcloud.com/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createActivity**](ActivitiesApi.md#createActivity) | **POST** /activities | Create an activity
[**createActivityOccurrence**](ActivitiesApi.md#createActivityOccurrence) | **POST** /activity-occurrences | Create a new activity occurrence
[**deleteActivity**](ActivitiesApi.md#deleteActivity) | **DELETE** /activities/{id} | Delete an activity
[**getActivities**](ActivitiesApi.md#getActivities) | **GET** /activities | List activity definitions
[**getActivity**](ActivitiesApi.md#getActivity) | **GET** /activities/{id} | Get a single activity
[**setActivityOccurrenceResults**](ActivitiesApi.md#setActivityOccurrenceResults) | **POST** /activity-occurrences/{activity_occurrence_id}/results | Sets the status of an activity occurrence to FINISHED and logs metrics
[**updateActivity**](ActivitiesApi.md#updateActivity) | **PUT** /activities/{id} | Update an activity
[**updateActivityOccurrence**](ActivitiesApi.md#updateActivityOccurrence) | **PUT** /activity-occurrences/{activity_occurrence_id}/status | Updated the status of an activity occurrence


# **createActivity**
> ActivityResource createActivity(activityResource)

Create an activity

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
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

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createActivityOccurrence**
> ActivityOccurrenceResource createActivityOccurrence(test, activityOccurrenceResource)

Create a new activity occurrence

Has to enforce extra rules if not used as an admin

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new ActivitiesApi();
var test = true; // bool | if true, indicates that the occurrence should NOT be created. This can be used to test for eligibility and valid settings
var activityOccurrenceResource = new ActivityOccurrenceResource(); // ActivityOccurrenceResource | The activity occurrence object

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
 **activityOccurrenceResource** | [**ActivityOccurrenceResource**](ActivityOccurrenceResource.md)| The activity occurrence object | [optional] 

### Return type

[**ActivityOccurrenceResource**](ActivityOccurrenceResource.md)

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

# **getActivities**
> PageResource«BareActivityResource» getActivities(filterTemplate, filterName, filterId, size, page, order)

List activity definitions

### Example 
```dart
import 'package:swagger/api.dart';

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

No authorization required

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

No authorization required

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
> ActivityResource updateActivity(id, activityResource)

Update an activity

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
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

