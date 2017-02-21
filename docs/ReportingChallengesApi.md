# swagger.api.ReportingChallengesApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://localhost:8080/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getChallengeEventLeaderboard**](ReportingChallengesApi.md#getChallengeEventLeaderboard) | **GET** /reporting/events/leaderboard | Retrieve a challenge event leaderboard details
[**getChallengeEventParticipants**](ReportingChallengesApi.md#getChallengeEventParticipants) | **GET** /reporting/events/participants | Retrieve a challenge event participant details


# **getChallengeEventLeaderboard**
> PageResource«ChallengeEventParticipantResource» getChallengeEventLeaderboard(filterEvent)

Retrieve a challenge event leaderboard details

Lists all leaderboard entries with additional user details

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new ReportingChallengesApi();
var filterEvent = 789; // int | A sepecific challenge event id

try { 
    var result = api_instance.getChallengeEventLeaderboard(filterEvent);
    print(result);
} catch (e) {
    print("Exception when calling ReportingChallengesApi->getChallengeEventLeaderboard: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterEvent** | **int**| A sepecific challenge event id | [optional] 

### Return type

[**PageResource«ChallengeEventParticipantResource»**](PageResource«ChallengeEventParticipantResource».md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getChallengeEventParticipants**
> PageResource«ChallengeEventParticipantResource» getChallengeEventParticipants(filterEvent)

Retrieve a challenge event participant details

Lists all user submitted scores sorted by value, including those that do not apear in the leaderboard due to value or aggregation

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new ReportingChallengesApi();
var filterEvent = 789; // int | A sepecific challenge event id

try { 
    var result = api_instance.getChallengeEventParticipants(filterEvent);
    print(result);
} catch (e) {
    print("Exception when calling ReportingChallengesApi->getChallengeEventParticipants: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterEvent** | **int**| A sepecific challenge event id | [optional] 

### Return type

[**PageResource«ChallengeEventParticipantResource»**](PageResource«ChallengeEventParticipantResource».md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

