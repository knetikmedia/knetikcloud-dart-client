# swagger.api.Media_ModerationApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://jsapi-integration.us-east-1.elasticbeanstalk.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addFlag**](Media_ModerationApi.md#addFlag) | **POST** /moderation/flags | Add a flag
[**deleteFlag**](Media_ModerationApi.md#deleteFlag) | **DELETE** /moderation/flags | Delete a flag
[**getFlags**](Media_ModerationApi.md#getFlags) | **GET** /moderation/flags | Returns a page of flags
[**getModerationReport**](Media_ModerationApi.md#getModerationReport) | **GET** /moderation/reports/{id} | Get a flag report
[**getModerationReports**](Media_ModerationApi.md#getModerationReports) | **GET** /moderation/reports | Returns a page of flag reports
[**updateModerationReport**](Media_ModerationApi.md#updateModerationReport) | **PUT** /moderation/reports/{id} | Update a flag report


# **addFlag**
> FlagResource addFlag(flagResource)

Add a flag

<b>Permissions Needed:</b> ANY

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new Media_ModerationApi();
var flagResource = new FlagResource(); // FlagResource | The flag resource object

try { 
    var result = api_instance.addFlag(flagResource);
    print(result);
} catch (e) {
    print("Exception when calling Media_ModerationApi->addFlag: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **flagResource** | [**FlagResource**](FlagResource.md)| The flag resource object | [optional] 

### Return type

[**FlagResource**](FlagResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteFlag**
> deleteFlag(contextName, contextId, userId)

Delete a flag

<b>Permissions Needed:</b> MODERATION_ADMIN or owner

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new Media_ModerationApi();
var contextName = contextName_example; // String | The name of the context
var contextId = contextId_example; // String | The id of the context
var userId = 56; // int | The id of the user

try { 
    api_instance.deleteFlag(contextName, contextId, userId);
} catch (e) {
    print("Exception when calling Media_ModerationApi->deleteFlag: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contextName** | **String**| The name of the context | [optional] 
 **contextId** | **String**| The id of the context | [optional] 
 **userId** | **int**| The id of the user | [optional] 

### Return type

void (empty response body)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getFlags**
> PageResource«FlagResource» getFlags(filterContext, filterContextId, filterUserId, size, page)

Returns a page of flags

<b>Permissions Needed:</b> MODERATION_ADMIN or owner

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new Media_ModerationApi();
var filterContext = filterContext_example; // String | Filter by flag context
var filterContextId = filterContextId_example; // String | Filter by flag context ID
var filterUserId = 56; // int | Filter by user ID
var size = 56; // int | The number of objects returned per page
var page = 56; // int | The number of the page returned, starting with 1

try { 
    var result = api_instance.getFlags(filterContext, filterContextId, filterUserId, size, page);
    print(result);
} catch (e) {
    print("Exception when calling Media_ModerationApi->getFlags: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterContext** | **String**| Filter by flag context | [optional] 
 **filterContextId** | **String**| Filter by flag context ID | [optional] 
 **filterUserId** | **int**| Filter by user ID | [optional] 
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]

### Return type

[**PageResource«FlagResource»**](PageResource«FlagResource».md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getModerationReport**
> FlagReportResource getModerationReport(id)

Get a flag report

<b>Permissions Needed:</b> MODERATION_ADMIN

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new Media_ModerationApi();
var id = 789; // int | The flag report id

try { 
    var result = api_instance.getModerationReport(id);
    print(result);
} catch (e) {
    print("Exception when calling Media_ModerationApi->getModerationReport: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The flag report id | 

### Return type

[**FlagReportResource**](FlagReportResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getModerationReports**
> PageResource«FlagReportResource» getModerationReports(excludeResolved, filterContext, filterContextId, size, page, order)

Returns a page of flag reports

Context can be either a free-form string or a pre-defined context name. <br><br><b>Permissions Needed:</b> MODERATION_ADMIN

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new Media_ModerationApi();
var excludeResolved = true; // bool | Ignore resolved context
var filterContext = filterContext_example; // String | Filter by moderation context
var filterContextId = filterContextId_example; // String | Filter by moderation context ID
var size = 56; // int | The number of objects returned per page
var page = 56; // int | The number of the page returned, starting with 1
var order = order_example; // String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]

try { 
    var result = api_instance.getModerationReports(excludeResolved, filterContext, filterContextId, size, page, order);
    print(result);
} catch (e) {
    print("Exception when calling Media_ModerationApi->getModerationReports: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **excludeResolved** | **bool**| Ignore resolved context | [optional] [default to true]
 **filterContext** | **String**| Filter by moderation context | [optional] 
 **filterContextId** | **String**| Filter by moderation context ID | [optional] 
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **String**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] 

### Return type

[**PageResource«FlagReportResource»**](PageResource«FlagReportResource».md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateModerationReport**
> updateModerationReport(id, flagReportResource)

Update a flag report

Lets you set the resolution of a report. Resolution types is {banned,ignore} in case of 'banned' you will need to pass the reason. <br><br><b>Permissions Needed:</b> MODERATION_ADMIN

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new Media_ModerationApi();
var id = 789; // int | The flag report id
var flagReportResource = new FlagReportResource(); // FlagReportResource | The new flag report

try { 
    api_instance.updateModerationReport(id, flagReportResource);
} catch (e) {
    print("Exception when calling Media_ModerationApi->updateModerationReport: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The flag report id | 
 **flagReportResource** | [**FlagReportResource**](FlagReportResource.md)| The new flag report | [optional] 

### Return type

void (empty response body)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

