# swagger.api.LogsApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://localhost:8080/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addUserLogUsingPOST**](LogsApi.md#addUserLogUsingPOST) | **POST** /audit/logs | Add a new user log entry
[**getEventLogUsingGET**](LogsApi.md#getEventLogUsingGET) | **GET** /bre/logs/event-log/{id} | Get an existing BRE event log entry by id
[**getEventsLogsUsingGET**](LogsApi.md#getEventsLogsUsingGET) | **GET** /bre/logs/event-log | Returns a list of BRE event log entries
[**getForwardLogUsingGET**](LogsApi.md#getForwardLogUsingGET) | **GET** /bre/logs/forward-log/{id} | Get an existing forward log entry by id
[**getForwardLogsUsingGET**](LogsApi.md#getForwardLogsUsingGET) | **GET** /bre/logs/forward-log | Returns a list of forward log entries
[**getUserLogsUsingGET**](LogsApi.md#getUserLogsUsingGET) | **GET** /audit/logs/{id} | Returns a user log entry by id
[**getUserLogsUsingGET1**](LogsApi.md#getUserLogsUsingGET1) | **GET** /audit/logs | Returns a page of user logs entries


# **addUserLogUsingPOST**
> addUserLogUsingPOST(logEntry)

Add a new user log entry

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new LogsApi();
var logEntry = new UserActionLog(); // UserActionLog | The user log entry to be added

try { 
    api_instance.addUserLogUsingPOST(logEntry);
} catch (e) {
    print("Exception when calling LogsApi->addUserLogUsingPOST: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **logEntry** | [**UserActionLog**](UserActionLog.md)| The user log entry to be added | [optional] 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getEventLogUsingGET**
> BreEventLog getEventLogUsingGET(id)

Get an existing BRE event log entry by id

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new LogsApi();
var id = id_example; // String | The BRE event log entry id

try { 
    var result = api_instance.getEventLogUsingGET(id);
    print(result);
} catch (e) {
    print("Exception when calling LogsApi->getEventLogUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The BRE event log entry id | 

### Return type

[**BreEventLog**](BreEventLog.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getEventsLogsUsingGET**
> Page«BreEventLog» getEventsLogsUsingGET(filterStartDate, filterEventName, size, page, order)

Returns a list of BRE event log entries

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new LogsApi();
var filterStartDate = filterStartDate_example; // String | A comma separated string without spaces.  First value is the operator to search on, second value is the event log start date, a unix timestamp in seconds.  Allowed operators: (GT, LT, EQ, GOE, LOE).
var filterEventName = filterEventName_example; // String | Filter event logs by event name
var size = 56; // int | The number of objects returned per page
var page = 56; // int | The number of the page returned, starting with 1
var order = order_example; // String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]

try { 
    var result = api_instance.getEventsLogsUsingGET(filterStartDate, filterEventName, size, page, order);
    print(result);
} catch (e) {
    print("Exception when calling LogsApi->getEventsLogsUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterStartDate** | **String**| A comma separated string without spaces.  First value is the operator to search on, second value is the event log start date, a unix timestamp in seconds.  Allowed operators: (GT, LT, EQ, GOE, LOE). | [optional] 
 **filterEventName** | **String**| Filter event logs by event name | [optional] 
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **String**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to id:DESC]

### Return type

[**Page«BreEventLog»**](Page«BreEventLog».md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getForwardLogUsingGET**
> ForwardLog getForwardLogUsingGET(id)

Get an existing forward log entry by id

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new LogsApi();
var id = id_example; // String | The forward log entry id

try { 
    var result = api_instance.getForwardLogUsingGET(id);
    print(result);
} catch (e) {
    print("Exception when calling LogsApi->getForwardLogUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The forward log entry id | 

### Return type

[**ForwardLog**](ForwardLog.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getForwardLogsUsingGET**
> Page«ForwardLog» getForwardLogsUsingGET(filterStartDate, filterEndDate, filterStatusCode, size, page, order)

Returns a list of forward log entries

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new LogsApi();
var filterStartDate = filterStartDate_example; // String | A comma separated string without spaces.  First value is the operator to search on, second value is the log start date, a unix timestamp in seconds.  Allowed operators: (GT, LT, EQ, GOE, LOE).
var filterEndDate = filterEndDate_example; // String | A comma separated string without spaces.  First value is the operator to search on, second value is the log end date, a unix timestamp in seconds.  Allowed operators: (GT, LT, EQ, GOE, LOE).
var filterStatusCode = 56; // int | Filter forward logs by http status code
var size = 56; // int | The number of objects returned per page
var page = 56; // int | The number of the page returned, starting with 1
var order = order_example; // String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]

try { 
    var result = api_instance.getForwardLogsUsingGET(filterStartDate, filterEndDate, filterStatusCode, size, page, order);
    print(result);
} catch (e) {
    print("Exception when calling LogsApi->getForwardLogsUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterStartDate** | **String**| A comma separated string without spaces.  First value is the operator to search on, second value is the log start date, a unix timestamp in seconds.  Allowed operators: (GT, LT, EQ, GOE, LOE). | [optional] 
 **filterEndDate** | **String**| A comma separated string without spaces.  First value is the operator to search on, second value is the log end date, a unix timestamp in seconds.  Allowed operators: (GT, LT, EQ, GOE, LOE). | [optional] 
 **filterStatusCode** | **int**| Filter forward logs by http status code | [optional] 
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **String**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to id:DESC]

### Return type

[**Page«ForwardLog»**](Page«ForwardLog».md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUserLogsUsingGET**
> UserActionLog getUserLogsUsingGET(id)

Returns a user log entry by id

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new LogsApi();
var id = id_example; // String | The user log entry id

try { 
    var result = api_instance.getUserLogsUsingGET(id);
    print(result);
} catch (e) {
    print("Exception when calling LogsApi->getUserLogsUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The user log entry id | 

### Return type

[**UserActionLog**](UserActionLog.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUserLogsUsingGET1**
> Page«UserActionLog» getUserLogsUsingGET1(filterUser, filterActionName, size, page)

Returns a page of user logs entries

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new LogsApi();
var filterUser = 56; // int | Filter for actions taken by a specific user by id
var filterActionName = filterActionName_example; // String | Filter for actions of a specific name
var size = 56; // int | The number of objects returned per page
var page = 56; // int | The number of the page returned, starting with 1

try { 
    var result = api_instance.getUserLogsUsingGET1(filterUser, filterActionName, size, page);
    print(result);
} catch (e) {
    print("Exception when calling LogsApi->getUserLogsUsingGET1: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterUser** | **int**| Filter for actions taken by a specific user by id | [optional] 
 **filterActionName** | **String**| Filter for actions of a specific name | [optional] 
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]

### Return type

[**Page«UserActionLog»**](Page«UserActionLog».md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

