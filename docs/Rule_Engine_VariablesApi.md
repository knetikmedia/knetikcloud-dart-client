# swagger.api.Rule_Engine_VariablesApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://jsapi-integration.us-east-1.elasticbeanstalk.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getBREVariableTypes**](Rule_Engine_VariablesApi.md#getBREVariableTypes) | **GET** /bre/variable-types | Get a list of variable types available
[**getBREVariableValues**](Rule_Engine_VariablesApi.md#getBREVariableValues) | **GET** /bre/variable-types/{name}/values | List valid values for a type


# **getBREVariableTypes**
> List<VariableTypeResource> getBREVariableTypes()

Get a list of variable types available

Types include integer, string, user and invoice. These are used to qualify trigger parameters and action variables with strong typing. <br><br><b>Permissions Needed:</b> BRE_RULE_ENGINE_VARIABLES_USER

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new Rule_Engine_VariablesApi();

try { 
    var result = api_instance.getBREVariableTypes();
    print(result);
} catch (e) {
    print("Exception when calling Rule_Engine_VariablesApi->getBREVariableTypes: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<VariableTypeResource>**](VariableTypeResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getBREVariableValues**
> PageResource«SimpleReferenceResource«object»» getBREVariableValues(name, filterName, size, page)

List valid values for a type

Used to lookup users to fill in a user constant for example. Only types marked as enumerable are suppoorted here. <br><br><b>Permissions Needed:</b> BRE_RULE_ENGINE_VARIABLES_USER

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new Rule_Engine_VariablesApi();
var name = name_example; // String | The name of the type
var filterName = filterName_example; // String | Filter results by those with names starting with this string
var size = 56; // int | The number of objects returned per page
var page = 56; // int | The number of the page returned, starting with 1

try { 
    var result = api_instance.getBREVariableValues(name, filterName, size, page);
    print(result);
} catch (e) {
    print("Exception when calling Rule_Engine_VariablesApi->getBREVariableValues: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The name of the type | 
 **filterName** | **String**| Filter results by those with names starting with this string | [optional] 
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]

### Return type

[**PageResource«SimpleReferenceResource«object»»**](PageResource«SimpleReferenceResource«object»».md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

