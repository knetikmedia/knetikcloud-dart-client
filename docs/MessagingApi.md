# swagger.api.MessagingApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://devsandbox.knetikcloud.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**sendRawEmail**](MessagingApi.md#sendRawEmail) | **POST** /messaging/raw-email | Send a raw email to one or more users
[**sendRawPush**](MessagingApi.md#sendRawPush) | **POST** /messaging/raw-push | Send a raw push notification
[**sendRawSMS**](MessagingApi.md#sendRawSMS) | **POST** /messaging/raw-sms | Send a raw SMS
[**sendTemplatedEmail**](MessagingApi.md#sendTemplatedEmail) | **POST** /messaging/templated-email | Send a templated email to one or more users
[**sendTemplatedPush**](MessagingApi.md#sendTemplatedPush) | **POST** /messaging/templated-push | Send a templated push notification
[**sendTemplatedSMS**](MessagingApi.md#sendTemplatedSMS) | **POST** /messaging/templated-sms | Send a new templated SMS


# **sendRawEmail**
> sendRawEmail(rawEmailResource)

Send a raw email to one or more users

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

Sends a raw push notification message to one or more users. User's without registered mobile device for the application will be skipped.

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

Sends a raw SMS text message to one or more users. User's without registered mobile numbers will be skipped.

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

Sends a templated push notification message to one or more users. User's without registered mobile device for the application will be skipped.

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

Sends a templated SMS text message to one or more users. User's without registered mobile numbers will be skipped.

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

