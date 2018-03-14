# swagger.api.NotificationsApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://jsapi-integration.us-east-1.elasticbeanstalk.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createNotificationType**](NotificationsApi.md#createNotificationType) | **POST** /notifications/types | Create a notification type
[**deleteNotificationType**](NotificationsApi.md#deleteNotificationType) | **DELETE** /notifications/types/{id} | Delete a notification type
[**getNotificationType**](NotificationsApi.md#getNotificationType) | **GET** /notifications/types/{id} | Get a single notification type
[**getNotificationTypes**](NotificationsApi.md#getNotificationTypes) | **GET** /notifications/types | List and search notification types
[**getUserNotificationInfo**](NotificationsApi.md#getUserNotificationInfo) | **GET** /users/{user_id}/notifications/types/{type_id} | View a user&#39;s notification settings for a type
[**getUserNotificationInfoList**](NotificationsApi.md#getUserNotificationInfoList) | **GET** /users/{user_id}/notifications/types | View a user&#39;s notification settings
[**getUserNotifications**](NotificationsApi.md#getUserNotifications) | **GET** /users/{id}/notifications | Get notifications
[**sendNotification**](NotificationsApi.md#sendNotification) | **POST** /notifications | Send a notification
[**setUserNotificationStatus**](NotificationsApi.md#setUserNotificationStatus) | **PUT** /users/{user_id}/notifications/{notification_id}/status | Set notification status
[**silenceDirectNotifications**](NotificationsApi.md#silenceDirectNotifications) | **PUT** /users/{user_id}/notifications/types/{type_id}/silenced | Enable or disable direct notifications for a user
[**updateNotificationType**](NotificationsApi.md#updateNotificationType) | **PUT** /notifications/types/{id} | Update a notificationType


# **createNotificationType**
> NotificationTypeResource createNotificationType(notificationType)

Create a notification type

<b>Permissions Needed:</b> NOTIFICATIONS_ADMIN

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new NotificationsApi();
var notificationType = new NotificationTypeResource(); // NotificationTypeResource | notificationType

try { 
    var result = api_instance.createNotificationType(notificationType);
    print(result);
} catch (e) {
    print("Exception when calling NotificationsApi->createNotificationType: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **notificationType** | [**NotificationTypeResource**](NotificationTypeResource.md)| notificationType | [optional] 

### Return type

[**NotificationTypeResource**](NotificationTypeResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteNotificationType**
> deleteNotificationType(id)

Delete a notification type

<b>Permissions Needed:</b> NOTIFICATIONS_ADMIN

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new NotificationsApi();
var id = id_example; // String | id

try { 
    api_instance.deleteNotificationType(id);
} catch (e) {
    print("Exception when calling NotificationsApi->deleteNotificationType: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| id | 

### Return type

void (empty response body)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getNotificationType**
> NotificationTypeResource getNotificationType(id)

Get a single notification type

<b>Permissions Needed:</b> NOTIFICATIONS_ADMIN

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new NotificationsApi();
var id = id_example; // String | id

try { 
    var result = api_instance.getNotificationType(id);
    print(result);
} catch (e) {
    print("Exception when calling NotificationsApi->getNotificationType: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| id | 

### Return type

[**NotificationTypeResource**](NotificationTypeResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getNotificationTypes**
> PageResource«NotificationTypeResource» getNotificationTypes(size, page, order)

List and search notification types

Get a list of notification type with optional filtering. <br><br><b>Permissions Needed:</b> NOTIFICATIONS_ADMIN

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new NotificationsApi();
var size = 56; // int | The number of objects returned per page
var page = 56; // int | The number of the page returned, starting with 1
var order = order_example; // String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]

try { 
    var result = api_instance.getNotificationTypes(size, page, order);
    print(result);
} catch (e) {
    print("Exception when calling NotificationsApi->getNotificationTypes: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **String**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to id:ASC]

### Return type

[**PageResource«NotificationTypeResource»**](PageResource«NotificationTypeResource».md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUserNotificationInfo**
> NotificationUserTypeResource getUserNotificationInfo(typeId, userId)

View a user's notification settings for a type

<b>Permissions Needed:</b> NOTIFICATIONS_ADMIN or self

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new NotificationsApi();
var typeId = typeId_example; // String | The id of the topic
var userId = userId_example; // String | The id of the subscriber or 'me'

try { 
    var result = api_instance.getUserNotificationInfo(typeId, userId);
    print(result);
} catch (e) {
    print("Exception when calling NotificationsApi->getUserNotificationInfo: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **typeId** | **String**| The id of the topic | 
 **userId** | **String**| The id of the subscriber or &#39;me&#39; | 

### Return type

[**NotificationUserTypeResource**](NotificationUserTypeResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUserNotificationInfoList**
> PageResource«NotificationUserTypeResource» getUserNotificationInfoList(userId, size, page, order)

View a user's notification settings

<b>Permissions Needed:</b> NOTIFICATIONS_ADMIN or self

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new NotificationsApi();
var userId = userId_example; // String | The id of the subscriber or 'me'
var size = 56; // int | The number of objects returned per page
var page = 56; // int | The number of the page returned, starting with 1
var order = order_example; // String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]

try { 
    var result = api_instance.getUserNotificationInfoList(userId, size, page, order);
    print(result);
} catch (e) {
    print("Exception when calling NotificationsApi->getUserNotificationInfoList: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**| The id of the subscriber or &#39;me&#39; | 
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **String**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to id:ASC]

### Return type

[**PageResource«NotificationUserTypeResource»**](PageResource«NotificationUserTypeResource».md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUserNotifications**
> PageResource«UserNotificationResource» getUserNotifications(id, filterStatus, size, page, order)

Get notifications

<b>Permissions Needed:</b> NOTIFICATIONS_ADMIN or self

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new NotificationsApi();
var id = id_example; // String | The id of the user or 'me'
var filterStatus = filterStatus_example; // String | filter for notifications with a given status
var size = 56; // int | The number of objects returned per page
var page = 56; // int | The number of the page returned, starting with 1
var order = order_example; // String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]

try { 
    var result = api_instance.getUserNotifications(id, filterStatus, size, page, order);
    print(result);
} catch (e) {
    print("Exception when calling NotificationsApi->getUserNotifications: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the user or &#39;me&#39; | 
 **filterStatus** | **String**| filter for notifications with a given status | [optional] 
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **String**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to id:ASC]

### Return type

[**PageResource«UserNotificationResource»**](PageResource«UserNotificationResource».md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sendNotification**
> NotificationResource sendNotification(notification)

Send a notification

<b>Permissions Needed:</b> NOTIFICATIONS_ADMIN

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new NotificationsApi();
var notification = new NotificationResource(); // NotificationResource | notification

try { 
    var result = api_instance.sendNotification(notification);
    print(result);
} catch (e) {
    print("Exception when calling NotificationsApi->sendNotification: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **notification** | [**NotificationResource**](NotificationResource.md)| notification | [optional] 

### Return type

[**NotificationResource**](NotificationResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **setUserNotificationStatus**
> setUserNotificationStatus(userId, notificationId, notification)

Set notification status

<b>Permissions Needed:</b> NOTIFICATIONS_ADMIN or self

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new NotificationsApi();
var userId = userId_example; // String | The id of the user or 'me'
var notificationId = notificationId_example; // String | The id of the notification
var notification = new UserNotificationStatusWrapper(); // UserNotificationStatusWrapper | status

try { 
    api_instance.setUserNotificationStatus(userId, notificationId, notification);
} catch (e) {
    print("Exception when calling NotificationsApi->setUserNotificationStatus: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**| The id of the user or &#39;me&#39; | 
 **notificationId** | **String**| The id of the notification | 
 **notification** | [**UserNotificationStatusWrapper**](UserNotificationStatusWrapper.md)| status | [optional] 

### Return type

void (empty response body)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **silenceDirectNotifications**
> silenceDirectNotifications(typeId, userId, silenced)

Enable or disable direct notifications for a user

Allows enabling or disabling messages for a given notification type when sent direct to the user. Notifications can still be retrieved by endpoint. For notifications broadcased to a topic, see the topic service to disable messages for the user there. <br><br><b>Permissions Needed:</b> NOTIFICATIONS_ADMIN or self

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new NotificationsApi();
var typeId = typeId_example; // String | The id of the topic
var userId = userId_example; // String | The id of the subscriber or 'me'
var silenced = new ValueWrapper«boolean»(); // ValueWrapper«boolean» | silenced

try { 
    api_instance.silenceDirectNotifications(typeId, userId, silenced);
} catch (e) {
    print("Exception when calling NotificationsApi->silenceDirectNotifications: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **typeId** | **String**| The id of the topic | 
 **userId** | **String**| The id of the subscriber or &#39;me&#39; | 
 **silenced** | [**ValueWrapper«boolean»**](ValueWrapper«boolean».md)| silenced | 

### Return type

void (empty response body)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateNotificationType**
> NotificationTypeResource updateNotificationType(id, notificationType)

Update a notificationType

<b>Permissions Needed:</b> NOTIFICATIONS_ADMIN

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new NotificationsApi();
var id = id_example; // String | id
var notificationType = new NotificationTypeResource(); // NotificationTypeResource | notificationType

try { 
    var result = api_instance.updateNotificationType(id, notificationType);
    print(result);
} catch (e) {
    print("Exception when calling NotificationsApi->updateNotificationType: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| id | 
 **notificationType** | [**NotificationTypeResource**](NotificationTypeResource.md)| notificationType | [optional] 

### Return type

[**NotificationTypeResource**](NotificationTypeResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

