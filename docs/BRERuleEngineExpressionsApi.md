# swagger.api.BRERuleEngineExpressionsApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://sandbox.knetikcloud.com/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getBREExpressions**](BRERuleEngineExpressionsApi.md#getBREExpressions) | **GET** /bre/expressions/lookup | Get a list of &#39;lookup&#39; type expressions


# **getBREExpressions**
> List<LookupTypeResource> getBREExpressions()

Get a list of 'lookup' type expressions

These are expression types that take a second expression as input and produce a value. These can be used in addition to the standard types, like parameter, global and constant (see BRE documentation for details).

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new BRERuleEngineExpressionsApi();

try { 
    var result = api_instance.getBREExpressions();
    print(result);
} catch (e) {
    print("Exception when calling BRERuleEngineExpressionsApi->getBREExpressions: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<LookupTypeResource>**](LookupTypeResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

