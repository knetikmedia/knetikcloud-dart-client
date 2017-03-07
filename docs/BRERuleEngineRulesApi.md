# swagger.api.BRERuleEngineRulesApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://sandbox.knetikcloud.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createBRERule**](BRERuleEngineRulesApi.md#createBRERule) | **POST** /bre/rules | Create a rule
[**deleteBRERule**](BRERuleEngineRulesApi.md#deleteBRERule) | **DELETE** /bre/rules/{id} | Delete a rule
[**getBREExpressionAsString**](BRERuleEngineRulesApi.md#getBREExpressionAsString) | **POST** /bre/rules/expression-as-string | Returns a string representation of the provided expression
[**getBRERule**](BRERuleEngineRulesApi.md#getBRERule) | **GET** /bre/rules/{id} | Get a single rule
[**getBRERules**](BRERuleEngineRulesApi.md#getBRERules) | **GET** /bre/rules | List rules
[**setBRERule**](BRERuleEngineRulesApi.md#setBRERule) | **PUT** /bre/rules/{id}/enabled | Enable or disable a rule
[**updateBRERule**](BRERuleEngineRulesApi.md#updateBRERule) | **PUT** /bre/rules/{id} | Update a rule


# **createBRERule**
> BreRule createBRERule(breRule)

Create a rule

Rules define which actions to run when a given event verifies the specified conditions. Conditions and actions are defined by binding event or context parameters to arguments. Conditions also known as Predicates are logical expressions that result in a boolean. Operators are used to describe rules between arguments to form that condition. There are 3 families of operators: Boolean, Math and String. Math and String operators are functions that transform arguments into numbers or strings...<h1>Boolean Operators</h1><br /><br />1 arg:<br />======<br /><br /><ul> <li>IS_NULL</li> <li>IS_NOT_NULL</li> <li>STRING_IS_EMPTY</li> <li>NOT </li> <li>MAP_IS_EMPTY</li></ul><br />2 args:<br />=======<br /><br /><ul> <li>EQ</li> <li>NE (Not Equals)</li> <li>GT (Greater Than)</li> <li>GOE (Greater Or Equals)</li> <li>LT (Lesser Than)</li> <li>LOE (Lesser Or Equals)</li> <li>OR</li> <li>AND</li> <li>XNOR</li> <li>XOR</li> <li>CONTAINS_KEY (for maps only)</li> <li>CONTAINS_VALUE (for maps only)</li> <li>MATCHES (regex)</li> <li>MATCHES_IC (regex ignore case)</li> <li>STARTS_WITH</li> <li>STARTS_WITH_IC</li> <li>EQ_IGNORE_CASE</li> <li>ENDS_WITH</li> <li>ENDS_WITH_IC</li> <li>STRING_CONTAINS</li> <li>STRING_CONTAINS_IC</li> <li>LIKE (SQL like)</li></ul><br />3 args exceptions:<br />=================<br /><br /><ul> <li>BETWEEN</li></ul><br />n args:<br />=======<br /><br /><ul> <li>IN</li> <li>NOT_INT</li></ul><h1>Math Operators</h1>1 arg:<br />=====<br /><br /><ul> <li>NEGATE</li> <li>MAP_SIZE</li> <li>STRING_LENGTH</li> <li>CEIL</li> <li>ABS</li> <li>FLOOR</li> <li>ROUND</li> <li>RANDOM (no arg)</li> <li>RANDOM2 (seed arg)</li> <li>NUMCAST</li> <li>HOUR</li> <li>MINUTE</li> <li>SECOND</li> <li>MILLISECOND</li> <li>YEAR</li> <li>WEEK</li> <li>YEAR_MONTH</li> <li>YEAR_WEEK</li> <li>DAY_OF_WEEK</li> <li>DAY_OF_MONTH</li> <li>DAY_OF_YEAR</li> <li>WEEK</li> <li>WEEK</li> <li>WEEK</li></ul><br /><br />2 args:<br />======<br /><br /><ul> <li>ADD</li> <li>DIV</li> <li>MULT</li> <li>SUB</li> <li>POWER</li> <li>MOD</li> <li>LOCATE (index of (string, char))</li> <li>DIFF_YEARS</li> <li>DIFF_MONTHS</li> <li>DIFF_WEEKS</li> <li>DIFF_DAYS</li> <li>DIFF_HOURS</li> <li>DIFF_MINUTES</li> <li>DIFF_SECONDS</li></ul><br /><br />2 args:<br />======<br /><br /><ul> <li>MIN</li> <li>MAX</li></ul><h1>String Operators</h1>0 arg:<br />=====<br /><br /><ul> <li>CURRENT_TIME</li></ul><br /><br />1 arg:<br />=====<br /><br /><ul> <li>CURRENT_TIME</li> <li>LOWER</li> <li>UPPER</li> <li>TRIM</li> <li>STRING_CAST</li></ul><br /><br />2 args:<br />=====<br /><br /><ul> <li>CHAR_AT</li> <li>SUBSTR_1ARG (substr(string, start))</li> <li>CONCAT</li> <li>TRIM</li> <li>STRING_CAST</li></ul><br /><br />3 args:<br />=====<br /><br /><ul> <li>SUBSTR_2ARGS (substr(string, start, length))</li></ul>

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new BRERuleEngineRulesApi();
var breRule = new BreRule(); // BreRule | The BRE rule object

try { 
    var result = api_instance.createBRERule(breRule);
    print(result);
} catch (e) {
    print("Exception when calling BRERuleEngineRulesApi->createBRERule: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **breRule** | [**BreRule**](BreRule.md)| The BRE rule object | [optional] 

### Return type

[**BreRule**](BreRule.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteBRERule**
> deleteBRERule(id)

Delete a rule

May fail if there are existing rules against it. Cannot delete core rules

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new BRERuleEngineRulesApi();
var id = id_example; // String | The id of the rule

try { 
    api_instance.deleteBRERule(id);
} catch (e) {
    print("Exception when calling BRERuleEngineRulesApi->deleteBRERule: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the rule | 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getBREExpressionAsString**
> String getBREExpressionAsString(expression)

Returns a string representation of the provided expression

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new BRERuleEngineRulesApi();
var expression = new Expression«object»(); // Expression«object» | The expression

try { 
    var result = api_instance.getBREExpressionAsString(expression);
    print(result);
} catch (e) {
    print("Exception when calling BRERuleEngineRulesApi->getBREExpressionAsString: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **expression** | [**Expression«object»**](Expression«object».md)| The expression | [optional] 

### Return type

**String**

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getBRERule**
> BreRule getBRERule(id)

Get a single rule

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new BRERuleEngineRulesApi();
var id = id_example; // String | The id of the rule

try { 
    var result = api_instance.getBRERule(id);
    print(result);
} catch (e) {
    print("Exception when calling BRERuleEngineRulesApi->getBRERule: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the rule | 

### Return type

[**BreRule**](BreRule.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getBRERules**
> PageResource«BreRule» getBRERules(filterName, filterEnabled, filterSystem, filterTrigger, filterAction, filterCondition, size, page)

List rules

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new BRERuleEngineRulesApi();
var filterName = filterName_example; // String | Filter for rules containing the given name
var filterEnabled = true; // bool | Filter for rules by active status, null for both
var filterSystem = true; // bool | Filter for rules that are system rules when true, or not when false. Leave off for both mixed
var filterTrigger = filterTrigger_example; // String | Filter for rules that are for the trigger with the given name
var filterAction = filterAction_example; // String | Filter for rules that use the action with the given name
var filterCondition = filterCondition_example; // String | Filter for rules that have a condition containing the given string
var size = 56; // int | The number of objects returned per page
var page = 56; // int | The number of the page returned, starting with 1

try { 
    var result = api_instance.getBRERules(filterName, filterEnabled, filterSystem, filterTrigger, filterAction, filterCondition, size, page);
    print(result);
} catch (e) {
    print("Exception when calling BRERuleEngineRulesApi->getBRERules: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterName** | **String**| Filter for rules containing the given name | [optional] 
 **filterEnabled** | **bool**| Filter for rules by active status, null for both | [optional] [default to null]
 **filterSystem** | **bool**| Filter for rules that are system rules when true, or not when false. Leave off for both mixed | [optional] 
 **filterTrigger** | **String**| Filter for rules that are for the trigger with the given name | [optional] 
 **filterAction** | **String**| Filter for rules that use the action with the given name | [optional] 
 **filterCondition** | **String**| Filter for rules that have a condition containing the given string | [optional] 
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]

### Return type

[**PageResource«BreRule»**](PageResource«BreRule».md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **setBRERule**
> setBRERule(id, enabled)

Enable or disable a rule

This is helpful for turning off systems rules which cannot be deleted or modified otherwise

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new BRERuleEngineRulesApi();
var id = id_example; // String | The id of the rule
var enabled = new BooleanResource(); // BooleanResource | The boolean value

try { 
    api_instance.setBRERule(id, enabled);
} catch (e) {
    print("Exception when calling BRERuleEngineRulesApi->setBRERule: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the rule | 
 **enabled** | [**BooleanResource**](BooleanResource.md)| The boolean value | [optional] 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateBRERule**
> BreRule updateBRERule(id, breRule)

Update a rule

Cannot update system rules

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new BRERuleEngineRulesApi();
var id = id_example; // String | The id of the rule
var breRule = new BreRule(); // BreRule | The BRE rule object

try { 
    var result = api_instance.updateBRERule(id, breRule);
    print(result);
} catch (e) {
    print("Exception when calling BRERuleEngineRulesApi->updateBRERule: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the rule | 
 **breRule** | [**BreRule**](BreRule.md)| The BRE rule object | [optional] 

### Return type

[**BreRule**](BreRule.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

