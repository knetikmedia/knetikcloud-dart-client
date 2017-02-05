# swagger.api.ReportingChallengesApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://integration.knetikcloud.com/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getChallengeEventLeaderboardUsingGET**](ReportingChallengesApi.md#getChallengeEventLeaderboardUsingGET) | **GET** /reporting/events/leaderboard | Retrieve a challenge event leaderboard details
[**getChallengeEventParticipantsUsingGET**](ReportingChallengesApi.md#getChallengeEventParticipantsUsingGET) | **GET** /reporting/events/participants | Retrieve a challenge event participant details


# **getChallengeEventLeaderboardUsingGET**
> PageResource«ChallengeEventParticipantResource» getChallengeEventLeaderboardUsingGET(filterEvent)

Retrieve a challenge event leaderboard details

Lists all leaderboard entries with additional user details

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: knetik_oauth
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new ReportingChallengesApi();
var filterEvent = 789; // int | A sepecific challenge event id

try { 
    var result = api_instance.getChallengeEventLeaderboardUsingGET(filterEvent);
    print(result);
} catch (e) {
    print("Exception when calling ReportingChallengesApi->getChallengeEventLeaderboardUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterEvent** | **int**| A sepecific challenge event id | [optional] 

### Return type

[**PageResource«ChallengeEventParticipantResource»**](PageResource«ChallengeEventParticipantResource».md)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getChallengeEventParticipantsUsingGET**
> PageResource«ChallengeEventParticipantResource» getChallengeEventParticipantsUsingGET(filterEvent)

Retrieve a challenge event participant details

Lists all user submitted scores sorted by value, including those that do not apear in the leaderboard due to value or aggregation

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: knetik_oauth
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new ReportingChallengesApi();
var filterEvent = 789; // int | A sepecific challenge event id

try { 
    var result = api_instance.getChallengeEventParticipantsUsingGET(filterEvent);
    print(result);
} catch (e) {
    print("Exception when calling ReportingChallengesApi->getChallengeEventParticipantsUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterEvent** | **int**| A sepecific challenge event id | [optional] 

### Return type

[**PageResource«ChallengeEventParticipantResource»**](PageResource«ChallengeEventParticipantResource».md)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

