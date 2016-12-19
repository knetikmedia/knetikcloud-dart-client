# swagger.api.CurrenciesApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://localhost:8080/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createCurrencyUsingPOST**](CurrenciesApi.md#createCurrencyUsingPOST) | **POST** /currencies | Create a currency
[**deleteCurrencyUsingDELETE**](CurrenciesApi.md#deleteCurrencyUsingDELETE) | **DELETE** /currencies/{code} | Delete a currency
[**getCurrenciesUsingGET**](CurrenciesApi.md#getCurrenciesUsingGET) | **GET** /currencies | List and search currencies
[**getCurrencyUsingGET**](CurrenciesApi.md#getCurrencyUsingGET) | **GET** /currencies/{code} | Get a single currency
[**updateCurrencyUsingPUT**](CurrenciesApi.md#updateCurrencyUsingPUT) | **PUT** /currencies/{code} | Update a currency


# **createCurrencyUsingPOST**
> CurrencyResource createCurrencyUsingPOST(currency)

Create a currency

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new CurrenciesApi();
var currency = new CurrencyResource(); // CurrencyResource | The currency object

try { 
    var result = api_instance.createCurrencyUsingPOST(currency);
    print(result);
} catch (e) {
    print("Exception when calling CurrenciesApi->createCurrencyUsingPOST: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **currency** | [**CurrencyResource**](CurrencyResource.md)| The currency object | [optional] 

### Return type

[**CurrencyResource**](CurrencyResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteCurrencyUsingDELETE**
> deleteCurrencyUsingDELETE(code)

Delete a currency

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new CurrenciesApi();
var code = code_example; // String | The currency code

try { 
    api_instance.deleteCurrencyUsingDELETE(code);
} catch (e) {
    print("Exception when calling CurrenciesApi->deleteCurrencyUsingDELETE: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **code** | **String**| The currency code | 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCurrenciesUsingGET**
> Page«CurrencyResource» getCurrenciesUsingGET(filterEnabledCurrencies, filterType, size, page, order)

List and search currencies

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new CurrenciesApi();
var filterEnabledCurrencies = true; // bool | Filter for alternate currencies setup explicitely in system config
var filterType = filterType_example; // String | Filter currencies by type.  Allowable values: ('virtual', 'real')
var size = 56; // int | The number of objects returned per page
var page = 56; // int | The number of the page returned, starting with 1
var order = order_example; // String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]

try { 
    var result = api_instance.getCurrenciesUsingGET(filterEnabledCurrencies, filterType, size, page, order);
    print(result);
} catch (e) {
    print("Exception when calling CurrenciesApi->getCurrenciesUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterEnabledCurrencies** | **bool**| Filter for alternate currencies setup explicitely in system config | [optional] 
 **filterType** | **String**| Filter currencies by type.  Allowable values: (&#39;virtual&#39;, &#39;real&#39;) | [optional] 
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **String**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to 1]

### Return type

[**Page«CurrencyResource»**](Page«CurrencyResource».md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCurrencyUsingGET**
> CurrencyResource getCurrencyUsingGET(code)

Get a single currency

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new CurrenciesApi();
var code = code_example; // String | The currency code

try { 
    var result = api_instance.getCurrencyUsingGET(code);
    print(result);
} catch (e) {
    print("Exception when calling CurrenciesApi->getCurrencyUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **code** | **String**| The currency code | 

### Return type

[**CurrencyResource**](CurrencyResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateCurrencyUsingPUT**
> updateCurrencyUsingPUT(code, currency)

Update a currency

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new CurrenciesApi();
var code = code_example; // String | The currency code
var currency = new CurrencyResource(); // CurrencyResource | The currency object

try { 
    api_instance.updateCurrencyUsingPUT(code, currency);
} catch (e) {
    print("Exception when calling CurrenciesApi->updateCurrencyUsingPUT: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **code** | **String**| The currency code | 
 **currency** | [**CurrencyResource**](CurrencyResource.md)| The currency object | [optional] 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

