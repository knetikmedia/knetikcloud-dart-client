# swagger.api.MessagingTopicsApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://sandbox.knetikcloud.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**disableTopicSubscriber**](MessagingTopicsApi.md#disableTopicSubscriber) | **PUT** /messaging/topics/{id}/subscribers/{user_id}/disabled | Enable or disable messages for a user
[**getTopicSubscriber**](MessagingTopicsApi.md#getTopicSubscriber) | **GET** /messaging/topics/{id}/subscribers/{user_id} | Get a subscriber to a topic
[**getTopicSubscribers**](MessagingTopicsApi.md#getTopicSubscribers) | **GET** /messaging/topics/{id}/subscribers | Get all subscribers to a topic
[**getUserTopics**](MessagingTopicsApi.md#getUserTopics) | **GET** /users/{id}/topics | Get all messaging topics for a given user


# **disableTopicSubscriber**
> disableTopicSubscriber(id, userId, disabled)

Enable or disable messages for a user

Useful for opt-out options on a single topic. Consider multiple topics for multiple opt-out options.

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new MessagingTopicsApi();
var id = id_example; // String | The id of the topic
var userId = userId_example; // String | The id of the subscriber or 'me'
var disabled = new ValueWrapper«boolean»(); // ValueWrapper«boolean» | disabled

try { 
    api_instance.disableTopicSubscriber(id, userId, disabled);
} catch (e) {
    print("Exception when calling MessagingTopicsApi->disableTopicSubscriber: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the topic | 
 **userId** | **String**| The id of the subscriber or &#39;me&#39; | 
 **disabled** | [**ValueWrapper«boolean»**](ValueWrapper«boolean».md)| disabled | 

### Return type

void (empty response body)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTopicSubscriber**
> TopicSubscriberResource getTopicSubscriber(id, userId)

Get a subscriber to a topic

<b>Permissions Needed:</b> TOPICS_ADMIN

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new MessagingTopicsApi();
var id = id_example; // String | The id of the topic
var userId = userId_example; // String | The id of the subscriber or 'me'

try { 
    var result = api_instance.getTopicSubscriber(id, userId);
    print(result);
} catch (e) {
    print("Exception when calling MessagingTopicsApi->getTopicSubscriber: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the topic | 
 **userId** | **String**| The id of the subscriber or &#39;me&#39; | 

### Return type

[**TopicSubscriberResource**](TopicSubscriberResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTopicSubscribers**
> PageResource«TopicSubscriberResource» getTopicSubscribers(id)

Get all subscribers to a topic

<b>Permissions Needed:</b> TOPICS_ADMIN

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new MessagingTopicsApi();
var id = id_example; // String | The id of the topic

try { 
    var result = api_instance.getTopicSubscribers(id);
    print(result);
} catch (e) {
    print("Exception when calling MessagingTopicsApi->getTopicSubscribers: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the topic | 

### Return type

[**PageResource«TopicSubscriberResource»**](PageResource«TopicSubscriberResource».md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUserTopics**
> PageResource«TopicResource» getUserTopics(id)

Get all messaging topics for a given user

<b>Permissions Needed:</b> TOPICS_ADMIN

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new MessagingTopicsApi();
var id = id_example; // String | The id of the user or 'me'

try { 
    var result = api_instance.getUserTopics(id);
    print(result);
} catch (e) {
    print("Exception when calling MessagingTopicsApi->getUserTopics: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the user or &#39;me&#39; | 

### Return type

[**PageResource«TopicResource»**](PageResource«TopicResource».md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

