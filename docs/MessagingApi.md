# swagger.api.MessagingApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://jsapi-integration.us-east-1.elasticbeanstalk.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**compileMessageTemplate**](MessagingApi.md#compileMessageTemplate) | **POST** /messaging/templates/compilations | Compile a message template
[**createMessageTemplate**](MessagingApi.md#createMessageTemplate) | **POST** /messaging/templates | Create a message template
[**deleteMessageTemplate**](MessagingApi.md#deleteMessageTemplate) | **DELETE** /messaging/templates/{id} | Delete an existing message template
[**getMessageTemplate**](MessagingApi.md#getMessageTemplate) | **GET** /messaging/templates/{id} | Get a single message template
[**getMessageTemplates**](MessagingApi.md#getMessageTemplates) | **GET** /messaging/templates | List and search message templates
[**sendMessage**](MessagingApi.md#sendMessage) | **POST** /messaging/message | Send a message
[**sendRawEmail**](MessagingApi.md#sendRawEmail) | **POST** /messaging/raw-email | Send a raw email to one or more users
[**sendRawPush**](MessagingApi.md#sendRawPush) | **POST** /messaging/raw-push | Send a raw push notification
[**sendRawSMS**](MessagingApi.md#sendRawSMS) | **POST** /messaging/raw-sms | Send a raw SMS
[**sendTemplatedEmail**](MessagingApi.md#sendTemplatedEmail) | **POST** /messaging/templated-email | Send a templated email to one or more users
[**sendTemplatedPush**](MessagingApi.md#sendTemplatedPush) | **POST** /messaging/templated-push | Send a templated push notification
[**sendTemplatedSMS**](MessagingApi.md#sendTemplatedSMS) | **POST** /messaging/templated-sms | Send a new templated SMS
[**sendWebsocket**](MessagingApi.md#sendWebsocket) | **POST** /messaging/websocket-message | Send a websocket message
[**updateMessageTemplate**](MessagingApi.md#updateMessageTemplate) | **PUT** /messaging/templates/{id} | Update an existing message template


# **compileMessageTemplate**
> Map<String, String> compileMessageTemplate(request)

Compile a message template

Processes a set of input data against the template and returnes the compiled result. <br><br><b>Permissions Needed:</b> MESSAGING_ADMIN

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new MessagingApi();
var request = new MessageTemplateBulkRequest(); // MessageTemplateBulkRequest | request

try { 
    var result = api_instance.compileMessageTemplate(request);
    print(result);
} catch (e) {
    print("Exception when calling MessagingApi->compileMessageTemplate: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**MessageTemplateBulkRequest**](MessageTemplateBulkRequest.md)| request | [optional] 

### Return type

**Map<String, String>**

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createMessageTemplate**
> MessageTemplateResource createMessageTemplate(messageTemplate)

Create a message template

<b>Permissions Needed:</b> MESSAGING_ADMIN

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new MessagingApi();
var messageTemplate = new MessageTemplateResource(); // MessageTemplateResource | The new template email to be sent

try { 
    var result = api_instance.createMessageTemplate(messageTemplate);
    print(result);
} catch (e) {
    print("Exception when calling MessagingApi->createMessageTemplate: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **messageTemplate** | [**MessageTemplateResource**](MessageTemplateResource.md)| The new template email to be sent | [optional] 

### Return type

[**MessageTemplateResource**](MessageTemplateResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteMessageTemplate**
> deleteMessageTemplate(id)

Delete an existing message template

<b>Permissions Needed:</b> MESSAGING_ADMIN

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new MessagingApi();
var id = id_example; // String | The message_template id

try { 
    api_instance.deleteMessageTemplate(id);
} catch (e) {
    print("Exception when calling MessagingApi->deleteMessageTemplate: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The message_template id | 

### Return type

void (empty response body)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getMessageTemplate**
> MessageTemplateResource getMessageTemplate(id)

Get a single message template

<b>Permissions Needed:</b> MESSAGING_ADMIN

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new MessagingApi();
var id = id_example; // String | The message_template id

try { 
    var result = api_instance.getMessageTemplate(id);
    print(result);
} catch (e) {
    print("Exception when calling MessagingApi->getMessageTemplate: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The message_template id | 

### Return type

[**MessageTemplateResource**](MessageTemplateResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getMessageTemplates**
> PageResource«MessageTemplateResource» getMessageTemplates(filterTagset, filterTagIntersection, filterTagExclusion, size, page, order)

List and search message templates

Get a list of message templates with optional filtering. <br><br><b>Permissions Needed:</b> MESSAGING_ADMIN

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new MessagingApi();
var filterTagset = filterTagset_example; // String | Filter for message templates with at least one of a specified set of tags (separated by comma)
var filterTagIntersection = filterTagIntersection_example; // String | Filter for message templates with all of a specified set of tags (separated by comma)
var filterTagExclusion = filterTagExclusion_example; // String | Filter for message templates with none of a specified set of tags (separated by comma)
var size = 56; // int | The number of objects returned per page
var page = 56; // int | The number of the page returned, starting with 1
var order = order_example; // String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]

try { 
    var result = api_instance.getMessageTemplates(filterTagset, filterTagIntersection, filterTagExclusion, size, page, order);
    print(result);
} catch (e) {
    print("Exception when calling MessagingApi->getMessageTemplates: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterTagset** | **String**| Filter for message templates with at least one of a specified set of tags (separated by comma) | [optional] 
 **filterTagIntersection** | **String**| Filter for message templates with all of a specified set of tags (separated by comma) | [optional] 
 **filterTagExclusion** | **String**| Filter for message templates with none of a specified set of tags (separated by comma) | [optional] 
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **String**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to id:ASC]

### Return type

[**PageResource«MessageTemplateResource»**](PageResource«MessageTemplateResource».md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sendMessage**
> sendMessage(messageResource)

Send a message

Sends a message with one or more formats to one or more users. Fill in any message formats desired (email, sms, websockets) and each user will recieve all valid formats. <br><br><b>Permissions Needed:</b> MESSAGING_ADMIN

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new MessagingApi();
var messageResource = new MessageResource(); // MessageResource | The message to be sent

try { 
    api_instance.sendMessage(messageResource);
} catch (e) {
    print("Exception when calling MessagingApi->sendMessage: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **messageResource** | [**MessageResource**](MessageResource.md)| The message to be sent | [optional] 

### Return type

void (empty response body)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sendRawEmail**
> sendRawEmail(rawEmailResource)

Send a raw email to one or more users

<b>Permissions Needed:</b> MESSAGING_ADMIN

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new MessagingApi();
var rawEmailResource = new RawEmailResource(); // RawEmailResource | The new raw email to be sent

try { 
    api_instance.sendRawEmail(rawEmailResource);
} catch (e) {
    print("Exception when calling MessagingApi->sendRawEmail: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **rawEmailResource** | [**RawEmailResource**](RawEmailResource.md)| The new raw email to be sent | [optional] 

### Return type

void (empty response body)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sendRawPush**
> sendRawPush(rawPushResource)

Send a raw push notification

Sends a raw push notification message to one or more users. User's without registered mobile device for the application will be skipped. <br><br><b>Permissions Needed:</b> MESSAGING_ADMIN

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new MessagingApi();
var rawPushResource = new RawPushResource(); // RawPushResource | The new raw push notification to be sent

try { 
    api_instance.sendRawPush(rawPushResource);
} catch (e) {
    print("Exception when calling MessagingApi->sendRawPush: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **rawPushResource** | [**RawPushResource**](RawPushResource.md)| The new raw push notification to be sent | [optional] 

### Return type

void (empty response body)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sendRawSMS**
> sendRawSMS(rawSMSResource)

Send a raw SMS

Sends a raw SMS text message to one or more users. User's without registered mobile numbers will be skipped. <br><br><b>Permissions Needed:</b> MESSAGING_ADMIN

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new MessagingApi();
var rawSMSResource = new RawSMSResource(); // RawSMSResource | The new raw SMS to be sent

try { 
    api_instance.sendRawSMS(rawSMSResource);
} catch (e) {
    print("Exception when calling MessagingApi->sendRawSMS: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **rawSMSResource** | [**RawSMSResource**](RawSMSResource.md)| The new raw SMS to be sent | [optional] 

### Return type

void (empty response body)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sendTemplatedEmail**
> sendTemplatedEmail(messageResource)

Send a templated email to one or more users

<b>Permissions Needed:</b> MESSAGING_ADMIN

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new MessagingApi();
var messageResource = new TemplateEmailResource(); // TemplateEmailResource | The new template email to be sent

try { 
    api_instance.sendTemplatedEmail(messageResource);
} catch (e) {
    print("Exception when calling MessagingApi->sendTemplatedEmail: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **messageResource** | [**TemplateEmailResource**](TemplateEmailResource.md)| The new template email to be sent | [optional] 

### Return type

void (empty response body)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sendTemplatedPush**
> sendTemplatedPush(templatePushResource)

Send a templated push notification

Sends a templated push notification message to one or more users. User's without registered mobile device for the application will be skipped. <br><br><b>Permissions Needed:</b> MESSAGING_ADMIN

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new MessagingApi();
var templatePushResource = new TemplatePushResource(); // TemplatePushResource | The new templated push notification to be sent

try { 
    api_instance.sendTemplatedPush(templatePushResource);
} catch (e) {
    print("Exception when calling MessagingApi->sendTemplatedPush: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **templatePushResource** | [**TemplatePushResource**](TemplatePushResource.md)| The new templated push notification to be sent | [optional] 

### Return type

void (empty response body)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sendTemplatedSMS**
> sendTemplatedSMS(templateSMSResource)

Send a new templated SMS

Sends a templated SMS text message to one or more users. User's without registered mobile numbers will be skipped. <br><br><b>Permissions Needed:</b> MESSAGING_ADMIN

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new MessagingApi();
var templateSMSResource = new TemplateSMSResource(); // TemplateSMSResource | The new template SMS to be sent

try { 
    api_instance.sendTemplatedSMS(templateSMSResource);
} catch (e) {
    print("Exception when calling MessagingApi->sendTemplatedSMS: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **templateSMSResource** | [**TemplateSMSResource**](TemplateSMSResource.md)| The new template SMS to be sent | [optional] 

### Return type

void (empty response body)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sendWebsocket**
> sendWebsocket(websocketResource)

Send a websocket message

Sends a websocket message to one or more users. <br><br><b>Permissions Needed:</b> MESSAGING_ADMIN

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new MessagingApi();
var websocketResource = new WebsocketMessageResource(); // WebsocketMessageResource | The new websocket message to be sent

try { 
    api_instance.sendWebsocket(websocketResource);
} catch (e) {
    print("Exception when calling MessagingApi->sendWebsocket: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **websocketResource** | [**WebsocketMessageResource**](WebsocketMessageResource.md)| The new websocket message to be sent | [optional] 

### Return type

void (empty response body)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateMessageTemplate**
> MessageTemplateResource updateMessageTemplate(id, messageTemplateResource)

Update an existing message template

<b>Permissions Needed:</b> MESSAGING_ADMIN

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new MessagingApi();
var id = id_example; // String | The message_template id
var messageTemplateResource = new MessageTemplateResource(); // MessageTemplateResource | The message template

try { 
    var result = api_instance.updateMessageTemplate(id, messageTemplateResource);
    print(result);
} catch (e) {
    print("Exception when calling MessagingApi->updateMessageTemplate: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The message_template id | 
 **messageTemplateResource** | [**MessageTemplateResource**](MessageTemplateResource.md)| The message template | [optional] 

### Return type

[**MessageTemplateResource**](MessageTemplateResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

