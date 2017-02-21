# swagger.api.UtilBatchApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://localhost:8080/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**sendBatch**](UtilBatchApi.md#sendBatch) | **POST** /batch | Request to run API call given the method, content type, path url, and body of request


# **sendBatch**
> List<BatchReturn> sendBatch(batch)

Request to run API call given the method, content type, path url, and body of request

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new UtilBatchApi();
var batch = new Batch(); // Batch | The batch object

try { 
    var result = api_instance.sendBatch(batch);
    print(result);
} catch (e) {
    print("Exception when calling UtilBatchApi->sendBatch: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **batch** | [**Batch**](Batch.md)| The batch object | [optional] 

### Return type

[**List<BatchReturn>**](BatchReturn.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

