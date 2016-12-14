# swagger.api.BRERuleEngineVariablesApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://devsandbox.knetikcloud.com/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getListUsingGET**](BRERuleEngineVariablesApi.md#getListUsingGET) | **GET** /bre/variable-types | Get a list of variable types available


# **getListUsingGET**
> List<VariableTypeResource> getListUsingGET()

Get a list of variable types available

Types include integer, string, user and invoice. These are used to qualify trigger parameters and action variables with strong typing.

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new BRERuleEngineVariablesApi();

try { 
    var result = api_instance.getListUsingGET();
    print(result);
} catch (e) {
    print("Exception when calling BRERuleEngineVariablesApi->getListUsingGET: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<VariableTypeResource>**](VariableTypeResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

