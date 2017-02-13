# swagger.api.UsersFriendshipsApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://integration.knetikcloud.com/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addFriend**](UsersFriendshipsApi.md#addFriend) | **POST** /users/{user_id}/friends/{id} | Add a friend
[**getFriends**](UsersFriendshipsApi.md#getFriends) | **GET** /users/{user_id}/friends | Get friends list
[**getInviteToken**](UsersFriendshipsApi.md#getInviteToken) | **GET** /users/{user_id}/invite-token | Returns the invite token
[**getInvites**](UsersFriendshipsApi.md#getInvites) | **GET** /users/{user_id}/invites | Get pending invites
[**redeemFriendshipToken**](UsersFriendshipsApi.md#redeemFriendshipToken) | **POST** /users/{user_id}/friends/tokens | Redeem friendship token
[**removeOrDeclineFriend**](UsersFriendshipsApi.md#removeOrDeclineFriend) | **DELETE** /users/{user_id}/friends/{id} | Remove or decline a friend


# **addFriend**
> addFriend(userId, id)

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
    api_instance.addFriend(userId, id);
} catch (e) {
    print("Exception when calling UsersFriendshipsApi->addFriend: $e\n");
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
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getFriends**
> PageResource«SimpleUserResource» getFriends(userId, size, page, order)

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
    var result = api_instance.getFriends(userId, size, page, order);
    print(result);
} catch (e) {
    print("Exception when calling UsersFriendshipsApi->getFriends: $e\n");
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

[**PageResource«SimpleUserResource»**](PageResource«SimpleUserResource».md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getInviteToken**
> String getInviteToken(userId)

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
    var result = api_instance.getInviteToken(userId);
    print(result);
} catch (e) {
    print("Exception when calling UsersFriendshipsApi->getInviteToken: $e\n");
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
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getInvites**
> PageResource«SimpleUserResource» getInvites(userId, size, page, order)

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
    var result = api_instance.getInvites(userId, size, page, order);
    print(result);
} catch (e) {
    print("Exception when calling UsersFriendshipsApi->getInvites: $e\n");
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

[**PageResource«SimpleUserResource»**](PageResource«SimpleUserResource».md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **redeemFriendshipToken**
> redeemFriendshipToken(userId, token)

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
    api_instance.redeemFriendshipToken(userId, token);
} catch (e) {
    print("Exception when calling UsersFriendshipsApi->redeemFriendshipToken: $e\n");
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
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **removeOrDeclineFriend**
> removeOrDeclineFriend(userId, id)

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
    api_instance.removeOrDeclineFriend(userId, id);
} catch (e) {
    print("Exception when calling UsersFriendshipsApi->removeOrDeclineFriend: $e\n");
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
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

