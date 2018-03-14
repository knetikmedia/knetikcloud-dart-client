# swagger.api.Rule_Engine_ActionsApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://jsapi-integration.us-east-1.elasticbeanstalk.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getBREActions**](Rule_Engine_ActionsApi.md#getBREActions) | **GET** /bre/actions | Get a list of available actions


# **getBREActions**
> List<ActionResource> getBREActions(filterCategory, filterName, filterTags, filterSearch)

Get a list of available actions

<b>Permissions Needed:</b> BRE_RULE_ENGINE_ACTIONS_USER

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new Rule_Engine_ActionsApi();
var filterCategory = filterCategory_example; // String | Filter for actions that are within a specific category
var filterName = filterName_example; // String | Filter for actions that have names containing the given string
var filterTags = filterTags_example; // String | Filter for actions that have all of the given tags (comma separated list)
var filterSearch = filterSearch_example; // String | Filter for actions containing the given words somewhere within name, description and tags

try { 
    var result = api_instance.getBREActions(filterCategory, filterName, filterTags, filterSearch);
    print(result);
} catch (e) {
    print("Exception when calling Rule_Engine_ActionsApi->getBREActions: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterCategory** | **String**| Filter for actions that are within a specific category | [optional] 
 **filterName** | **String**| Filter for actions that have names containing the given string | [optional] 
 **filterTags** | **String**| Filter for actions that have all of the given tags (comma separated list) | [optional] 
 **filterSearch** | **String**| Filter for actions containing the given words somewhere within name, description and tags | [optional] 

### Return type

[**List<ActionResource>**](ActionResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

