# swagger.api.UtilHealthApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://devsandbox.knetikcloud.com/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getHealthInfoUsingGET**](UtilHealthApi.md#getHealthInfoUsingGET) | **GET** /health | Get health info


# **getHealthInfoUsingGET**
> Object getHealthInfoUsingGET()

Get health info

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new UtilHealthApi();

try { 
    var result = api_instance.getHealthInfoUsingGET();
    print(result);
} catch (e) {
    print("Exception when calling UtilHealthApi->getHealthInfoUsingGET: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

