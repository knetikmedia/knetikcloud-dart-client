# swagger.api.UtilMaintenanceApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://localhost:8080/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteMaintenance**](UtilMaintenanceApi.md#deleteMaintenance) | **DELETE** /maintenance | Delete maintenance info
[**getMaintenance**](UtilMaintenanceApi.md#getMaintenance) | **GET** /maintenance | Get current maintenance info
[**setMaintenance**](UtilMaintenanceApi.md#setMaintenance) | **POST** /maintenance | Set current maintenance info
[**updateMaintenance**](UtilMaintenanceApi.md#updateMaintenance) | **PUT** /maintenance | Update current maintenance info


# **deleteMaintenance**
> deleteMaintenance()

Delete maintenance info

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new UtilMaintenanceApi();

try { 
    api_instance.deleteMaintenance();
} catch (e) {
    print("Exception when calling UtilMaintenanceApi->deleteMaintenance: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getMaintenance**
> Maintenance getMaintenance()

Get current maintenance info

Get current maintenance info. 404 if no maintenance.

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new UtilMaintenanceApi();

try { 
    var result = api_instance.getMaintenance();
    print(result);
} catch (e) {
    print("Exception when calling UtilMaintenanceApi->getMaintenance: $e\n");
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

# **setMaintenance**
> setMaintenance(maintenance)

Set current maintenance info

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new UtilMaintenanceApi();
var maintenance = new Maintenance(); // Maintenance | The maintenance object

try { 
    api_instance.setMaintenance(maintenance);
} catch (e) {
    print("Exception when calling UtilMaintenanceApi->setMaintenance: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **maintenance** | [**Maintenance**](Maintenance.md)| The maintenance object | [optional] 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateMaintenance**
> updateMaintenance(maintenance)

Update current maintenance info

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new UtilMaintenanceApi();
var maintenance = new Maintenance(); // Maintenance | The maintenance object

try { 
    api_instance.updateMaintenance(maintenance);
} catch (e) {
    print("Exception when calling UtilMaintenanceApi->updateMaintenance: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **maintenance** | [**Maintenance**](Maintenance.md)| The maintenance object | [optional] 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

