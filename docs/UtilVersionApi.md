# swagger.api.UtilVersionApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://sandbox.knetikcloud.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getVersion**](UtilVersionApi.md#getVersion) | **GET** /version | Get current version info


# **getVersion**
> Version getVersion()

Get current version info

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new UtilVersionApi();

try { 
    var result = api_instance.getVersion();
    print(result);
} catch (e) {
    print("Exception when calling UtilVersionApi->getVersion: $e\n");
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
