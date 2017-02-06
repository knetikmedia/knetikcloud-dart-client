# swagger.api.CurrenciesApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://localhost:8080/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createCurrency**](CurrenciesApi.md#createCurrency) | **POST** /currencies | Create a currency
[**deleteCurrency**](CurrenciesApi.md#deleteCurrency) | **DELETE** /currencies/{code} | Delete a currency
[**getCurrencies**](CurrenciesApi.md#getCurrencies) | **GET** /currencies | List and search currencies
[**getCurrency**](CurrenciesApi.md#getCurrency) | **GET** /currencies/{code} | Get a single currency
[**updateCurrency**](CurrenciesApi.md#updateCurrency) | **PUT** /currencies/{code} | Update a currency


# **createCurrency**
> CurrencyResource createCurrency(currency)

Create a currency

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: knetik_oauth
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new CurrenciesApi();
var currency = new CurrencyResource(); // CurrencyResource | The currency object

try { 
    var result = api_instance.createCurrency(currency);
    print(result);
} catch (e) {
    print("Exception when calling CurrenciesApi->createCurrency: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **currency** | [**CurrencyResource**](CurrencyResource.md)| The currency object | [optional] 

### Return type

[**CurrencyResource**](CurrencyResource.md)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteCurrency**
> deleteCurrency(code)

Delete a currency

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: knetik_oauth
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new CurrenciesApi();
var code = code_example; // String | The currency code

try { 
    api_instance.deleteCurrency(code);
} catch (e) {
    print("Exception when calling CurrenciesApi->deleteCurrency: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **code** | **String**| The currency code | 

### Return type

void (empty response body)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCurrencies**
> PageResource«CurrencyResource» getCurrencies(filterEnabledCurrencies, filterType, size, page, order)

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
    var result = api_instance.getCurrencies(filterEnabledCurrencies, filterType, size, page, order);
    print(result);
} catch (e) {
    print("Exception when calling CurrenciesApi->getCurrencies: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterEnabledCurrencies** | **bool**| Filter for alternate currencies setup explicitely in system config | [optional] 
 **filterType** | **String**| Filter currencies by type.  Allowable values: (&#39;virtual&#39;, &#39;real&#39;) | [optional] 
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **String**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to name:ASC]

### Return type

[**PageResource«CurrencyResource»**](PageResource«CurrencyResource».md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCurrency**
> CurrencyResource getCurrency(code)

Get a single currency

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new CurrenciesApi();
var code = code_example; // String | The currency code

try { 
    var result = api_instance.getCurrency(code);
    print(result);
} catch (e) {
    print("Exception when calling CurrenciesApi->getCurrency: $e\n");
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
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateCurrency**
> updateCurrency(code, currency)

Update a currency

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: knetik_oauth
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new CurrenciesApi();
var code = code_example; // String | The currency code
var currency = new CurrencyResource(); // CurrencyResource | The currency object

try { 
    api_instance.updateCurrency(code, currency);
} catch (e) {
    print("Exception when calling CurrenciesApi->updateCurrency: $e\n");
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

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

