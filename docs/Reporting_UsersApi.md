# swagger.api.Reporting_UsersApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://jsapi-integration.us-east-1.elasticbeanstalk.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getUserRegistrations**](Reporting_UsersApi.md#getUserRegistrations) | **GET** /reporting/users/registrations | Get user registration info


# **getUserRegistrations**
> PageResource«AggregateCountResource» getUserRegistrations(granularity, startDate, endDate, size, page)

Get user registration info

Get user registration counts grouped by time range. <br><br><b>Permissions Needed:</b> REPORTING_USER_ADMIN

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new Reporting_UsersApi();
var granularity = granularity_example; // String | The time duration to aggregate by
var startDate = 789; // int | The start of the time range to aggregate, unix timestamp in seconds. Default is beginning of time
var endDate = 789; // int | The end of the time range to aggregate, unix timestamp in seconds. Default is end of time
var size = 56; // int | The number of objects returned per page
var page = 56; // int | The number of the page returned, starting with 1

try { 
    var result = api_instance.getUserRegistrations(granularity, startDate, endDate, size, page);
    print(result);
} catch (e) {
    print("Exception when calling Reporting_UsersApi->getUserRegistrations: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **granularity** | **String**| The time duration to aggregate by | [optional] [default to day]
 **startDate** | **int**| The start of the time range to aggregate, unix timestamp in seconds. Default is beginning of time | [optional] 
 **endDate** | **int**| The end of the time range to aggregate, unix timestamp in seconds. Default is end of time | [optional] 
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]

### Return type

[**PageResource«AggregateCountResource»**](PageResource«AggregateCountResource».md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

