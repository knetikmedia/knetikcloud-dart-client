# swagger.api.Util_MaintenanceApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://jsapi-integration.us-east-1.elasticbeanstalk.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteMaintenance**](Util_MaintenanceApi.md#deleteMaintenance) | **DELETE** /maintenance | Delete maintenance info
[**getMaintenance**](Util_MaintenanceApi.md#getMaintenance) | **GET** /maintenance | Get current maintenance info
[**setMaintenance**](Util_MaintenanceApi.md#setMaintenance) | **POST** /maintenance | Set current maintenance info
[**updateMaintenance**](Util_MaintenanceApi.md#updateMaintenance) | **PUT** /maintenance | Update current maintenance info


# **deleteMaintenance**
> deleteMaintenance()

Delete maintenance info

<b>Permissions Needed:</b> MAINTENANCE_ADMIN

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new Util_MaintenanceApi();

try { 
    api_instance.deleteMaintenance();
} catch (e) {
    print("Exception when calling Util_MaintenanceApi->deleteMaintenance: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getMaintenance**
> Maintenance getMaintenance()

Get current maintenance info

Get current maintenance info. 404 if no maintenance. <br><br><b>Permissions Needed:</b> ANY

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new Util_MaintenanceApi();

try { 
    var result = api_instance.getMaintenance();
    print(result);
} catch (e) {
    print("Exception when calling Util_MaintenanceApi->getMaintenance: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Maintenance**](Maintenance.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **setMaintenance**
> setMaintenance(maintenance)

Set current maintenance info

<b>Permissions Needed:</b> MAINTENANCE_ADMIN

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new Util_MaintenanceApi();
var maintenance = new Maintenance(); // Maintenance | The maintenance object

try { 
    api_instance.setMaintenance(maintenance);
} catch (e) {
    print("Exception when calling Util_MaintenanceApi->setMaintenance: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **maintenance** | [**Maintenance**](Maintenance.md)| The maintenance object | [optional] 

### Return type

void (empty response body)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateMaintenance**
> updateMaintenance(maintenance)

Update current maintenance info

<b>Permissions Needed:</b> MAINTENANCE_ADMIN

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new Util_MaintenanceApi();
var maintenance = new Maintenance(); // Maintenance | The maintenance object

try { 
    api_instance.updateMaintenance(maintenance);
} catch (e) {
    print("Exception when calling Util_MaintenanceApi->updateMaintenance: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **maintenance** | [**Maintenance**](Maintenance.md)| The maintenance object | [optional] 

### Return type

void (empty response body)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

