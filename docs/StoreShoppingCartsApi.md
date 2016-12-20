# swagger.api.StoreShoppingCartsApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://localhost:8080/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addDiscountUsingPOST**](StoreShoppingCartsApi.md#addDiscountUsingPOST) | **POST** /carts/{id}/discounts | Adds a coupon to the cart
[**addItemUsingPOST**](StoreShoppingCartsApi.md#addItemUsingPOST) | **POST** /carts/{id}/items | Add an item to the cart
[**assignCartUsingPUT**](StoreShoppingCartsApi.md#assignCartUsingPUT) | **PUT** /carts/{id}/owner | Sets the owner of a cart if none is set already
[**checkShippableUsingGET**](StoreShoppingCartsApi.md#checkShippableUsingGET) | **GET** /carts/{id}/shippable | Returns whether a cart requires shipping
[**createCartUsingPOST**](StoreShoppingCartsApi.md#createCartUsingPOST) | **POST** /carts | Creates a new cart from scratch
[**getCartUsingGET**](StoreShoppingCartsApi.md#getCartUsingGET) | **GET** /carts/{id} | Returns the cart with the given GUID
[**getCountriesUsingGET**](StoreShoppingCartsApi.md#getCountriesUsingGET) | **GET** /carts/{id}/countries | Get the list of available shipping countries per vendor
[**modifyShippingAddressUsingPUT**](StoreShoppingCartsApi.md#modifyShippingAddressUsingPUT) | **PUT** /carts/{id}/shipping-address | Modifies or sets the order shipping address
[**removeDiscountUsingDELETE**](StoreShoppingCartsApi.md#removeDiscountUsingDELETE) | **DELETE** /carts/{id}/discounts/{code} | Removes a coupon from the cart
[**searchCartsUsingGET**](StoreShoppingCartsApi.md#searchCartsUsingGET) | **GET** /carts | Get a list of carts
[**setCartCurrencyUsingPUT**](StoreShoppingCartsApi.md#setCartCurrencyUsingPUT) | **PUT** /carts/{id}/currency | Sets the currency to use for the cart
[**updateItemUsingPUT**](StoreShoppingCartsApi.md#updateItemUsingPUT) | **PUT** /carts/{id}/items | Changes the quantity of an item already in the cart


# **addDiscountUsingPOST**
> addDiscountUsingPOST(id, skuRequest)

Adds a coupon to the cart

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new StoreShoppingCartsApi();
var id = id_example; // String | The id of the cart
var skuRequest = new SkuRequest(); // SkuRequest | The request of the sku

try { 
    api_instance.addDiscountUsingPOST(id, skuRequest);
} catch (e) {
    print("Exception when calling StoreShoppingCartsApi->addDiscountUsingPOST: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the cart | 
 **skuRequest** | [**SkuRequest**](SkuRequest.md)| The request of the sku | [optional] 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **addItemUsingPOST**
> addItemUsingPOST(id, cartItemRequest)

Add an item to the cart

Currently, carts cannot contain virtual and real currency items at the same time. Furthermore, the API only support a single virtual item at the moment

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new StoreShoppingCartsApi();
var id = id_example; // String | The id of the cart
var cartItemRequest = new CartItemRequest(); // CartItemRequest | The cart item request object

try { 
    api_instance.addItemUsingPOST(id, cartItemRequest);
} catch (e) {
    print("Exception when calling StoreShoppingCartsApi->addItemUsingPOST: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the cart | 
 **cartItemRequest** | [**CartItemRequest**](CartItemRequest.md)| The cart item request object | [optional] 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **assignCartUsingPUT**
> assignCartUsingPUT(id, userId)

Sets the owner of a cart if none is set already

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new StoreShoppingCartsApi();
var id = id_example; // String | The id of the cart
var userId = new int(); // int | The id of the user

try { 
    api_instance.assignCartUsingPUT(id, userId);
} catch (e) {
    print("Exception when calling StoreShoppingCartsApi->assignCartUsingPUT: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the cart | 
 **userId** | **int**| The id of the user | [optional] 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **checkShippableUsingGET**
> CartShippableResponse checkShippableUsingGET(id)

Returns whether a cart requires shipping

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new StoreShoppingCartsApi();
var id = id_example; // String | The id of the cart

try { 
    var result = api_instance.checkShippableUsingGET(id);
    print(result);
} catch (e) {
    print("Exception when calling StoreShoppingCartsApi->checkShippableUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the cart | 

### Return type

[**CartShippableResponse**](CartShippableResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createCartUsingPOST**
> String createCartUsingPOST(owner, currencyCode)

Creates a new cart from scratch

You don't have to have a user to create a cart but the API requires authentication to checkout

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new StoreShoppingCartsApi();
var owner = 56; // int | Set the owner of a cart. If not specified, defaults to the calling user's id. If specified and is not the calling user's id, SHOPPING_CARTS_ADMIN permission is required
var currencyCode = currencyCode_example; // String | Set the currency for the cart, by currency code. May be disallowed by site settings.

try { 
    var result = api_instance.createCartUsingPOST(owner, currencyCode);
    print(result);
} catch (e) {
    print("Exception when calling StoreShoppingCartsApi->createCartUsingPOST: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **int**| Set the owner of a cart. If not specified, defaults to the calling user&#39;s id. If specified and is not the calling user&#39;s id, SHOPPING_CARTS_ADMIN permission is required | [optional] 
 **currencyCode** | **String**| Set the currency for the cart, by currency code. May be disallowed by site settings. | [optional] 

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCartUsingGET**
> Cart getCartUsingGET(id)

Returns the cart with the given GUID

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new StoreShoppingCartsApi();
var id = id_example; // String | The id of the cart

try { 
    var result = api_instance.getCartUsingGET(id);
    print(result);
} catch (e) {
    print("Exception when calling StoreShoppingCartsApi->getCartUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the cart | 

### Return type

[**Cart**](Cart.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCountriesUsingGET**
> SampleCountriesResponse getCountriesUsingGET(id)

Get the list of available shipping countries per vendor

Since a cart can have multiple vendors with different shipping options, the countries are broken down by vendors. Please see notes about the response object as the fields are variable.

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new StoreShoppingCartsApi();
var id = id_example; // String | The id of the cart

try { 
    var result = api_instance.getCountriesUsingGET(id);
    print(result);
} catch (e) {
    print("Exception when calling StoreShoppingCartsApi->getCountriesUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the cart | 

### Return type

[**SampleCountriesResponse**](SampleCountriesResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **modifyShippingAddressUsingPUT**
> modifyShippingAddressUsingPUT(id, cartShippingAddressRequest)

Modifies or sets the order shipping address

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new StoreShoppingCartsApi();
var id = id_example; // String | The id of the cart
var cartShippingAddressRequest = new CartShippingAddressRequest(); // CartShippingAddressRequest | The cart shipping address request object

try { 
    api_instance.modifyShippingAddressUsingPUT(id, cartShippingAddressRequest);
} catch (e) {
    print("Exception when calling StoreShoppingCartsApi->modifyShippingAddressUsingPUT: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the cart | 
 **cartShippingAddressRequest** | [**CartShippingAddressRequest**](CartShippingAddressRequest.md)| The cart shipping address request object | [optional] 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **removeDiscountUsingDELETE**
> removeDiscountUsingDELETE(id, code)

Removes a coupon from the cart

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new StoreShoppingCartsApi();
var id = id_example; // String | The id of the cart
var code = code_example; // String | The SKU code of the coupon to remove

try { 
    api_instance.removeDiscountUsingDELETE(id, code);
} catch (e) {
    print("Exception when calling StoreShoppingCartsApi->removeDiscountUsingDELETE: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the cart | 
 **code** | **String**| The SKU code of the coupon to remove | 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchCartsUsingGET**
> Page«CartSummary» searchCartsUsingGET(filterOwnerId, size, page, order)

Get a list of carts

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new StoreShoppingCartsApi();
var filterOwnerId = 56; // int | Filter by the id of the owner
var size = 56; // int | The number of objects returned per page
var page = 56; // int | The number of the page returned, starting with 1
var order = order_example; // String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]

try { 
    var result = api_instance.searchCartsUsingGET(filterOwnerId, size, page, order);
    print(result);
} catch (e) {
    print("Exception when calling StoreShoppingCartsApi->searchCartsUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterOwnerId** | **int**| Filter by the id of the owner | [optional] 
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **String**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to id:ASC]

### Return type

[**Page«CartSummary»**](Page«CartSummary».md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **setCartCurrencyUsingPUT**
> setCartCurrencyUsingPUT(id, currencyCode)

Sets the currency to use for the cart

May be disallowed by site settings.

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new StoreShoppingCartsApi();
var id = id_example; // String | The id of the cart
var currencyCode = new String(); // String | The code of the currency

try { 
    api_instance.setCartCurrencyUsingPUT(id, currencyCode);
} catch (e) {
    print("Exception when calling StoreShoppingCartsApi->setCartCurrencyUsingPUT: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the cart | 
 **currencyCode** | **String**| The code of the currency | [optional] 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateItemUsingPUT**
> updateItemUsingPUT(id, cartItemRequest)

Changes the quantity of an item already in the cart

A quantity of zero will remove the item from the cart altogether.

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new StoreShoppingCartsApi();
var id = id_example; // String | The id of the cart
var cartItemRequest = new CartItemRequest(); // CartItemRequest | The cart item request object

try { 
    api_instance.updateItemUsingPUT(id, cartItemRequest);
} catch (e) {
    print("Exception when calling StoreShoppingCartsApi->updateItemUsingPUT: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the cart | 
 **cartItemRequest** | [**CartItemRequest**](CartItemRequest.md)| The cart item request object | [optional] 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

