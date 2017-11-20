# swagger.api.TaxesApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://sandbox.knetikcloud.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createCountryTax**](TaxesApi.md#createCountryTax) | **POST** /tax/countries | Create a country tax
[**createStateTax**](TaxesApi.md#createStateTax) | **POST** /tax/countries/{country_code_iso3}/states | Create a state tax
[**deleteCountryTax**](TaxesApi.md#deleteCountryTax) | **DELETE** /tax/countries/{country_code_iso3} | Delete an existing tax
[**deleteStateTax**](TaxesApi.md#deleteStateTax) | **DELETE** /tax/countries/{country_code_iso3}/states/{state_code} | Delete an existing state tax
[**getCountryTax**](TaxesApi.md#getCountryTax) | **GET** /tax/countries/{country_code_iso3} | Get a single tax
[**getCountryTaxes**](TaxesApi.md#getCountryTaxes) | **GET** /tax/countries | List and search taxes
[**getStateTax**](TaxesApi.md#getStateTax) | **GET** /tax/countries/{country_code_iso3}/states/{state_code} | Get a single state tax
[**getStateTaxesForCountries**](TaxesApi.md#getStateTaxesForCountries) | **GET** /tax/states | List and search taxes across all countries
[**getStateTaxesForCountry**](TaxesApi.md#getStateTaxesForCountry) | **GET** /tax/countries/{country_code_iso3}/states | List and search taxes within a country
[**updateCountryTax**](TaxesApi.md#updateCountryTax) | **PUT** /tax/countries/{country_code_iso3} | Create or update a tax
[**updateStateTax**](TaxesApi.md#updateStateTax) | **PUT** /tax/countries/{country_code_iso3}/states/{state_code} | Create or update a state tax


# **createCountryTax**
> CountryTaxResource createCountryTax(taxResource)

Create a country tax

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new TaxesApi();
var taxResource = new CountryTaxResource(); // CountryTaxResource | The tax object

try { 
    var result = api_instance.createCountryTax(taxResource);
    print(result);
} catch (e) {
    print("Exception when calling TaxesApi->createCountryTax: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **taxResource** | [**CountryTaxResource**](CountryTaxResource.md)| The tax object | [optional] 

### Return type

[**CountryTaxResource**](CountryTaxResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createStateTax**
> StateTaxResource createStateTax(countryCodeIso3, taxResource)

Create a state tax

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new TaxesApi();
var countryCodeIso3 = countryCodeIso3_example; // String | The iso3 code of the country
var taxResource = new StateTaxResource(); // StateTaxResource | The tax object

try { 
    var result = api_instance.createStateTax(countryCodeIso3, taxResource);
    print(result);
} catch (e) {
    print("Exception when calling TaxesApi->createStateTax: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **countryCodeIso3** | **String**| The iso3 code of the country | 
 **taxResource** | [**StateTaxResource**](StateTaxResource.md)| The tax object | [optional] 

### Return type

[**StateTaxResource**](StateTaxResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteCountryTax**
> deleteCountryTax(countryCodeIso3)

Delete an existing tax

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new TaxesApi();
var countryCodeIso3 = countryCodeIso3_example; // String | The iso3 code of the country

try { 
    api_instance.deleteCountryTax(countryCodeIso3);
} catch (e) {
    print("Exception when calling TaxesApi->deleteCountryTax: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **countryCodeIso3** | **String**| The iso3 code of the country | 

### Return type

void (empty response body)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteStateTax**
> deleteStateTax(countryCodeIso3, stateCode)

Delete an existing state tax

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new TaxesApi();
var countryCodeIso3 = countryCodeIso3_example; // String | The iso3 code of the country
var stateCode = stateCode_example; // String | The code of the state

try { 
    api_instance.deleteStateTax(countryCodeIso3, stateCode);
} catch (e) {
    print("Exception when calling TaxesApi->deleteStateTax: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **countryCodeIso3** | **String**| The iso3 code of the country | 
 **stateCode** | **String**| The code of the state | 

### Return type

void (empty response body)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCountryTax**
> CountryTaxResource getCountryTax(countryCodeIso3)

Get a single tax

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new TaxesApi();
var countryCodeIso3 = countryCodeIso3_example; // String | The iso3 code of the country

try { 
    var result = api_instance.getCountryTax(countryCodeIso3);
    print(result);
} catch (e) {
    print("Exception when calling TaxesApi->getCountryTax: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **countryCodeIso3** | **String**| The iso3 code of the country | 

### Return type

[**CountryTaxResource**](CountryTaxResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCountryTaxes**
> PageResource«CountryTaxResource» getCountryTaxes(size, page, order)

List and search taxes

Get a list of taxes

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new TaxesApi();
var size = 56; // int | The number of objects returned per page
var page = 56; // int | The number of the page returned
var order = order_example; // String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]

try { 
    var result = api_instance.getCountryTaxes(size, page, order);
    print(result);
} catch (e) {
    print("Exception when calling TaxesApi->getCountryTaxes: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned | [optional] [default to 1]
 **order** | **String**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to name:ASC]

### Return type

[**PageResource«CountryTaxResource»**](PageResource«CountryTaxResource».md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getStateTax**
> StateTaxResource getStateTax(countryCodeIso3, stateCode)

Get a single state tax

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new TaxesApi();
var countryCodeIso3 = countryCodeIso3_example; // String | The iso3 code of the country
var stateCode = stateCode_example; // String | The code of the state

try { 
    var result = api_instance.getStateTax(countryCodeIso3, stateCode);
    print(result);
} catch (e) {
    print("Exception when calling TaxesApi->getStateTax: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **countryCodeIso3** | **String**| The iso3 code of the country | 
 **stateCode** | **String**| The code of the state | 

### Return type

[**StateTaxResource**](StateTaxResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getStateTaxesForCountries**
> PageResource«StateTaxResource» getStateTaxesForCountries(size, page, order)

List and search taxes across all countries

Get a list of taxes

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new TaxesApi();
var size = 56; // int | The number of objects returned per page
var page = 56; // int | The number of the page returned
var order = order_example; // String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]

try { 
    var result = api_instance.getStateTaxesForCountries(size, page, order);
    print(result);
} catch (e) {
    print("Exception when calling TaxesApi->getStateTaxesForCountries: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned | [optional] [default to 1]
 **order** | **String**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] 

### Return type

[**PageResource«StateTaxResource»**](PageResource«StateTaxResource».md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getStateTaxesForCountry**
> PageResource«StateTaxResource» getStateTaxesForCountry(countryCodeIso3, size, page, order)

List and search taxes within a country

Get a list of taxes

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new TaxesApi();
var countryCodeIso3 = countryCodeIso3_example; // String | The iso3 code of the country
var size = 56; // int | The number of objects returned per page
var page = 56; // int | The number of the page returned
var order = order_example; // String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]

try { 
    var result = api_instance.getStateTaxesForCountry(countryCodeIso3, size, page, order);
    print(result);
} catch (e) {
    print("Exception when calling TaxesApi->getStateTaxesForCountry: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **countryCodeIso3** | **String**| The iso3 code of the country | 
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned | [optional] [default to 1]
 **order** | **String**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] 

### Return type

[**PageResource«StateTaxResource»**](PageResource«StateTaxResource».md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateCountryTax**
> CountryTaxResource updateCountryTax(countryCodeIso3, taxResource)

Create or update a tax

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new TaxesApi();
var countryCodeIso3 = countryCodeIso3_example; // String | The iso3 code of the country
var taxResource = new CountryTaxResource(); // CountryTaxResource | The tax object

try { 
    var result = api_instance.updateCountryTax(countryCodeIso3, taxResource);
    print(result);
} catch (e) {
    print("Exception when calling TaxesApi->updateCountryTax: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **countryCodeIso3** | **String**| The iso3 code of the country | 
 **taxResource** | [**CountryTaxResource**](CountryTaxResource.md)| The tax object | [optional] 

### Return type

[**CountryTaxResource**](CountryTaxResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateStateTax**
> StateTaxResource updateStateTax(countryCodeIso3, stateCode, taxResource)

Create or update a state tax

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new TaxesApi();
var countryCodeIso3 = countryCodeIso3_example; // String | The iso3 code of the country
var stateCode = stateCode_example; // String | The code of the state
var taxResource = new StateTaxResource(); // StateTaxResource | The tax object

try { 
    var result = api_instance.updateStateTax(countryCodeIso3, stateCode, taxResource);
    print(result);
} catch (e) {
    print("Exception when calling TaxesApi->updateStateTax: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **countryCodeIso3** | **String**| The iso3 code of the country | 
 **stateCode** | **String**| The code of the state | 
 **taxResource** | [**StateTaxResource**](StateTaxResource.md)| The tax object | [optional] 

### Return type

[**StateTaxResource**](StateTaxResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

