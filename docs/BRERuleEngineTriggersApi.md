# swagger.api.BRERuleEngineTriggersApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://sandbox.knetikcloud.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createBRETrigger**](BRERuleEngineTriggersApi.md#createBRETrigger) | **POST** /bre/triggers | Create a trigger
[**deleteBRETrigger**](BRERuleEngineTriggersApi.md#deleteBRETrigger) | **DELETE** /bre/triggers/{event_name} | Delete a trigger
[**getBRETrigger**](BRERuleEngineTriggersApi.md#getBRETrigger) | **GET** /bre/triggers/{event_name} | Get a single trigger
[**getBRETriggers**](BRERuleEngineTriggersApi.md#getBRETriggers) | **GET** /bre/triggers | List triggers
[**updateBRETrigger**](BRERuleEngineTriggersApi.md#updateBRETrigger) | **PUT** /bre/triggers/{event_name} | Update a trigger


# **createBRETrigger**
> BreTriggerResource createBRETrigger(breTriggerResource)

Create a trigger

Customer added triggers will not be fired automatically or have rules associated with them by default. Custom rules must be added to get use from the trigger and it must then be fired from the outside. See the Bre Event services

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new BRERuleEngineTriggersApi();
var breTriggerResource = new BreTriggerResource(); // BreTriggerResource | The BRE trigger resource object

try { 
    var result = api_instance.createBRETrigger(breTriggerResource);
    print(result);
} catch (e) {
    print("Exception when calling BRERuleEngineTriggersApi->createBRETrigger: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **breTriggerResource** | [**BreTriggerResource**](BreTriggerResource.md)| The BRE trigger resource object | [optional] 

### Return type

[**BreTriggerResource**](BreTriggerResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteBRETrigger**
> deleteBRETrigger(eventName)

Delete a trigger

May fail if there are existing rules against it. Cannot delete core triggers

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new BRERuleEngineTriggersApi();
var eventName = eventName_example; // String | The trigger event name

try { 
    api_instance.deleteBRETrigger(eventName);
} catch (e) {
    print("Exception when calling BRERuleEngineTriggersApi->deleteBRETrigger: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **eventName** | **String**| The trigger event name | 

### Return type

void (empty response body)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getBRETrigger**
> BreTriggerResource getBRETrigger(eventName)

Get a single trigger

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new BRERuleEngineTriggersApi();
var eventName = eventName_example; // String | The trigger event name

try { 
    var result = api_instance.getBRETrigger(eventName);
    print(result);
} catch (e) {
    print("Exception when calling BRERuleEngineTriggersApi->getBRETrigger: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **eventName** | **String**| The trigger event name | 

### Return type

[**BreTriggerResource**](BreTriggerResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getBRETriggers**
> PageResource«BreTriggerResource» getBRETriggers(filterSystem, filterCategory, filterTags, filterName, filterSearch, size, page)

List triggers

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new BRERuleEngineTriggersApi();
var filterSystem = true; // bool | Filter for triggers that are system triggers when true, or not when false. Leave off for both mixed
var filterCategory = filterCategory_example; // String | Filter for triggers that are within a specific category
var filterTags = filterTags_example; // String | Filter for triggers that have all of the given tags (comma separated list)
var filterName = filterName_example; // String | Filter for triggers that have names containing the given string
var filterSearch = filterSearch_example; // String | Filter for triggers containing the given words somewhere within name, description and tags
var size = 56; // int | The number of objects returned per page
var page = 56; // int | The number of the page returned, starting with 1

try { 
    var result = api_instance.getBRETriggers(filterSystem, filterCategory, filterTags, filterName, filterSearch, size, page);
    print(result);
} catch (e) {
    print("Exception when calling BRERuleEngineTriggersApi->getBRETriggers: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterSystem** | **bool**| Filter for triggers that are system triggers when true, or not when false. Leave off for both mixed | [optional] 
 **filterCategory** | **String**| Filter for triggers that are within a specific category | [optional] 
 **filterTags** | **String**| Filter for triggers that have all of the given tags (comma separated list) | [optional] 
 **filterName** | **String**| Filter for triggers that have names containing the given string | [optional] 
 **filterSearch** | **String**| Filter for triggers containing the given words somewhere within name, description and tags | [optional] 
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]

### Return type

[**PageResource«BreTriggerResource»**](PageResource«BreTriggerResource».md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateBRETrigger**
> BreTriggerResource updateBRETrigger(eventName, breTriggerResource)

Update a trigger

May fail if new parameters mismatch requirements of existing rules. Cannot update core triggers

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new BRERuleEngineTriggersApi();
var eventName = eventName_example; // String | The trigger event name
var breTriggerResource = new BreTriggerResource(); // BreTriggerResource | The BRE trigger resource object

try { 
    var result = api_instance.updateBRETrigger(eventName, breTriggerResource);
    print(result);
} catch (e) {
    print("Exception when calling BRERuleEngineTriggersApi->updateBRETrigger: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **eventName** | **String**| The trigger event name | 
 **breTriggerResource** | [**BreTriggerResource**](BreTriggerResource.md)| The BRE trigger resource object | [optional] 

### Return type

[**BreTriggerResource**](BreTriggerResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

