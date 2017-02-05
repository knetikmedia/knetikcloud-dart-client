# swagger.api.ActivitiesApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://integration.knetikcloud.com/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**completeActivityOccurrenceUsingPUT**](ActivitiesApi.md#completeActivityOccurrenceUsingPUT) | **PUT** /activity-occurrences/{activity_occurrence_id}/status | Updated the status of an activity occurrence
[**createActivityOccurrenceUsingPOST**](ActivitiesApi.md#createActivityOccurrenceUsingPOST) | **POST** /activity-occurrences | Create a new activity occurrence
[**createActivityUsingPOST**](ActivitiesApi.md#createActivityUsingPOST) | **POST** /activities | Create an activity
[**deleteActivityUsingDELETE**](ActivitiesApi.md#deleteActivityUsingDELETE) | **DELETE** /activities/{id} | Delete an activity
[**getActivitiesUsingGET**](ActivitiesApi.md#getActivitiesUsingGET) | **GET** /activities | List activity definitions
[**getActivityUsingGET**](ActivitiesApi.md#getActivityUsingGET) | **GET** /activities/{id} | Get a single activity
[**postResultsUsingPOST**](ActivitiesApi.md#postResultsUsingPOST) | **POST** /activity-occurrences/{activity_occurrence_id}/results | Sets the status of an activity occurrence to FINISHED and logs metrics
[**updateActivityUsingPUT**](ActivitiesApi.md#updateActivityUsingPUT) | **PUT** /activities/{id} | Update an activity


# **completeActivityOccurrenceUsingPUT**
> completeActivityOccurrenceUsingPUT(activityOccurrenceId, activityCccurrenceStatus)

Updated the status of an activity occurrence

If setting to 'FINISHED' you must POST to /results instead to record the metrics and get synchronous reward results

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: knetik_oauth
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new ActivitiesApi();
var activityOccurrenceId = 789; // int | The id of the activity occurrence
var activityCccurrenceStatus = new String(); // String | The activity occurrence status object

try { 
    api_instance.completeActivityOccurrenceUsingPUT(activityOccurrenceId, activityCccurrenceStatus);
} catch (e) {
    print("Exception when calling ActivitiesApi->completeActivityOccurrenceUsingPUT: $e\n");
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

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createActivityOccurrenceUsingPOST**
> ActivityOccurrenceResource createActivityOccurrenceUsingPOST(test, activityOccurrenceResource)

Create a new activity occurrence

Has to enforce extra rules if not used as an admin

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: knetik_oauth
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new ActivitiesApi();
var test = true; // bool | if true, indicates that the occurrence should NOT be created. This can be used to test for eligibility and valid settings
var activityOccurrenceResource = new ActivityOccurrenceResource(); // ActivityOccurrenceResource | The activity occurrence object

try { 
    var result = api_instance.createActivityOccurrenceUsingPOST(test, activityOccurrenceResource);
    print(result);
} catch (e) {
    print("Exception when calling ActivitiesApi->createActivityOccurrenceUsingPOST: $e\n");
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

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createActivityUsingPOST**
> ActivityResource createActivityUsingPOST(activityResource)

Create an activity

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: knetik_oauth
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new ActivitiesApi();
var activityResource = new ActivityResource(); // ActivityResource | The activity resource object

try { 
    var result = api_instance.createActivityUsingPOST(activityResource);
    print(result);
} catch (e) {
    print("Exception when calling ActivitiesApi->createActivityUsingPOST: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **activityResource** | [**ActivityResource**](ActivityResource.md)| The activity resource object | [optional] 

### Return type

[**ActivityResource**](ActivityResource.md)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteActivityUsingDELETE**
> deleteActivityUsingDELETE(id)

Delete an activity

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: knetik_oauth
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new ActivitiesApi();
var id = 789; // int | The id of the activity

try { 
    api_instance.deleteActivityUsingDELETE(id);
} catch (e) {
    print("Exception when calling ActivitiesApi->deleteActivityUsingDELETE: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The id of the activity | 

### Return type

void (empty response body)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getActivitiesUsingGET**
> PageResource«BareActivityResource» getActivitiesUsingGET(filterTemplate, size, page, order)

List activity definitions

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new ActivitiesApi();
var filterTemplate = true; // bool | Filter for activities that are templates, or specifically not if false
var size = 56; // int | The number of objects returned per page
var page = 56; // int | The number of the page returned, starting with 1
var order = order_example; // String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]

try { 
    var result = api_instance.getActivitiesUsingGET(filterTemplate, size, page, order);
    print(result);
} catch (e) {
    print("Exception when calling ActivitiesApi->getActivitiesUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterTemplate** | **bool**| Filter for activities that are templates, or specifically not if false | [optional] 
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

# **getActivityUsingGET**
> ActivityResource getActivityUsingGET(id)

Get a single activity

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new ActivitiesApi();
var id = 789; // int | The id of the activity

try { 
    var result = api_instance.getActivityUsingGET(id);
    print(result);
} catch (e) {
    print("Exception when calling ActivitiesApi->getActivityUsingGET: $e\n");
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

# **postResultsUsingPOST**
> ActivityOccurrenceResults postResultsUsingPOST(activityOccurrenceId, activityOccurrenceResults)

Sets the status of an activity occurrence to FINISHED and logs metrics

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: knetik_oauth
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new ActivitiesApi();
var activityOccurrenceId = 789; // int | The id of the activity occurrence
var activityOccurrenceResults = new ActivityOccurrenceResults(); // ActivityOccurrenceResults | The activity occurrence object

try { 
    var result = api_instance.postResultsUsingPOST(activityOccurrenceId, activityOccurrenceResults);
    print(result);
} catch (e) {
    print("Exception when calling ActivitiesApi->postResultsUsingPOST: $e\n");
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

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateActivityUsingPUT**
> updateActivityUsingPUT(id, activityResource)

Update an activity

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: knetik_oauth
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new ActivitiesApi();
var id = 789; // int | The id of the activity
var activityResource = new ActivityResource(); // ActivityResource | The activity resource object

try { 
    api_instance.updateActivityUsingPUT(id, activityResource);
} catch (e) {
    print("Exception when calling ActivitiesApi->updateActivityUsingPUT: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The id of the activity | 
 **activityResource** | [**ActivityResource**](ActivityResource.md)| The activity resource object | [optional] 

### Return type

void (empty response body)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

