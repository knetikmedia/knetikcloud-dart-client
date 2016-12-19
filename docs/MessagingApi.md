# swagger.api.MessagingApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://localhost:8080/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**sendRawEmailUsingPOST**](MessagingApi.md#sendRawEmailUsingPOST) | **POST** /messaging/raw-email | Send a raw email to one or more users
[**sendRawSMSUsingPOST**](MessagingApi.md#sendRawSMSUsingPOST) | **POST** /messaging/raw-sms | Send a raw SMS
[**sendRawSMSUsingPOST1**](MessagingApi.md#sendRawSMSUsingPOST1) | **POST** /messaging/templated-sms | Send a new templated SMS
[**sendTemplateEmailUsingPOST**](MessagingApi.md#sendTemplateEmailUsingPOST) | **POST** /messaging/templated-email | Send a templated email to one or more users


# **sendRawEmailUsingPOST**
> sendRawEmailUsingPOST(rawEmailResource)

Send a raw email to one or more users

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new MessagingApi();
var rawEmailResource = new RawEmailResource(); // RawEmailResource | The new raw email to be sent

try { 
    api_instance.sendRawEmailUsingPOST(rawEmailResource);
} catch (e) {
    print("Exception when calling MessagingApi->sendRawEmailUsingPOST: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **rawEmailResource** | [**RawEmailResource**](RawEmailResource.md)| The new raw email to be sent | [optional] 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sendRawSMSUsingPOST**
> sendRawSMSUsingPOST(rawSMSResource)

Send a raw SMS

Sends a raw SMS text message to one or more users. User's without registered mobile numbers will be skipped.

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new MessagingApi();
var rawSMSResource = new RawSMSResource(); // RawSMSResource | The new raw SMS to be sent

try { 
    api_instance.sendRawSMSUsingPOST(rawSMSResource);
} catch (e) {
    print("Exception when calling MessagingApi->sendRawSMSUsingPOST: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **rawSMSResource** | [**RawSMSResource**](RawSMSResource.md)| The new raw SMS to be sent | [optional] 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sendRawSMSUsingPOST1**
> sendRawSMSUsingPOST1(templateSMSResource)

Send a new templated SMS

Sends a templated SMS text message to one or more users. User's without registered mobile numbers will be skipped.

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new MessagingApi();
var templateSMSResource = new TemplateSMSResource(); // TemplateSMSResource | The new template SMS to be sent

try { 
    api_instance.sendRawSMSUsingPOST1(templateSMSResource);
} catch (e) {
    print("Exception when calling MessagingApi->sendRawSMSUsingPOST1: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **templateSMSResource** | [**TemplateSMSResource**](TemplateSMSResource.md)| The new template SMS to be sent | [optional] 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sendTemplateEmailUsingPOST**
> sendTemplateEmailUsingPOST(messageResource)

Send a templated email to one or more users

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new MessagingApi();
var messageResource = new TemplateEmailResource(); // TemplateEmailResource | The new template email to be sent

try { 
    api_instance.sendTemplateEmailUsingPOST(messageResource);
} catch (e) {
    print("Exception when calling MessagingApi->sendTemplateEmailUsingPOST: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **messageResource** | [**TemplateEmailResource**](TemplateEmailResource.md)| The new template email to be sent | [optional] 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

