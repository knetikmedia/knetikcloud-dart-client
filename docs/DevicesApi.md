# swagger.api.DevicesApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://jsapi-integration.us-east-1.elasticbeanstalk.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addDeviceUsers**](DevicesApi.md#addDeviceUsers) | **POST** /devices/{id}/users | Add device users
[**createDevice**](DevicesApi.md#createDevice) | **POST** /devices | Create a device
[**createDeviceTemplate**](DevicesApi.md#createDeviceTemplate) | **POST** /devices/templates | Create a device template
[**deleteDevice**](DevicesApi.md#deleteDevice) | **DELETE** /devices/{id} | Delete a device
[**deleteDeviceTemplate**](DevicesApi.md#deleteDeviceTemplate) | **DELETE** /devices/templates/{id} | Delete an device template
[**deleteDeviceUser**](DevicesApi.md#deleteDeviceUser) | **DELETE** /devices/{id}/users/{user_id} | Delete a device user
[**deleteDeviceUsers**](DevicesApi.md#deleteDeviceUsers) | **DELETE** /devices/{id}/users | Delete all device users
[**getDevice**](DevicesApi.md#getDevice) | **GET** /devices/{id} | Get a single device
[**getDeviceTemplate**](DevicesApi.md#getDeviceTemplate) | **GET** /devices/templates/{id} | Get a single device template
[**getDeviceTemplates**](DevicesApi.md#getDeviceTemplates) | **GET** /devices/templates | List and search device templates
[**getDevices**](DevicesApi.md#getDevices) | **GET** /devices | List and search devices
[**updateDevice**](DevicesApi.md#updateDevice) | **PUT** /devices/{id} | Update a device
[**updateDeviceTemplate**](DevicesApi.md#updateDeviceTemplate) | **PUT** /devices/templates/{id} | Update an device template


# **addDeviceUsers**
> DeviceResource addDeviceUsers(userResources, id)

Add device users

<b>Permissions Needed:</b> DEVICES_ADMIN or owner

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new DevicesApi();
var userResources = [new List&lt;SimpleUserResource&gt;()]; // List<SimpleUserResource> | userResources
var id = id_example; // String | id

try { 
    var result = api_instance.addDeviceUsers(userResources, id);
    print(result);
} catch (e) {
    print("Exception when calling DevicesApi->addDeviceUsers: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userResources** | [**List&lt;SimpleUserResource&gt;**](SimpleUserResource.md)| userResources | 
 **id** | **String**| id | 

### Return type

[**DeviceResource**](DeviceResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createDevice**
> DeviceResource createDevice(device)

Create a device

<b>Permissions Needed:</b> ANY

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new DevicesApi();
var device = new DeviceResource(); // DeviceResource | device

try { 
    var result = api_instance.createDevice(device);
    print(result);
} catch (e) {
    print("Exception when calling DevicesApi->createDevice: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **device** | [**DeviceResource**](DeviceResource.md)| device | 

### Return type

[**DeviceResource**](DeviceResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createDeviceTemplate**
> TemplateResource createDeviceTemplate(deviceTemplateResource)

Create a device template

Device Templates define a type of device and the properties they have. <br><br><b>Permissions Needed:</b> TEMPLATE_ADMIN

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new DevicesApi();
var deviceTemplateResource = new TemplateResource(); // TemplateResource | The device template resource object

try { 
    var result = api_instance.createDeviceTemplate(deviceTemplateResource);
    print(result);
} catch (e) {
    print("Exception when calling DevicesApi->createDeviceTemplate: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **deviceTemplateResource** | [**TemplateResource**](TemplateResource.md)| The device template resource object | [optional] 

### Return type

[**TemplateResource**](TemplateResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteDevice**
> deleteDevice(id)

Delete a device

<b>Permissions Needed:</b> DEVICES_ADMIN or owner

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new DevicesApi();
var id = id_example; // String | id

try { 
    api_instance.deleteDevice(id);
} catch (e) {
    print("Exception when calling DevicesApi->deleteDevice: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| id | 

### Return type

void (empty response body)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteDeviceTemplate**
> deleteDeviceTemplate(id, cascade)

Delete an device template

If cascade = 'detach', it will force delete the template even if it's attached to other objects. <br><br><b>Permissions Needed:</b> TEMPLATE_ADMIN

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new DevicesApi();
var id = id_example; // String | The id of the template
var cascade = cascade_example; // String | The value needed to delete used templates

try { 
    api_instance.deleteDeviceTemplate(id, cascade);
} catch (e) {
    print("Exception when calling DevicesApi->deleteDeviceTemplate: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the template | 
 **cascade** | **String**| The value needed to delete used templates | [optional] 

### Return type

void (empty response body)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteDeviceUser**
> deleteDeviceUser(id, userId)

Delete a device user

<b>Permissions Needed:</b> DEVICES_ADMIN or owner

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new DevicesApi();
var id = id_example; // String | The id of the device
var userId = 56; // int | The user id of the device user

try { 
    api_instance.deleteDeviceUser(id, userId);
} catch (e) {
    print("Exception when calling DevicesApi->deleteDeviceUser: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the device | 
 **userId** | **int**| The user id of the device user | 

### Return type

void (empty response body)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteDeviceUsers**
> deleteDeviceUsers(id, filterId)

Delete all device users

<b>Permissions Needed:</b> DEVICES_ADMIN or owner

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new DevicesApi();
var id = id_example; // String | The id of the device
var filterId = filterId_example; // String | Filter for device users to delete with a user id in a given comma separated list of ids

try { 
    api_instance.deleteDeviceUsers(id, filterId);
} catch (e) {
    print("Exception when calling DevicesApi->deleteDeviceUsers: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the device | 
 **filterId** | **String**| Filter for device users to delete with a user id in a given comma separated list of ids | [optional] 

### Return type

void (empty response body)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDevice**
> DeviceResource getDevice(id)

Get a single device

<b>Permissions Needed:</b> DEVICES_ADMIN or owner

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new DevicesApi();
var id = id_example; // String | id

try { 
    var result = api_instance.getDevice(id);
    print(result);
} catch (e) {
    print("Exception when calling DevicesApi->getDevice: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| id | 

### Return type

[**DeviceResource**](DeviceResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDeviceTemplate**
> TemplateResource getDeviceTemplate(id)

Get a single device template

<b>Permissions Needed:</b> description

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new DevicesApi();
var id = id_example; // String | The id of the template

try { 
    var result = api_instance.getDeviceTemplate(id);
    print(result);
} catch (e) {
    print("Exception when calling DevicesApi->getDeviceTemplate: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the template | 

### Return type

[**TemplateResource**](TemplateResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDeviceTemplates**
> PageResource«TemplateResource» getDeviceTemplates(size, page, order)

List and search device templates

<b>Permissions Needed:</b> TEMPLATE_ADMIN or DEVICES_ADMIN

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new DevicesApi();
var size = 56; // int | The number of objects returned per page
var page = 56; // int | The number of the page returned, starting with 1
var order = order_example; // String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]

try { 
    var result = api_instance.getDeviceTemplates(size, page, order);
    print(result);
} catch (e) {
    print("Exception when calling DevicesApi->getDeviceTemplates: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **String**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to id:ASC]

### Return type

[**PageResource«TemplateResource»**](PageResource«TemplateResource».md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDevices**
> PageResource«DeviceResource» getDevices(filterMake, filterModel, filterOs, filterSerial, filterType, filterTag, size, page, order)

List and search devices

Get a list of devices with optional filtering. <br><br><b>Permissions Needed:</b> DEVICES_ADMIN or user

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new DevicesApi();
var filterMake = filterMake_example; // String | Filter for devices with specified make
var filterModel = filterModel_example; // String | Filter for devices with specified model
var filterOs = filterOs_example; // String | Filter for devices with specified OS
var filterSerial = filterSerial_example; // String | Filter for devices with specified serial
var filterType = filterType_example; // String | Filter for devices with specified type
var filterTag = filterTag_example; // String | A comma separated list without spaces to filter for devices with specified tags (matches any)
var size = 56; // int | The number of objects returned per page
var page = 56; // int | The number of the page returned, starting with 1
var order = order_example; // String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]

try { 
    var result = api_instance.getDevices(filterMake, filterModel, filterOs, filterSerial, filterType, filterTag, size, page, order);
    print(result);
} catch (e) {
    print("Exception when calling DevicesApi->getDevices: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterMake** | **String**| Filter for devices with specified make | [optional] 
 **filterModel** | **String**| Filter for devices with specified model | [optional] 
 **filterOs** | **String**| Filter for devices with specified OS | [optional] 
 **filterSerial** | **String**| Filter for devices with specified serial | [optional] 
 **filterType** | **String**| Filter for devices with specified type | [optional] 
 **filterTag** | **String**| A comma separated list without spaces to filter for devices with specified tags (matches any) | [optional] 
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **String**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to id:ASC]

### Return type

[**PageResource«DeviceResource»**](PageResource«DeviceResource».md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateDevice**
> DeviceResource updateDevice(device, id)

Update a device

<b>Permissions Needed:</b> CUSTOMERS_ADMIN

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new DevicesApi();
var device = new DeviceResource(); // DeviceResource | device
var id = id_example; // String | id

try { 
    var result = api_instance.updateDevice(device, id);
    print(result);
} catch (e) {
    print("Exception when calling DevicesApi->updateDevice: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **device** | [**DeviceResource**](DeviceResource.md)| device | 
 **id** | **String**| id | 

### Return type

[**DeviceResource**](DeviceResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateDeviceTemplate**
> TemplateResource updateDeviceTemplate(id, deviceTemplateResource)

Update an device template

<b>Permissions Needed:</b> TEMPLATE_ADMIN

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new DevicesApi();
var id = id_example; // String | The id of the template
var deviceTemplateResource = new TemplateResource(); // TemplateResource | The device template resource object

try { 
    var result = api_instance.updateDeviceTemplate(id, deviceTemplateResource);
    print(result);
} catch (e) {
    print("Exception when calling DevicesApi->updateDeviceTemplate: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the template | 
 **deviceTemplateResource** | [**TemplateResource**](TemplateResource.md)| The device template resource object | [optional] 

### Return type

[**TemplateResource**](TemplateResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

