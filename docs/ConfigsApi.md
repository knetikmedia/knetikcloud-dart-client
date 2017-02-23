# swagger.api.ConfigsApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://sandbox.knetikcloud.com/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createConfig**](ConfigsApi.md#createConfig) | **POST** /configs | Create a new config
[**deleteConfig**](ConfigsApi.md#deleteConfig) | **DELETE** /configs/{name} | Delete an existing config
[**getConfig**](ConfigsApi.md#getConfig) | **GET** /configs/{name} | Get a single config
[**getConfigs**](ConfigsApi.md#getConfigs) | **GET** /configs | List and search configs
[**updateConfig**](ConfigsApi.md#updateConfig) | **PUT** /configs/{name} | Update an existing config


# **createConfig**
> Config createConfig(config)

Create a new config

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new ConfigsApi();
var config = new Config(); // Config | The config object

try { 
    var result = api_instance.createConfig(config);
    print(result);
} catch (e) {
    print("Exception when calling ConfigsApi->createConfig: $e\n");
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
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteConfig**
> deleteConfig(name)

Delete an existing config

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new ConfigsApi();
var name = name_example; // String | The config name

try { 
    api_instance.deleteConfig(name);
} catch (e) {
    print("Exception when calling ConfigsApi->deleteConfig: $e\n");
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
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getConfig**
> Config getConfig(name)

Get a single config

Only configs that are public readable will be shown without admin access

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new ConfigsApi();
var name = name_example; // String | The config name

try { 
    var result = api_instance.getConfig(name);
    print(result);
} catch (e) {
    print("Exception when calling ConfigsApi->getConfig: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The config name | 

### Return type

[**Config**](Config.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getConfigs**
> PageResource«Config» getConfigs(filterSearch, size, page, order)

List and search configs

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new ConfigsApi();
var filterSearch = filterSearch_example; // String | Filter for configs whose name contains the given string
var size = 56; // int | The number of objects returned per page
var page = 56; // int | The number of the page returned
var order = order_example; // String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]

try { 
    var result = api_instance.getConfigs(filterSearch, size, page, order);
    print(result);
} catch (e) {
    print("Exception when calling ConfigsApi->getConfigs: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterSearch** | **String**| Filter for configs whose name contains the given string | [optional] 
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned | [optional] [default to 1]
 **order** | **String**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to 1]

### Return type

[**PageResource«Config»**](PageResource«Config».md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateConfig**
> updateConfig(name, config)

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
    api_instance.updateConfig(name, config);
} catch (e) {
    print("Exception when calling ConfigsApi->updateConfig: $e\n");
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
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

