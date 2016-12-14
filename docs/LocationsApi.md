# swagger.api.LocationsApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://devsandbox.knetikcloud.com/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**citiesUsingGET**](LocationsApi.md#citiesUsingGET) | **GET** /location/countries/{country_code_iso3}/states/{state_code}/cities | Get a list of a state&#39;s cities
[**countriesUsingGET**](LocationsApi.md#countriesUsingGET) | **GET** /location/countries | Get a list of countries
[**getCurrencyByGeoLocationUsingGET**](LocationsApi.md#getCurrencyByGeoLocationUsingGET) | **GET** /location/geolocation/currency | Get the currency information of your country
[**getGeoLocationCountryUsingGET**](LocationsApi.md#getGeoLocationCountryUsingGET) | **GET** /location/geolocation/country | Get the iso3 code of your country
[**statesUsingGET**](LocationsApi.md#statesUsingGET) | **GET** /location/countries/{country_code_iso3}/states | Get a list of a country&#39;s states


# **citiesUsingGET**
> List<CityResource> citiesUsingGET(countryCodeIso3, stateCode)

Get a list of a state's cities

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new LocationsApi();
var countryCodeIso3 = countryCodeIso3_example; // String | The iso3 code of the country
var stateCode = stateCode_example; // String | The code of the state

try { 
    var result = api_instance.citiesUsingGET(countryCodeIso3, stateCode);
    print(result);
} catch (e) {
    print("Exception when calling LocationsApi->citiesUsingGET: $e\n");
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
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **countriesUsingGET**
> List<CountryResource> countriesUsingGET()

Get a list of countries

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new LocationsApi();

try { 
    var result = api_instance.countriesUsingGET();
    print(result);
} catch (e) {
    print("Exception when calling LocationsApi->countriesUsingGET: $e\n");
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
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCurrencyByGeoLocationUsingGET**
> CurrencyResource getCurrencyByGeoLocationUsingGET()

Get the currency information of your country

Determined by geo ip location, currency to country mapping and a fallback setting

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new LocationsApi();

try { 
    var result = api_instance.getCurrencyByGeoLocationUsingGET();
    print(result);
} catch (e) {
    print("Exception when calling LocationsApi->getCurrencyByGeoLocationUsingGET: $e\n");
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
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getGeoLocationCountryUsingGET**
> String getGeoLocationCountryUsingGET()

Get the iso3 code of your country

Determined by geo ip location

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new LocationsApi();

try { 
    var result = api_instance.getGeoLocationCountryUsingGET();
    print(result);
} catch (e) {
    print("Exception when calling LocationsApi->getGeoLocationCountryUsingGET: $e\n");
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
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **statesUsingGET**
> List<StateResource> statesUsingGET(countryCodeIso3)

Get a list of a country's states

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new LocationsApi();
var countryCodeIso3 = countryCodeIso3_example; // String | The iso3 code of the country

try { 
    var result = api_instance.statesUsingGET(countryCodeIso3);
    print(result);
} catch (e) {
    print("Exception when calling LocationsApi->statesUsingGET: $e\n");
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
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

