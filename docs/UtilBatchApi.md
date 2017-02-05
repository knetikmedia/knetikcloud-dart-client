# swagger.api.UtilBatchApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://integration.knetikcloud.com/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getBatchPOSTUsingPOST**](UtilBatchApi.md#getBatchPOSTUsingPOST) | **POST** /batch | Request to run API call given the method, content type, path url, and body of request


# **getBatchPOSTUsingPOST**
> getBatchPOSTUsingPOST(batch)

Request to run API call given the method, content type, path url, and body of request

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new UtilBatchApi();
var batch = new Batch(); // Batch | The batch object

try { 
    api_instance.getBatchPOSTUsingPOST(batch);
} catch (e) {
    print("Exception when calling UtilBatchApi->getBatchPOSTUsingPOST: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **batch** | [**Batch**](Batch.md)| The batch object | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

