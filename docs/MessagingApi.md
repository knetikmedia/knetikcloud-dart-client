# swagger.api.MessagingApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://sandbox.knetikcloud.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**sendRawEmail**](MessagingApi.md#sendRawEmail) | **POST** /messaging/raw-email | Send a raw email to one or more users
[**sendRawSMS**](MessagingApi.md#sendRawSMS) | **POST** /messaging/raw-sms | Send a raw SMS
[**sendTemplatedEmail**](MessagingApi.md#sendTemplatedEmail) | **POST** /messaging/templated-email | Send a templated email to one or more users
[**sendTemplatedSMS**](MessagingApi.md#sendTemplatedSMS) | **POST** /messaging/templated-sms | Send a new templated SMS


# **sendRawEmail**
> sendRawEmail(rawEmailResource)

Send a raw email to one or more users

### Example 
```dart
import 'package:swagger/api.dart';

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

No authorization required

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

No authorization required

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

No authorization required

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

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

