# swagger.api.Templates_PropertiesApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://jsapi-integration.us-east-1.elasticbeanstalk.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getTemplatePropertyType**](Templates_PropertiesApi.md#getTemplatePropertyType) | **GET** /templates/properties/{type} | Get details for a template property type
[**getTemplatePropertyTypes**](Templates_PropertiesApi.md#getTemplatePropertyTypes) | **GET** /templates/properties | List template property types


# **getTemplatePropertyType**
> PropertyFieldListResource getTemplatePropertyType(type)

Get details for a template property type

<b>Permissions Needed:</b> ANY

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new Templates_PropertiesApi();
var type = type_example; // String | type

try { 
    var result = api_instance.getTemplatePropertyType(type);
    print(result);
} catch (e) {
    print("Exception when calling Templates_PropertiesApi->getTemplatePropertyType: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **type** | **String**| type | 

### Return type

[**PropertyFieldListResource**](PropertyFieldListResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTemplatePropertyTypes**
> List<PropertyFieldListResource> getTemplatePropertyTypes()

List template property types

<b>Permissions Needed:</b> ANY

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new Templates_PropertiesApi();

try { 
    var result = api_instance.getTemplatePropertyTypes();
    print(result);
} catch (e) {
    print("Exception when calling Templates_PropertiesApi->getTemplatePropertyTypes: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<PropertyFieldListResource>**](PropertyFieldListResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

