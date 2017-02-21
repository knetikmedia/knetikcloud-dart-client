# swagger.api.GamificationLeaderboardsApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://localhost:8080/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getLeaderboard**](GamificationLeaderboardsApi.md#getLeaderboard) | **GET** /leaderboards/{context_type}/{context_id} | Retrieves leaderboard details and paginated entries
[**getLeaderboardRank**](GamificationLeaderboardsApi.md#getLeaderboardRank) | **GET** /leaderboards/{context_type}/{context_id}/users/{id}/rank | Retrieves a specific user entry with rank
[**getLeaderboardStrategies**](GamificationLeaderboardsApi.md#getLeaderboardStrategies) | **GET** /leaderboards/strategies | Get a list of available leaderboard strategy names


# **getLeaderboard**
> LeaderboardResource getLeaderboard(contextType, contextId, size, page)

Retrieves leaderboard details and paginated entries

The context type identifies the type of entity (i.e., 'activity') being tracked on the leaderboard. The context ID is the unique ID of the actual entity tracked by the leaderboard.

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new GamificationLeaderboardsApi();
var contextType = contextType_example; // String | The context type for the leaderboard
var contextId = contextId_example; // String | The context id for the leaderboard
var size = 56; // int | The number of objects returned per page
var page = 56; // int | The number of the page returned, starting with 1

try { 
    var result = api_instance.getLeaderboard(contextType, contextId, size, page);
    print(result);
} catch (e) {
    print("Exception when calling GamificationLeaderboardsApi->getLeaderboard: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contextType** | **String**| The context type for the leaderboard | 
 **contextId** | **String**| The context id for the leaderboard | 
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]

### Return type

[**LeaderboardResource**](LeaderboardResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getLeaderboardRank**
> LeaderboardEntryResource getLeaderboardRank(contextType, contextId, id)

Retrieves a specific user entry with rank

The context type identifies the type of entity (i.e., 'activity') being tracked on the leaderboard. The context ID is the unique ID of the actual entity tracked by the leaderboard

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new GamificationLeaderboardsApi();
var contextType = contextType_example; // String | The context type for the leaderboard
var contextId = contextId_example; // String | The context id for the leaderboard
var id = id_example; // String | The id of a user

try { 
    var result = api_instance.getLeaderboardRank(contextType, contextId, id);
    print(result);
} catch (e) {
    print("Exception when calling GamificationLeaderboardsApi->getLeaderboardRank: $e\n");
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

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getLeaderboardStrategies**
> List<String> getLeaderboardStrategies()

Get a list of available leaderboard strategy names

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new GamificationLeaderboardsApi();

try { 
    var result = api_instance.getLeaderboardStrategies();
    print(result);
} catch (e) {
    print("Exception when calling GamificationLeaderboardsApi->getLeaderboardStrategies: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**List<String>**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

