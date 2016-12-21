# swagger.api.BRERuleEngineExpressionsApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://localhost:8080/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getLookupTypesUsingGET**](BRERuleEngineExpressionsApi.md#getLookupTypesUsingGET) | **GET** /bre/expressions/lookup | Get a list of &#39;lookup&#39; type expressions


# **getLookupTypesUsingGET**
> List<LookupTypeResource> getLookupTypesUsingGET()

Get a list of 'lookup' type expressions

These are expression types that take a second expression as input and produce a value. These can be used in addition to the standard types, like parameter, global and constant (see BRE documentation for details).

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: knetik_oauth
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new BRERuleEngineExpressionsApi();

try { 
    var result = api_instance.getLookupTypesUsingGET();
    print(result);
} catch (e) {
    print("Exception when calling BRERuleEngineExpressionsApi->getLookupTypesUsingGET: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<LookupTypeResource>**](LookupTypeResource.md)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

