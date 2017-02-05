# swagger.api.UtilVersionApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://integration.knetikcloud.com/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getUsingGET3**](UtilVersionApi.md#getUsingGET3) | **GET** /version | Get current version info


# **getUsingGET3**
> Version getUsingGET3()

Get current version info

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new UtilVersionApi();

try { 
    var result = api_instance.getUsingGET3();
    print(result);
} catch (e) {
    print("Exception when calling UtilVersionApi->getUsingGET3: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Version**](Version.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

