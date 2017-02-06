# swagger.api.LocationsApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://localhost:8080/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getCities**](LocationsApi.md#getCities) | **GET** /location/countries/{country_code_iso3}/states/{state_code}/cities | Get a list of a state&#39;s cities
[**getCountries1**](LocationsApi.md#getCountries1) | **GET** /location/countries | Get a list of countries
[**getCountries2**](LocationsApi.md#getCountries2) | **GET** /location/countries/{country_code_iso3}/states | Get a list of a country&#39;s states
[**getCountryByGeoLocation**](LocationsApi.md#getCountryByGeoLocation) | **GET** /location/geolocation/country | Get the iso3 code of your country
[**getCurrencyByGeoLocation**](LocationsApi.md#getCurrencyByGeoLocation) | **GET** /location/geolocation/currency | Get the currency information of your country


# **getCities**
> List<CityResource> getCities(countryCodeIso3, stateCode)

Get a list of a state's cities

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new LocationsApi();
var countryCodeIso3 = countryCodeIso3_example; // String | The iso3 code of the country
var stateCode = stateCode_example; // String | The code of the state

try { 
    var result = api_instance.getCities(countryCodeIso3, stateCode);
    print(result);
} catch (e) {
    print("Exception when calling LocationsApi->getCities: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **countryCodeIso3** | **String**| The iso3 code of the country | 
 **stateCode** | **String**| The code of the state | 

### Return type

[**List<CityResource>**](CityResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCountries1**
> List<CountryResource> getCountries1()

Get a list of countries

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new LocationsApi();

try { 
    var result = api_instance.getCountries1();
    print(result);
} catch (e) {
    print("Exception when calling LocationsApi->getCountries1: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<CountryResource>**](CountryResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCountries2**
> List<StateResource> getCountries2(countryCodeIso3)

Get a list of a country's states

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new LocationsApi();
var countryCodeIso3 = countryCodeIso3_example; // String | The iso3 code of the country

try { 
    var result = api_instance.getCountries2(countryCodeIso3);
    print(result);
} catch (e) {
    print("Exception when calling LocationsApi->getCountries2: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **countryCodeIso3** | **String**| The iso3 code of the country | 

### Return type

[**List<StateResource>**](StateResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCountryByGeoLocation**
> String getCountryByGeoLocation()

Get the iso3 code of your country

Determined by geo ip location

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new LocationsApi();

try { 
    var result = api_instance.getCountryByGeoLocation();
    print(result);
} catch (e) {
    print("Exception when calling LocationsApi->getCountryByGeoLocation: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCurrencyByGeoLocation**
> CurrencyResource getCurrencyByGeoLocation()

Get the currency information of your country

Determined by geo ip location, currency to country mapping and a fallback setting

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new LocationsApi();

try { 
    var result = api_instance.getCurrencyByGeoLocation();
    print(result);
} catch (e) {
    print("Exception when calling LocationsApi->getCurrencyByGeoLocation: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**CurrencyResource**](CurrencyResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

