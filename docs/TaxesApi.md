# swagger.api.TaxesApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://localhost:8080/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createTaxUsingPOST**](TaxesApi.md#createTaxUsingPOST) | **POST** /tax/countries/{country_code_iso3}/states | Create a tax
[**deleteTaxUsingDELETE**](TaxesApi.md#deleteTaxUsingDELETE) | **DELETE** /tax/countries/{country_code_iso3} | Delete an existing tax
[**deleteTaxUsingDELETE1**](TaxesApi.md#deleteTaxUsingDELETE1) | **DELETE** /tax/countries/{country_code_iso3}/states/{state_code} | Delete an existing tax
[**getAllTaxesUsingGET**](TaxesApi.md#getAllTaxesUsingGET) | **GET** /tax/states | List and search taxes across all countries
[**getTaxUsingGET**](TaxesApi.md#getTaxUsingGET) | **GET** /tax/countries/{country_code_iso3} | Get a single tax
[**getTaxUsingGET1**](TaxesApi.md#getTaxUsingGET1) | **GET** /tax/countries/{country_code_iso3}/states/{state_code} | Get a single tax
[**getTaxesUsingGET**](TaxesApi.md#getTaxesUsingGET) | **GET** /tax/countries | List and search taxes
[**getTaxesUsingGET1**](TaxesApi.md#getTaxesUsingGET1) | **GET** /tax/countries/{country_code_iso3}/states | List and search taxes within a country
[**updateTaxUsingPOST**](TaxesApi.md#updateTaxUsingPOST) | **POST** /tax/countries | Create a tax
[**updateTaxUsingPUT**](TaxesApi.md#updateTaxUsingPUT) | **PUT** /tax/countries/{country_code_iso3} | Create or update a tax
[**updateTaxUsingPUT1**](TaxesApi.md#updateTaxUsingPUT1) | **PUT** /tax/countries/{country_code_iso3}/states/{state_code} | Create or update a tax


# **createTaxUsingPOST**
> createTaxUsingPOST(countryCodeIso3, taxResource)

Create a tax

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new TaxesApi();
var countryCodeIso3 = countryCodeIso3_example; // String | The iso3 code of the country
var taxResource = new StateTaxResource(); // StateTaxResource | The tax object

try { 
    api_instance.createTaxUsingPOST(countryCodeIso3, taxResource);
} catch (e) {
    print("Exception when calling TaxesApi->createTaxUsingPOST: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **countryCodeIso3** | **String**| The iso3 code of the country | 
 **taxResource** | [**StateTaxResource**](StateTaxResource.md)| The tax object | [optional] 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteTaxUsingDELETE**
> deleteTaxUsingDELETE(countryCodeIso3)

Delete an existing tax

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new TaxesApi();
var countryCodeIso3 = countryCodeIso3_example; // String | The iso3 code of the country

try { 
    api_instance.deleteTaxUsingDELETE(countryCodeIso3);
} catch (e) {
    print("Exception when calling TaxesApi->deleteTaxUsingDELETE: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **countryCodeIso3** | **String**| The iso3 code of the country | 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteTaxUsingDELETE1**
> deleteTaxUsingDELETE1(countryCodeIso3, stateCode)

Delete an existing tax

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new TaxesApi();
var countryCodeIso3 = countryCodeIso3_example; // String | The iso3 code of the country
var stateCode = stateCode_example; // String | The code of the state

try { 
    api_instance.deleteTaxUsingDELETE1(countryCodeIso3, stateCode);
} catch (e) {
    print("Exception when calling TaxesApi->deleteTaxUsingDELETE1: $e\n");
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

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAllTaxesUsingGET**
> PageResource«StateTaxResource» getAllTaxesUsingGET(size, page, order)

List and search taxes across all countries

Get a list of taxes

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new TaxesApi();
var size = 56; // int | The number of objects returned per page
var page = 56; // int | The number of the page returned
var order = order_example; // String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]

try { 
    var result = api_instance.getAllTaxesUsingGET(size, page, order);
    print(result);
} catch (e) {
    print("Exception when calling TaxesApi->getAllTaxesUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned | [optional] [default to 1]
 **order** | **String**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to name:ASC]

### Return type

[**PageResource«StateTaxResource»**](PageResource«StateTaxResource».md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTaxUsingGET**
> CountryTaxResource getTaxUsingGET(countryCodeIso3)

Get a single tax

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new TaxesApi();
var countryCodeIso3 = countryCodeIso3_example; // String | The iso3 code of the country

try { 
    var result = api_instance.getTaxUsingGET(countryCodeIso3);
    print(result);
} catch (e) {
    print("Exception when calling TaxesApi->getTaxUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **countryCodeIso3** | **String**| The iso3 code of the country | 

### Return type

[**CountryTaxResource**](CountryTaxResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTaxUsingGET1**
> StateTaxResource getTaxUsingGET1(countryCodeIso3, stateCode)

Get a single tax

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new TaxesApi();
var countryCodeIso3 = countryCodeIso3_example; // String | The iso3 code of the country
var stateCode = stateCode_example; // String | The code of the state

try { 
    var result = api_instance.getTaxUsingGET1(countryCodeIso3, stateCode);
    print(result);
} catch (e) {
    print("Exception when calling TaxesApi->getTaxUsingGET1: $e\n");
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

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTaxesUsingGET**
> PageResource«CountryTaxResource» getTaxesUsingGET(size, page, order)

List and search taxes

Get a list of taxes

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new TaxesApi();
var size = 56; // int | The number of objects returned per page
var page = 56; // int | The number of the page returned
var order = order_example; // String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]

try { 
    var result = api_instance.getTaxesUsingGET(size, page, order);
    print(result);
} catch (e) {
    print("Exception when calling TaxesApi->getTaxesUsingGET: $e\n");
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

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTaxesUsingGET1**
> PageResource«StateTaxResource» getTaxesUsingGET1(countryCodeIso3, size, page, order)

List and search taxes within a country

Get a list of taxes

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new TaxesApi();
var countryCodeIso3 = countryCodeIso3_example; // String | The iso3 code of the country
var size = 56; // int | The number of objects returned per page
var page = 56; // int | The number of the page returned
var order = order_example; // String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]

try { 
    var result = api_instance.getTaxesUsingGET1(countryCodeIso3, size, page, order);
    print(result);
} catch (e) {
    print("Exception when calling TaxesApi->getTaxesUsingGET1: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **countryCodeIso3** | **String**| The iso3 code of the country | 
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned | [optional] [default to 1]
 **order** | **String**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to name:ASC]

### Return type

[**PageResource«StateTaxResource»**](PageResource«StateTaxResource».md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateTaxUsingPOST**
> updateTaxUsingPOST(taxResource)

Create a tax

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new TaxesApi();
var taxResource = new CountryTaxResource(); // CountryTaxResource | The tax object

try { 
    api_instance.updateTaxUsingPOST(taxResource);
} catch (e) {
    print("Exception when calling TaxesApi->updateTaxUsingPOST: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **taxResource** | [**CountryTaxResource**](CountryTaxResource.md)| The tax object | [optional] 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateTaxUsingPUT**
> updateTaxUsingPUT(countryCodeIso3, taxResource)

Create or update a tax

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new TaxesApi();
var countryCodeIso3 = countryCodeIso3_example; // String | The iso3 code of the country
var taxResource = new CountryTaxResource(); // CountryTaxResource | The tax object

try { 
    api_instance.updateTaxUsingPUT(countryCodeIso3, taxResource);
} catch (e) {
    print("Exception when calling TaxesApi->updateTaxUsingPUT: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **countryCodeIso3** | **String**| The iso3 code of the country | 
 **taxResource** | [**CountryTaxResource**](CountryTaxResource.md)| The tax object | [optional] 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateTaxUsingPUT1**
> updateTaxUsingPUT1(countryCodeIso3, stateCode, taxResource)

Create or update a tax

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new TaxesApi();
var countryCodeIso3 = countryCodeIso3_example; // String | The iso3 code of the country
var stateCode = stateCode_example; // String | The code of the state
var taxResource = new StateTaxResource(); // StateTaxResource | The tax object

try { 
    api_instance.updateTaxUsingPUT1(countryCodeIso3, stateCode, taxResource);
} catch (e) {
    print("Exception when calling TaxesApi->updateTaxUsingPUT1: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **countryCodeIso3** | **String**| The iso3 code of the country | 
 **stateCode** | **String**| The code of the state | 
 **taxResource** | [**StateTaxResource**](StateTaxResource.md)| The tax object | [optional] 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

