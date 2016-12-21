# swagger.api.UtilMaintenanceApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://localhost:8080/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteUsingDELETE1**](UtilMaintenanceApi.md#deleteUsingDELETE1) | **DELETE** /maintenance | Remove maintenance info
[**getUsingGET1**](UtilMaintenanceApi.md#getUsingGET1) | **GET** /maintenance | Get current maintenance info
[**postUsingPOST**](UtilMaintenanceApi.md#postUsingPOST) | **POST** /maintenance | Set current maintenance info
[**postUsingPUT**](UtilMaintenanceApi.md#postUsingPUT) | **PUT** /maintenance | Set current maintenance info


# **deleteUsingDELETE1**
> deleteUsingDELETE1()

Remove maintenance info

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: knetik_oauth
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new UtilMaintenanceApi();

try { 
    api_instance.deleteUsingDELETE1();
} catch (e) {
    print("Exception when calling UtilMaintenanceApi->deleteUsingDELETE1: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUsingGET1**
> Maintenance getUsingGET1()

Get current maintenance info

Get current maintenance info. 404 if no maintenance.

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new UtilMaintenanceApi();

try { 
    var result = api_instance.getUsingGET1();
    print(result);
} catch (e) {
    print("Exception when calling UtilMaintenanceApi->getUsingGET1: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Maintenance**](Maintenance.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postUsingPOST**
> postUsingPOST(maintenance)

Set current maintenance info

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: knetik_oauth
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new UtilMaintenanceApi();
var maintenance = new Maintenance(); // Maintenance | The Maintenance Object

try { 
    api_instance.postUsingPOST(maintenance);
} catch (e) {
    print("Exception when calling UtilMaintenanceApi->postUsingPOST: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **maintenance** | [**Maintenance**](Maintenance.md)| The Maintenance Object | [optional] 

### Return type

void (empty response body)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postUsingPUT**
> postUsingPUT(maintenance)

Set current maintenance info

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: knetik_oauth
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new UtilMaintenanceApi();
var maintenance = new Maintenance(); // Maintenance | The Maintenance Object

try { 
    api_instance.postUsingPUT(maintenance);
} catch (e) {
    print("Exception when calling UtilMaintenanceApi->postUsingPUT: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **maintenance** | [**Maintenance**](Maintenance.md)| The Maintenance Object | [optional] 

### Return type

void (empty response body)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

