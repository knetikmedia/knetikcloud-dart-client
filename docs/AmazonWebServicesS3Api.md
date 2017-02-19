# swagger.api.AmazonWebServicesS3Api

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://localhost:8080/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getSignedS3URL**](AmazonWebServicesS3Api.md#getSignedS3URL) | **GET** /amazon/s3/signedposturl | Get a signed S3 URL


# **getSignedS3URL**
> AmazonS3Activity getSignedS3URL(filename, contentType)

Get a signed S3 URL

Requires the file name and file content type (i.e., 'video/mpeg')

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new AmazonWebServicesS3Api();
var filename = filename_example; // String | The file name
var contentType = contentType_example; // String | The content type

try { 
    var result = api_instance.getSignedS3URL(filename, contentType);
    print(result);
} catch (e) {
    print("Exception when calling AmazonWebServicesS3Api->getSignedS3URL: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filename** | **String**| The file name | [optional] 
 **contentType** | **String**| The content type | [optional] 

### Return type

[**AmazonS3Activity**](AmazonS3Activity.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

