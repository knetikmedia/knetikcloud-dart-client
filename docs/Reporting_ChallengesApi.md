# swagger.api.Reporting_ChallengesApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://jsapi-integration.us-east-1.elasticbeanstalk.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getChallengeEventLeaderboard**](Reporting_ChallengesApi.md#getChallengeEventLeaderboard) | **GET** /reporting/events/leaderboard | Retrieve a challenge event leaderboard details
[**getChallengeEventParticipants**](Reporting_ChallengesApi.md#getChallengeEventParticipants) | **GET** /reporting/events/participants | Retrieve a challenge event participant details


# **getChallengeEventLeaderboard**
> PageResource«ChallengeEventParticipantResource» getChallengeEventLeaderboard(filterEvent, size, page, order)

Retrieve a challenge event leaderboard details

Lists all leaderboard entries with additional user details. <br><br><b>Permissions Needed:</b> REPORTING_CHALLENGES_ADMIN

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new Reporting_ChallengesApi();
var filterEvent = 789; // int | A sepecific challenge event id
var size = 56; // int | The number of objects returned per page
var page = 56; // int | The number of the page returned
var order = order_example; // String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]

try { 
    var result = api_instance.getChallengeEventLeaderboard(filterEvent, size, page, order);
    print(result);
} catch (e) {
    print("Exception when calling Reporting_ChallengesApi->getChallengeEventLeaderboard: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterEvent** | **int**| A sepecific challenge event id | [optional] 
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned | [optional] [default to 1]
 **order** | **String**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] 

### Return type

[**PageResource«ChallengeEventParticipantResource»**](PageResource«ChallengeEventParticipantResource».md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getChallengeEventParticipants**
> PageResource«ChallengeEventParticipantResource» getChallengeEventParticipants(filterEvent, size, page, order)

Retrieve a challenge event participant details

Lists all user submitted scores sorted by value, including those that do not apear in the leaderboard due to value or aggregation. <br><br><b>Permissions Needed:</b> REPORTING_CHALLENGES_ADMIN

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new Reporting_ChallengesApi();
var filterEvent = 789; // int | A sepecific challenge event id
var size = 56; // int | The number of objects returned per page
var page = 56; // int | The number of the page returned
var order = order_example; // String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]

try { 
    var result = api_instance.getChallengeEventParticipants(filterEvent, size, page, order);
    print(result);
} catch (e) {
    print("Exception when calling Reporting_ChallengesApi->getChallengeEventParticipants: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterEvent** | **int**| A sepecific challenge event id | [optional] 
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned | [optional] [default to 1]
 **order** | **String**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] 

### Return type

[**PageResource«ChallengeEventParticipantResource»**](PageResource«ChallengeEventParticipantResource».md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

