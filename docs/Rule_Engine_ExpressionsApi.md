# swagger.api.Rule_Engine_ExpressionsApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://jsapi-integration.us-east-1.elasticbeanstalk.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getBREExpression**](Rule_Engine_ExpressionsApi.md#getBREExpression) | **GET** /bre/expressions/{type} | Lookup a specific expression
[**getBREExpressions**](Rule_Engine_ExpressionsApi.md#getBREExpressions) | **GET** /bre/expressions | Get a list of supported expressions to use in conditions or actions.
[**getExpressionAsText**](Rule_Engine_ExpressionsApi.md#getExpressionAsText) | **POST** /bre/expressions | Returns the textual representation of an expression


# **getBREExpression**
> ExpressionResource getBREExpression(type)

Lookup a specific expression

<b>Permissions Needed:</b> BRE_RULE_ENGINE_EXPRESSIONS_USER

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new Rule_Engine_ExpressionsApi();
var type = type_example; // String | Specifiy the type of expression as returned by the listing endpoint

try { 
    var result = api_instance.getBREExpression(type);
    print(result);
} catch (e) {
    print("Exception when calling Rule_Engine_ExpressionsApi->getBREExpression: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **type** | **String**| Specifiy the type of expression as returned by the listing endpoint | 

### Return type

[**ExpressionResource**](ExpressionResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getBREExpressions**
> List<ExpressionResource> getBREExpressions(filterTypeGroup)

Get a list of supported expressions to use in conditions or actions.

Each resource contains a type and a definition that are read-only, all the other fields must be provided when using the expression in a rule. <br><br><b>Permissions Needed:</b> BRE_RULE_ENGINE_EXPRESSIONS_USER

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new Rule_Engine_ExpressionsApi();
var filterTypeGroup = filterTypeGroup_example; // String | Filter for expressions by type group

try { 
    var result = api_instance.getBREExpressions(filterTypeGroup);
    print(result);
} catch (e) {
    print("Exception when calling Rule_Engine_ExpressionsApi->getBREExpressions: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterTypeGroup** | **String**| Filter for expressions by type group | [optional] 

### Return type

[**List<ExpressionResource>**](ExpressionResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getExpressionAsText**
> StringWrapper getExpressionAsText(expression)

Returns the textual representation of an expression

<b>Permissions Needed:</b> BRE_RULE_ENGINE_EXPRESSIONS_USER

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new Rule_Engine_ExpressionsApi();
var expression = new ExpressionResource(); // ExpressionResource | The expression resource to be converted

try { 
    var result = api_instance.getExpressionAsText(expression);
    print(result);
} catch (e) {
    print("Exception when calling Rule_Engine_ExpressionsApi->getExpressionAsText: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **expression** | [**ExpressionResource**](ExpressionResource.md)| The expression resource to be converted | [optional] 

### Return type

[**StringWrapper**](StringWrapper.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

