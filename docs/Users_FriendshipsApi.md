# swagger.api.Users_FriendshipsApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://jsapi-integration.us-east-1.elasticbeanstalk.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addFriend**](Users_FriendshipsApi.md#addFriend) | **POST** /users/{user_id}/friends/{id} | Add a friend
[**getFriends**](Users_FriendshipsApi.md#getFriends) | **GET** /users/{user_id}/friends | Get friends list
[**getInviteToken**](Users_FriendshipsApi.md#getInviteToken) | **GET** /users/{user_id}/invite-token | Returns the invite token
[**getInvites**](Users_FriendshipsApi.md#getInvites) | **GET** /users/{user_id}/invites | Get pending invites
[**redeemFriendshipToken**](Users_FriendshipsApi.md#redeemFriendshipToken) | **POST** /users/{user_id}/friends/tokens | Redeem friendship token
[**removeOrDeclineFriend**](Users_FriendshipsApi.md#removeOrDeclineFriend) | **DELETE** /users/{user_id}/friends/{id} | Remove or decline a friend


# **addFriend**
> addFriend(userId, id)

Add a friend

As a user, either creates or confirm a pending request. As an admin, call this endpoint twice while inverting the IDs to create a confirmed friendship. <br><br><b>Permissions Needed:</b> FRIENDSHIPS_ADMIN or (FRIENDSHIPS_USER and owner)

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new Users_FriendshipsApi();
var userId = userId_example; // String | The id of the user or 'me' if logged in
var id = 56; // int | The id of the user to befriend

try { 
    api_instance.addFriend(userId, id);
} catch (e) {
    print("Exception when calling Users_FriendshipsApi->addFriend: $e\n");
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

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getFriends**
> PageResource«SimpleUserResource» getFriends(userId, filterUsername, filterUserId, size, page)

Get friends list

<b>Permissions Needed:</b> FRIENDSHIPS_ADMIN or (FRIENDSHIPS_USER and owner)

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new Users_FriendshipsApi();
var userId = userId_example; // String | The id of the user or 'me'
var filterUsername = filterUsername_example; // String | Filter for friends with the given username
var filterUserId = 56; // int | Filter for friends by user id
var size = 56; // int | The number of objects returned per page
var page = 56; // int | The number of the page returned, starting with 1

try { 
    var result = api_instance.getFriends(userId, filterUsername, filterUserId, size, page);
    print(result);
} catch (e) {
    print("Exception when calling Users_FriendshipsApi->getFriends: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**| The id of the user or &#39;me&#39; | 
 **filterUsername** | **String**| Filter for friends with the given username | [optional] 
 **filterUserId** | **int**| Filter for friends by user id | [optional] 
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]

### Return type

[**PageResource«SimpleUserResource»**](PageResource«SimpleUserResource».md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getInviteToken**
> String getInviteToken(userId)

Returns the invite token

This is a unique invite token that allows direct connection to the request user.  Exposing that token presents privacy issues if the token is leaked. Use friend request flow instead if confirmation is required. <br><br><b>Permissions Needed:</b> FRIENDSHIPS_ADMIN or (FRIENDSHIPS_USER and owner)

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new Users_FriendshipsApi();
var userId = userId_example; // String | The id of the user or 'me' if logged in

try { 
    var result = api_instance.getInviteToken(userId);
    print(result);
} catch (e) {
    print("Exception when calling Users_FriendshipsApi->getInviteToken: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**| The id of the user or &#39;me&#39; if logged in | 

### Return type

**String**

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getInvites**
> PageResource«SimpleUserResource» getInvites(userId, size, page)

Get pending invites

Invites that the specified user received. <br><br><b>Permissions Needed:</b> FRIENDSHIPS_ADMIN or (FRIENDSHIPS_USER and owner)

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new Users_FriendshipsApi();
var userId = userId_example; // String | The id of the user or 'me'
var size = 56; // int | The number of objects returned per page
var page = 56; // int | The number of the page returned, starting with 1

try { 
    var result = api_instance.getInvites(userId, size, page);
    print(result);
} catch (e) {
    print("Exception when calling Users_FriendshipsApi->getInvites: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**| The id of the user or &#39;me&#39; | 
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]

### Return type

[**PageResource«SimpleUserResource»**](PageResource«SimpleUserResource».md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **redeemFriendshipToken**
> redeemFriendshipToken(userId, token)

Redeem friendship token

Immediately connects the requested user with the user mapped by the provided invite token. <br><br><b>Permissions Needed:</b> FRIENDSHIPS_ADMIN or (FRIENDSHIPS_USER and owner)

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new Users_FriendshipsApi();
var userId = userId_example; // String | The id of the user or 'me' if logged in
var token = new StringWrapper(); // StringWrapper | The invite token

try { 
    api_instance.redeemFriendshipToken(userId, token);
} catch (e) {
    print("Exception when calling Users_FriendshipsApi->redeemFriendshipToken: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**| The id of the user or &#39;me&#39; if logged in | 
 **token** | [**StringWrapper**](StringWrapper.md)| The invite token | [optional] 

### Return type

void (empty response body)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **removeOrDeclineFriend**
> removeOrDeclineFriend(userId, id)

Remove or decline a friend

<b>Permissions Needed:</b> FRIENDSHIPS_ADMIN or (FRIENDSHIPS_USER and owner)

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new Users_FriendshipsApi();
var userId = userId_example; // String | The id of the user or 'me' if logged in
var id = 56; // int | The id of the user to befriend

try { 
    api_instance.removeOrDeclineFriend(userId, id);
} catch (e) {
    print("Exception when calling Users_FriendshipsApi->removeOrDeclineFriend: $e\n");
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

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

