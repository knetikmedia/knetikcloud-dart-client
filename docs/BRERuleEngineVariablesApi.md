# swagger.api.BRERuleEngineVariablesApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://sandbox.knetikcloud.com/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getBREVariableTypes**](BRERuleEngineVariablesApi.md#getBREVariableTypes) | **GET** /bre/variable-types | Get a list of variable types available


# **getBREVariableTypes**
> List<VariableTypeResource> getBREVariableTypes()

Get a list of variable types available

Types include integer, string, user and invoice. These are used to qualify trigger parameters and action variables with strong typing.

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new BRERuleEngineVariablesApi();

try { 
    var result = api_instance.getBREVariableTypes();
    print(result);
} catch (e) {
    print("Exception when calling BRERuleEngineVariablesApi->getBREVariableTypes: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<VariableTypeResource>**](VariableTypeResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

