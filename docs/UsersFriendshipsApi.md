# swagger.api.UsersFriendshipsApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://localhost:8080/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addFriendUsingPOST**](UsersFriendshipsApi.md#addFriendUsingPOST) | **POST** /users/{user_id}/friends/{id} | Add a friend
[**connectUsingTokenUsingPOST**](UsersFriendshipsApi.md#connectUsingTokenUsingPOST) | **POST** /users/{user_id}/friends/tokens | Redeem friendship token
[**getFriendsUsingGET**](UsersFriendshipsApi.md#getFriendsUsingGET) | **GET** /users/{user_id}/friends | Get friends list
[**getInviteTokenUsingGET**](UsersFriendshipsApi.md#getInviteTokenUsingGET) | **GET** /users/{user_id}/invite-token | Returns the invite token
[**getInvitesUsingGET**](UsersFriendshipsApi.md#getInvitesUsingGET) | **GET** /users/{user_id}/invites | Get pending invites
[**removeFriendUsingDELETE**](UsersFriendshipsApi.md#removeFriendUsingDELETE) | **DELETE** /users/{user_id}/friends/{id} | Remove or decline a friend


# **addFriendUsingPOST**
> addFriendUsingPOST(userId, id)

Add a friend

As a user, either creates or confirm a pending request. As an admin, call this endpoint twice while inverting the IDs to create a confirmed friendship.

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new UsersFriendshipsApi();
var userId = userId_example; // String | The id of the user or 'me' if logged in
var id = 56; // int | The id of the user to befriend

try { 
    api_instance.addFriendUsingPOST(userId, id);
} catch (e) {
    print("Exception when calling UsersFriendshipsApi->addFriendUsingPOST: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**| The id of the user or &#39;me&#39; if logged in | 
 **id** | **int**| The id of the user to befriend | 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **connectUsingTokenUsingPOST**
> connectUsingTokenUsingPOST(userId, token)

Redeem friendship token

Immediately connects the requested user with the user mapped by the provided invite token

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new UsersFriendshipsApi();
var userId = userId_example; // String | The id of the user or 'me' if logged in
var token = new String(); // String | The invite token

try { 
    api_instance.connectUsingTokenUsingPOST(userId, token);
} catch (e) {
    print("Exception when calling UsersFriendshipsApi->connectUsingTokenUsingPOST: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**| The id of the user or &#39;me&#39; if logged in | 
 **token** | **String**| The invite token | [optional] 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getFriendsUsingGET**
> Page«SimpleUserResource» getFriendsUsingGET(userId, size, page, order)

Get friends list

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new UsersFriendshipsApi();
var userId = userId_example; // String | The id of the user or 'me'
var size = 56; // int | The number of objects returned per page
var page = 56; // int | The number of the page returned, starting with 1
var order = order_example; // String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]

try { 
    var result = api_instance.getFriendsUsingGET(userId, size, page, order);
    print(result);
} catch (e) {
    print("Exception when calling UsersFriendshipsApi->getFriendsUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**| The id of the user or &#39;me&#39; | 
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **String**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to id:ASC]

### Return type

[**Page«SimpleUserResource»**](Page«SimpleUserResource».md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getInviteTokenUsingGET**
> String getInviteTokenUsingGET(userId)

Returns the invite token

This is a unique invite token that allows direct connection to the request user.  Exposing that token presents privacy issues if the token is leaked. Use friend request flow instead if confirmation is required

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new UsersFriendshipsApi();
var userId = userId_example; // String | The id of the user or 'me' if logged in

try { 
    var result = api_instance.getInviteTokenUsingGET(userId);
    print(result);
} catch (e) {
    print("Exception when calling UsersFriendshipsApi->getInviteTokenUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**| The id of the user or &#39;me&#39; if logged in | 

### Return type

**String**

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getInvitesUsingGET**
> Page«SimpleUserResource» getInvitesUsingGET(userId, size, page, order)

Get pending invites

Invites that the specified user received

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new UsersFriendshipsApi();
var userId = userId_example; // String | The id of the user or 'me'
var size = 56; // int | The number of objects returned per page
var page = 56; // int | The number of the page returned, starting with 1
var order = order_example; // String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]

try { 
    var result = api_instance.getInvitesUsingGET(userId, size, page, order);
    print(result);
} catch (e) {
    print("Exception when calling UsersFriendshipsApi->getInvitesUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**| The id of the user or &#39;me&#39; | 
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **String**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to id:ASC]

### Return type

[**Page«SimpleUserResource»**](Page«SimpleUserResource».md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **removeFriendUsingDELETE**
> removeFriendUsingDELETE(userId, id)

Remove or decline a friend

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new UsersFriendshipsApi();
var userId = userId_example; // String | The id of the user or 'me' if logged in
var id = 56; // int | The id of the user to befriend

try { 
    api_instance.removeFriendUsingDELETE(userId, id);
} catch (e) {
    print("Exception when calling UsersFriendshipsApi->removeFriendUsingDELETE: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**| The id of the user or &#39;me&#39; if logged in | 
 **id** | **int**| The id of the user to befriend | 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

