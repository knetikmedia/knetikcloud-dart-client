# swagger.api.Gamification_LeaderboardsApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://jsapi-integration.us-east-1.elasticbeanstalk.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getLeaderboard**](Gamification_LeaderboardsApi.md#getLeaderboard) | **GET** /leaderboards/{context_type}/{context_id} | Retrieves leaderboard details and paginated entries
[**getLeaderboardRank**](Gamification_LeaderboardsApi.md#getLeaderboardRank) | **GET** /leaderboards/{context_type}/{context_id}/users/{id}/rank | Retrieves a specific user entry with rank
[**getLeaderboardStrategies**](Gamification_LeaderboardsApi.md#getLeaderboardStrategies) | **GET** /leaderboards/strategies | Get a list of available leaderboard strategy names


# **getLeaderboard**
> LeaderboardResource getLeaderboard(contextType, contextId, size, page, order)

Retrieves leaderboard details and paginated entries

The context type identifies the type of entity (i.e., 'activity') being tracked on the leaderboard. The context ID is the unique ID of the actual entity tracked by the leaderboard. Sorting is based on the fields of LeaderboardEntryResource rather than the returned LeaderboardResource. <br><br><b>Permissions Needed:</b> ANY

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new Gamification_LeaderboardsApi();
var contextType = contextType_example; // String | The context type for the leaderboard
var contextId = contextId_example; // String | The context id for the leaderboard
var size = 56; // int | The number of objects returned per page
var page = 56; // int | The number of the page returned, starting with 1
var order = order_example; // String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]

try { 
    var result = api_instance.getLeaderboard(contextType, contextId, size, page, order);
    print(result);
} catch (e) {
    print("Exception when calling Gamification_LeaderboardsApi->getLeaderboard: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contextType** | **String**| The context type for the leaderboard | 
 **contextId** | **String**| The context id for the leaderboard | 
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **String**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to score:DESC,updated:ASC,user_id:ASC]

### Return type

[**LeaderboardResource**](LeaderboardResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getLeaderboardRank**
> LeaderboardEntryResource getLeaderboardRank(contextType, contextId, id)

Retrieves a specific user entry with rank

The context type identifies the type of entity (i.e., 'activity') being tracked on the leaderboard. The context ID is the unique ID of the actual entity tracked by the leaderboard. <br><br><b>Permissions Needed:</b> ANY

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new Gamification_LeaderboardsApi();
var contextType = contextType_example; // String | The context type for the leaderboard
var contextId = contextId_example; // String | The context id for the leaderboard
var id = id_example; // String | The id of a user

try { 
    var result = api_instance.getLeaderboardRank(contextType, contextId, id);
    print(result);
} catch (e) {
    print("Exception when calling Gamification_LeaderboardsApi->getLeaderboardRank: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contextType** | **String**| The context type for the leaderboard | 
 **contextId** | **String**| The context id for the leaderboard | 
 **id** | **String**| The id of a user | 

### Return type

[**LeaderboardEntryResource**](LeaderboardEntryResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getLeaderboardStrategies**
> List<String> getLeaderboardStrategies()

Get a list of available leaderboard strategy names

<b>Permissions Needed:</b> ANY

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new Gamification_LeaderboardsApi();

try { 
    var result = api_instance.getLeaderboardStrategies();
    print(result);
} catch (e) {
    print("Exception when calling Gamification_LeaderboardsApi->getLeaderboardStrategies: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**List<String>**

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

