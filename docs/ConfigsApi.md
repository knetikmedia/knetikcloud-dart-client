# swagger.api.ConfigsApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://localhost:8080/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createConfigUsingPOST**](ConfigsApi.md#createConfigUsingPOST) | **POST** /configs | Create a new config
[**deleteConfigUsingDELETE**](ConfigsApi.md#deleteConfigUsingDELETE) | **DELETE** /configs/{name} | Delete an existing config
[**getConfigUsingGET**](ConfigsApi.md#getConfigUsingGET) | **GET** /configs/{name} | Get a single config
[**getConfigsUsingGET**](ConfigsApi.md#getConfigsUsingGET) | **GET** /configs | List and search configs
[**updateConfigUsingPUT**](ConfigsApi.md#updateConfigUsingPUT) | **PUT** /configs/{name} | Update an existing config


# **createConfigUsingPOST**
> Config createConfigUsingPOST(config)

Create a new config

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new ConfigsApi();
var config = new Config(); // Config | The config object

try { 
    var result = api_instance.createConfigUsingPOST(config);
    print(result);
} catch (e) {
    print("Exception when calling ConfigsApi->createConfigUsingPOST: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **config** | [**Config**](Config.md)| The config object | [optional] 

### Return type

[**Config**](Config.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteConfigUsingDELETE**
> deleteConfigUsingDELETE(name)

Delete an existing config

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new ConfigsApi();
var name = name_example; // String | The config name

try { 
    api_instance.deleteConfigUsingDELETE(name);
} catch (e) {
    print("Exception when calling ConfigsApi->deleteConfigUsingDELETE: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The config name | 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getConfigUsingGET**
> Config getConfigUsingGET(name)

Get a single config

Only configs that are public readable will be shown without admin access

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new ConfigsApi();
var name = name_example; // String | The config name

try { 
    var result = api_instance.getConfigUsingGET(name);
    print(result);
} catch (e) {
    print("Exception when calling ConfigsApi->getConfigUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The config name | 

### Return type

[**Config**](Config.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getConfigsUsingGET**
> Page«Config» getConfigsUsingGET(filterSearch, size, page, order)

List and search configs

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new ConfigsApi();
var filterSearch = filterSearch_example; // String | Filter for configs whose name contains the given string
var size = 56; // int | The number of objects returned per page
var page = 56; // int | The number of the page returned
var order = order_example; // String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]

try { 
    var result = api_instance.getConfigsUsingGET(filterSearch, size, page, order);
    print(result);
} catch (e) {
    print("Exception when calling ConfigsApi->getConfigsUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterSearch** | **String**| Filter for configs whose name contains the given string | [optional] 
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned | [optional] [default to 1]
 **order** | **String**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to id:ASC]

### Return type

[**Page«Config»**](Page«Config».md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateConfigUsingPUT**
> updateConfigUsingPUT(name, config)

Update an existing config

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new ConfigsApi();
var name = name_example; // String | The config name
var config = new Config(); // Config | The config object

try { 
    api_instance.updateConfigUsingPUT(name, config);
} catch (e) {
    print("Exception when calling ConfigsApi->updateConfigUsingPUT: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The config name | 
 **config** | [**Config**](Config.md)| The config object | [optional] 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

