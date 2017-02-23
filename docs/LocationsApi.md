# swagger.api.LocationsApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://sandbox.knetikcloud.com/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getCountries**](LocationsApi.md#getCountries) | **GET** /location/countries | Get a list of countries
[**getCountryByGeoLocation**](LocationsApi.md#getCountryByGeoLocation) | **GET** /location/geolocation/country | Get the iso3 code of your country
[**getCountryStates**](LocationsApi.md#getCountryStates) | **GET** /location/countries/{country_code_iso3}/states | Get a list of a country&#39;s states
[**getCurrencyByGeoLocation**](LocationsApi.md#getCurrencyByGeoLocation) | **GET** /location/geolocation/currency | Get the currency information of your country


# **getCountries**
> List<CountryResource> getCountries()

Get a list of countries

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new LocationsApi();

try { 
    var result = api_instance.getCountries();
    print(result);
} catch (e) {
    print("Exception when calling LocationsApi->getCountries: $e\n");
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

# **getCountryStates**
> List<StateResource> getCountryStates(countryCodeIso3)

Get a list of a country's states

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new LocationsApi();
var countryCodeIso3 = countryCodeIso3_example; // String | The iso3 code of the country

try { 
    var result = api_instance.getCountryStates(countryCodeIso3);
    print(result);
} catch (e) {
    print("Exception when calling LocationsApi->getCountryStates: $e\n");
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

