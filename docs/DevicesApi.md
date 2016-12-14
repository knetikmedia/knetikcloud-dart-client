# swagger.api.DevicesApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://devsandbox.knetikcloud.com/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createDeviceUsingPOST**](DevicesApi.md#createDeviceUsingPOST) | **POST** /devices | Create a device
[**deleteDeviceUsingDELETE**](DevicesApi.md#deleteDeviceUsingDELETE) | **DELETE** /devices/{id} | Delete a device
[**getDeviceUsingGET**](DevicesApi.md#getDeviceUsingGET) | **GET** /devices/{id} | Get a single device
[**getDevicesUsingGET**](DevicesApi.md#getDevicesUsingGET) | **GET** /devices | List and search devices
[**updateDeviceUsingPUT**](DevicesApi.md#updateDeviceUsingPUT) | **PUT** /devices/{id} | Update a device


# **createDeviceUsingPOST**
> DeviceResource createDeviceUsingPOST(device)

Create a device

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new DevicesApi();
var device = new DeviceResource(); // DeviceResource | device

try { 
    var result = api_instance.createDeviceUsingPOST(device);
    print(result);
} catch (e) {
    print("Exception when calling DevicesApi->createDeviceUsingPOST: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **device** | [**DeviceResource**](DeviceResource.md)| device | 

### Return type

[**DeviceResource**](DeviceResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteDeviceUsingDELETE**
> deleteDeviceUsingDELETE(id)

Delete a device

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new DevicesApi();
var id = 56; // int | id

try { 
    api_instance.deleteDeviceUsingDELETE(id);
} catch (e) {
    print("Exception when calling DevicesApi->deleteDeviceUsingDELETE: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| id | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDeviceUsingGET**
> DeviceResource getDeviceUsingGET(id)

Get a single device

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new DevicesApi();
var id = 56; // int | id

try { 
    var result = api_instance.getDeviceUsingGET(id);
    print(result);
} catch (e) {
    print("Exception when calling DevicesApi->getDeviceUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| id | 

### Return type

[**DeviceResource**](DeviceResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDevicesUsingGET**
> Page«DeviceResource» getDevicesUsingGET(filterMake, filterModel, size, page, order)

List and search devices

Get a list of devices with optional filtering

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new DevicesApi();
var filterMake = filterMake_example; // String | Filter for devices with specified make
var filterModel = filterModel_example; // String | Filter for devices with specified model
var size = 56; // int | The number of objects returned per page
var page = 56; // int | The number of the page returned, starting with 1
var order = order_example; // String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]

try { 
    var result = api_instance.getDevicesUsingGET(filterMake, filterModel, size, page, order);
    print(result);
} catch (e) {
    print("Exception when calling DevicesApi->getDevicesUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterMake** | **String**| Filter for devices with specified make | [optional] 
 **filterModel** | **String**| Filter for devices with specified model | [optional] 
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **String**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to 1]

### Return type

[**Page«DeviceResource»**](Page«DeviceResource».md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateDeviceUsingPUT**
> updateDeviceUsingPUT(device, id)

Update a device

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new DevicesApi();
var device = new DeviceResource(); // DeviceResource | device
var id = 56; // int | id

try { 
    api_instance.updateDeviceUsingPUT(device, id);
} catch (e) {
    print("Exception when calling DevicesApi->updateDeviceUsingPUT: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **device** | [**DeviceResource**](DeviceResource.md)| device | 
 **id** | **int**| id | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

