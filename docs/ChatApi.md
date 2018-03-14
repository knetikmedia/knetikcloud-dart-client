# swagger.api.ChatApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://jsapi-integration.us-east-1.elasticbeanstalk.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**acknowledgeChatMessage**](ChatApi.md#acknowledgeChatMessage) | **PUT** /chat/threads/{id}/acknowledge | Acknowledge number of messages in a thread
[**addChatMessageBlacklist**](ChatApi.md#addChatMessageBlacklist) | **POST** /chat/users/{id}/blacklist/{blacklisted_user_id} | Add a user to a chat message blacklist
[**deleteChatMessage**](ChatApi.md#deleteChatMessage) | **DELETE** /chat/messages/{id} | Delete a message
[**editChatMessage**](ChatApi.md#editChatMessage) | **PUT** /chat/messages/{id} | Edit your message
[**getChatMessage**](ChatApi.md#getChatMessage) | **GET** /chat/messages/{id} | Get a message
[**getChatMessageBlacklist**](ChatApi.md#getChatMessageBlacklist) | **GET** /chat/users/{id}/blacklist | Get a list of blocked users for chat messaging
[**getChatThreads**](ChatApi.md#getChatThreads) | **GET** /chat/threads | List your threads
[**getDirectMessages**](ChatApi.md#getDirectMessages) | **GET** /chat/users/{id}/messages | List messages with a user
[**getThreadMessages**](ChatApi.md#getThreadMessages) | **GET** /chat/threads/{id}/messages | List messages in a thread
[**getTopicMessages**](ChatApi.md#getTopicMessages) | **GET** /chat/topics/{id}/messages | List messages in a topic
[**removeChatBlacklist**](ChatApi.md#removeChatBlacklist) | **DELETE** /chat/users/{id}/blacklist/{blacklisted_user_id} | Remove a user from a blacklist
[**sendChatMessage**](ChatApi.md#sendChatMessage) | **POST** /chat/messages | Send a message


# **acknowledgeChatMessage**
> acknowledgeChatMessage(id, readCount)

Acknowledge number of messages in a thread

<b>Permissions Needed:</b> owner

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new ChatApi();
var id = id_example; // String | The thread id
var readCount = new int(); // int | The amount of messages read

try { 
    api_instance.acknowledgeChatMessage(id, readCount);
} catch (e) {
    print("Exception when calling ChatApi->acknowledgeChatMessage: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The thread id | 
 **readCount** | **int**| The amount of messages read | [optional] 

### Return type

void (empty response body)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **addChatMessageBlacklist**
> addChatMessageBlacklist(blacklistedUserId, id)

Add a user to a chat message blacklist

<b>Permissions Needed:</b> CHAT_ADMIN or owner

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new ChatApi();
var blacklistedUserId = 56; // int | The user id to blacklist
var id = id_example; // String | The user id or 'me'

try { 
    api_instance.addChatMessageBlacklist(blacklistedUserId, id);
} catch (e) {
    print("Exception when calling ChatApi->addChatMessageBlacklist: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **blacklistedUserId** | **int**| The user id to blacklist | 
 **id** | **String**| The user id or &#39;me&#39; | 

### Return type

void (empty response body)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteChatMessage**
> deleteChatMessage(id)

Delete a message

<b>Permissions Needed:</b> CHAT_ADMIN or owner

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new ChatApi();
var id = id_example; // String | The message id

try { 
    api_instance.deleteChatMessage(id);
} catch (e) {
    print("Exception when calling ChatApi->deleteChatMessage: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The message id | 

### Return type

void (empty response body)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **editChatMessage**
> editChatMessage(id, chatMessageResource)

Edit your message

<b>Permissions Needed:</b> owner

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new ChatApi();
var id = id_example; // String | The message id
var chatMessageResource = new ChatMessageResource(); // ChatMessageResource | The chat message resource

try { 
    api_instance.editChatMessage(id, chatMessageResource);
} catch (e) {
    print("Exception when calling ChatApi->editChatMessage: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The message id | 
 **chatMessageResource** | [**ChatMessageResource**](ChatMessageResource.md)| The chat message resource | [optional] 

### Return type

void (empty response body)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getChatMessage**
> ChatMessageResource getChatMessage(id)

Get a message

<b>Permissions Needed:</b> CHAT_ADMIN or owner

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new ChatApi();
var id = id_example; // String | The message id

try { 
    var result = api_instance.getChatMessage(id);
    print(result);
} catch (e) {
    print("Exception when calling ChatApi->getChatMessage: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The message id | 

### Return type

[**ChatMessageResource**](ChatMessageResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getChatMessageBlacklist**
> List<ChatBlacklistResource> getChatMessageBlacklist(id)

Get a list of blocked users for chat messaging

<b>Permissions Needed:</b> CHAT_ADMIN or owner

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new ChatApi();
var id = id_example; // String | The user id or 'me'

try { 
    var result = api_instance.getChatMessageBlacklist(id);
    print(result);
} catch (e) {
    print("Exception when calling ChatApi->getChatMessageBlacklist: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The user id or &#39;me&#39; | 

### Return type

[**List<ChatBlacklistResource>**](ChatBlacklistResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getChatThreads**
> PageResource«ChatUserThreadResource» getChatThreads(size, page, order)

List your threads

<b>Permissions Needed:</b> owner

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new ChatApi();
var size = 56; // int | The number of objects returned per page
var page = 56; // int | The number of the page returned
var order = order_example; // String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]

try { 
    var result = api_instance.getChatThreads(size, page, order);
    print(result);
} catch (e) {
    print("Exception when calling ChatApi->getChatThreads: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned | [optional] [default to 1]
 **order** | **String**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] 

### Return type

[**PageResource«ChatUserThreadResource»**](PageResource«ChatUserThreadResource».md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDirectMessages**
> PageResource«ChatMessageResource» getDirectMessages(id, size, page, order)

List messages with a user

<b>Permissions Needed:</b> owner

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new ChatApi();
var id = 56; // int | The user id
var size = 56; // int | The number of objects returned per page
var page = 56; // int | The number of the page returned
var order = order_example; // String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]

try { 
    var result = api_instance.getDirectMessages(id, size, page, order);
    print(result);
} catch (e) {
    print("Exception when calling ChatApi->getDirectMessages: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The user id | 
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned | [optional] [default to 1]
 **order** | **String**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] 

### Return type

[**PageResource«ChatMessageResource»**](PageResource«ChatMessageResource».md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getThreadMessages**
> PageResource«ChatMessageResource» getThreadMessages(id, size, page, order)

List messages in a thread

<b>Permissions Needed:</b> CHAT_ADMIN or owner

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new ChatApi();
var id = id_example; // String | The thread id
var size = 56; // int | The number of objects returned per page
var page = 56; // int | The number of the page returned
var order = order_example; // String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]

try { 
    var result = api_instance.getThreadMessages(id, size, page, order);
    print(result);
} catch (e) {
    print("Exception when calling ChatApi->getThreadMessages: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The thread id | 
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned | [optional] [default to 1]
 **order** | **String**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] 

### Return type

[**PageResource«ChatMessageResource»**](PageResource«ChatMessageResource».md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTopicMessages**
> PageResource«ChatMessageResource» getTopicMessages(id, size, page, order)

List messages in a topic

<b>Permissions Needed:</b> CHAT_ADMIN or owner

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new ChatApi();
var id = id_example; // String | The topic id
var size = 56; // int | The number of objects returned per page
var page = 56; // int | The number of the page returned
var order = order_example; // String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]

try { 
    var result = api_instance.getTopicMessages(id, size, page, order);
    print(result);
} catch (e) {
    print("Exception when calling ChatApi->getTopicMessages: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The topic id | 
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned | [optional] [default to 1]
 **order** | **String**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] 

### Return type

[**PageResource«ChatMessageResource»**](PageResource«ChatMessageResource».md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **removeChatBlacklist**
> removeChatBlacklist(blacklistedUserId, id)

Remove a user from a blacklist

<b>Permissions Needed:</b> CHAT_ADMIN or owner

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new ChatApi();
var blacklistedUserId = 56; // int | The user id to blacklist
var id = id_example; // String | The user id or 'me'

try { 
    api_instance.removeChatBlacklist(blacklistedUserId, id);
} catch (e) {
    print("Exception when calling ChatApi->removeChatBlacklist: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **blacklistedUserId** | **int**| The user id to blacklist | 
 **id** | **String**| The user id or &#39;me&#39; | 

### Return type

void (empty response body)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sendChatMessage**
> ChatMessageResource sendChatMessage(chatMessageResource)

Send a message

<b>Permissions Needed:</b> ANY

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new ChatApi();
var chatMessageResource = new ChatMessageResource(); // ChatMessageResource | The chat message resource

try { 
    var result = api_instance.sendChatMessage(chatMessageResource);
    print(result);
} catch (e) {
    print("Exception when calling ChatApi->sendChatMessage: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chatMessageResource** | [**ChatMessageResource**](ChatMessageResource.md)| The chat message resource | [optional] 

### Return type

[**ChatMessageResource**](ChatMessageResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

