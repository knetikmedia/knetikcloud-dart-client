# swagger.api.LogsApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://jsapi-integration.us-east-1.elasticbeanstalk.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addUserLog**](LogsApi.md#addUserLog) | **POST** /audit/logs | Add a user log entry
[**getBREEventLog**](LogsApi.md#getBREEventLog) | **GET** /bre/logs/event-log/{id} | Get an existing BRE event log entry by id
[**getBREEventLogs**](LogsApi.md#getBREEventLogs) | **GET** /bre/logs/event-log | Returns a list of BRE event log entries
[**getBREForwardLog**](LogsApi.md#getBREForwardLog) | **GET** /bre/logs/forward-log/{id} | Get an existing forward log entry by id
[**getBREForwardLogs**](LogsApi.md#getBREForwardLogs) | **GET** /bre/logs/forward-log | Returns a list of forward log entries
[**getUserLog**](LogsApi.md#getUserLog) | **GET** /audit/logs/{id} | Returns a user log entry by id
[**getUserLogs**](LogsApi.md#getUserLogs) | **GET** /audit/logs | Returns a page of user logs entries


# **addUserLog**
> addUserLog(logEntry)

Add a user log entry

<b>Permissions Needed:</b> owner

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new LogsApi();
var logEntry = new UserActionLog(); // UserActionLog | The user log entry to be added

try { 
    api_instance.addUserLog(logEntry);
} catch (e) {
    print("Exception when calling LogsApi->addUserLog: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **logEntry** | [**UserActionLog**](UserActionLog.md)| The user log entry to be added | [optional] 

### Return type

void (empty response body)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getBREEventLog**
> BreEventLog getBREEventLog(id)

Get an existing BRE event log entry by id

<b>Permissions Needed:</b> BRE_RULE_ENGINE_EVENTS_ADMIN

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new LogsApi();
var id = id_example; // String | The BRE event log entry id

try { 
    var result = api_instance.getBREEventLog(id);
    print(result);
} catch (e) {
    print("Exception when calling LogsApi->getBREEventLog: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The BRE event log entry id | 

### Return type

[**BreEventLog**](BreEventLog.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getBREEventLogs**
> PageResource«BreEventLog» getBREEventLogs(filterStartDate, filterEventName, filterEventId, size, page, order, filterRuleId)

Returns a list of BRE event log entries

<b>Permissions Needed:</b> BRE_RULE_ENGINE_EVENTS_ADMIN

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new LogsApi();
var filterStartDate = filterStartDate_example; // String | A comma separated string without spaces.  First value is the operator to search on, second value is the event log start date, a unix timestamp in seconds.  Allowed operators: (GT, LT, EQ, GOE, LOE).
var filterEventName = filterEventName_example; // String | Filter event logs by event name
var filterEventId = filterEventId_example; // String | Filter event logs by request id
var size = 56; // int | The number of objects returned per page
var page = 56; // int | The number of the page returned, starting with 1
var order = order_example; // String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
var filterRuleId = filterRuleId_example; // String | Filter event logs by request id

try { 
    var result = api_instance.getBREEventLogs(filterStartDate, filterEventName, filterEventId, size, page, order, filterRuleId);
    print(result);
} catch (e) {
    print("Exception when calling LogsApi->getBREEventLogs: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterStartDate** | **String**| A comma separated string without spaces.  First value is the operator to search on, second value is the event log start date, a unix timestamp in seconds.  Allowed operators: (GT, LT, EQ, GOE, LOE). | [optional] 
 **filterEventName** | **String**| Filter event logs by event name | [optional] 
 **filterEventId** | **String**| Filter event logs by request id | [optional] 
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **String**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to id:DESC]
 **filterRuleId** | **String**| Filter event logs by request id | [optional] 

### Return type

[**PageResource«BreEventLog»**](PageResource«BreEventLog».md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getBREForwardLog**
> ForwardLog getBREForwardLog(id)

Get an existing forward log entry by id

<b>Permissions Needed:</b> BRE_RULE_ENGINE_EVENTS_ADMIN

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new LogsApi();
var id = id_example; // String | The forward log entry id

try { 
    var result = api_instance.getBREForwardLog(id);
    print(result);
} catch (e) {
    print("Exception when calling LogsApi->getBREForwardLog: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The forward log entry id | 

### Return type

[**ForwardLog**](ForwardLog.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getBREForwardLogs**
> PageResource«ForwardLog» getBREForwardLogs(filterStartDate, filterEndDate, filterStatusCode, filterUrl, size, page, order)

Returns a list of forward log entries

<b>Permissions Needed:</b> BRE_RULE_ENGINE_EVENTS_ADMIN

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new LogsApi();
var filterStartDate = filterStartDate_example; // String | A comma separated string without spaces.  First value is the operator to search on, second value is the log start date, a unix timestamp in seconds.  Allowed operators: (GT, LT, EQ, GOE, LOE).
var filterEndDate = filterEndDate_example; // String | A comma separated string without spaces.  First value is the operator to search on, second value is the log end date, a unix timestamp in seconds.  Allowed operators: (GT, LT, EQ, GOE, LOE).
var filterStatusCode = 56; // int | Filter forward logs by http status code
var filterUrl = 56; // int | Filter forward logs by URL starting with...
var size = 56; // int | The number of objects returned per page
var page = 56; // int | The number of the page returned, starting with 1
var order = order_example; // String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]

try { 
    var result = api_instance.getBREForwardLogs(filterStartDate, filterEndDate, filterStatusCode, filterUrl, size, page, order);
    print(result);
} catch (e) {
    print("Exception when calling LogsApi->getBREForwardLogs: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterStartDate** | **String**| A comma separated string without spaces.  First value is the operator to search on, second value is the log start date, a unix timestamp in seconds.  Allowed operators: (GT, LT, EQ, GOE, LOE). | [optional] 
 **filterEndDate** | **String**| A comma separated string without spaces.  First value is the operator to search on, second value is the log end date, a unix timestamp in seconds.  Allowed operators: (GT, LT, EQ, GOE, LOE). | [optional] 
 **filterStatusCode** | **int**| Filter forward logs by http status code | [optional] 
 **filterUrl** | **int**| Filter forward logs by URL starting with... | [optional] 
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **String**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to id:DESC]

### Return type

[**PageResource«ForwardLog»**](PageResource«ForwardLog».md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUserLog**
> UserActionLog getUserLog(id)

Returns a user log entry by id

<b>Permissions Needed:</b> LOGS_ADMIN or owner

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new LogsApi();
var id = id_example; // String | The user log entry id

try { 
    var result = api_instance.getUserLog(id);
    print(result);
} catch (e) {
    print("Exception when calling LogsApi->getUserLog: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The user log entry id | 

### Return type

[**UserActionLog**](UserActionLog.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUserLogs**
> PageResource«UserActionLog» getUserLogs(filterUser, filterActionName, size, page, order)

Returns a page of user logs entries

<b>Permissions Needed:</b> LOGS_ADMIN or owner

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new LogsApi();
var filterUser = 56; // int | Filter for actions taken by a specific user by id
var filterActionName = filterActionName_example; // String | Filter for actions of a specific name
var size = 56; // int | The number of objects returned per page
var page = 56; // int | The number of the page returned, starting with 1
var order = order_example; // String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]

try { 
    var result = api_instance.getUserLogs(filterUser, filterActionName, size, page, order);
    print(result);
} catch (e) {
    print("Exception when calling LogsApi->getUserLogs: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterUser** | **int**| Filter for actions taken by a specific user by id | [optional] 
 **filterActionName** | **String**| Filter for actions of a specific name | [optional] 
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **String**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to timestamp:DESC]

### Return type

[**PageResource«UserActionLog»**](PageResource«UserActionLog».md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

