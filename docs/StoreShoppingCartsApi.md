# swagger.api.StoreShoppingCartsApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://devsandbox.knetikcloud.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addCustomDiscount**](StoreShoppingCartsApi.md#addCustomDiscount) | **POST** /carts/{id}/custom-discounts | Adds a custom discount to the cart
[**addDiscountToCart**](StoreShoppingCartsApi.md#addDiscountToCart) | **POST** /carts/{id}/discounts | Adds a discount coupon to the cart
[**addItemToCart**](StoreShoppingCartsApi.md#addItemToCart) | **POST** /carts/{id}/items | Add an item to the cart
[**createCart**](StoreShoppingCartsApi.md#createCart) | **POST** /carts | Create a cart
[**getCart**](StoreShoppingCartsApi.md#getCart) | **GET** /carts/{id} | Returns the cart with the given GUID
[**getCarts**](StoreShoppingCartsApi.md#getCarts) | **GET** /carts | Get a list of carts
[**getShippable**](StoreShoppingCartsApi.md#getShippable) | **GET** /carts/{id}/shippable | Returns whether a cart requires shipping
[**getShippingCountries**](StoreShoppingCartsApi.md#getShippingCountries) | **GET** /carts/{id}/countries | Get the list of available shipping countries per vendor
[**removeDiscountFromCart**](StoreShoppingCartsApi.md#removeDiscountFromCart) | **DELETE** /carts/{id}/discounts/{code} | Removes a discount coupon from the cart
[**setCartCurrency**](StoreShoppingCartsApi.md#setCartCurrency) | **PUT** /carts/{id}/currency | Sets the currency to use for the cart
[**setCartOwner**](StoreShoppingCartsApi.md#setCartOwner) | **PUT** /carts/{id}/owner | Sets the owner of a cart if none is set already
[**updateItemInCart**](StoreShoppingCartsApi.md#updateItemInCart) | **PUT** /carts/{id}/items | Changes the quantity of an item already in the cart
[**updateShippingAddress**](StoreShoppingCartsApi.md#updateShippingAddress) | **PUT** /carts/{id}/shipping-address | Modifies or sets the order shipping address


# **addCustomDiscount**
> addCustomDiscount(id, customDiscount)

Adds a custom discount to the cart

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new StoreShoppingCartsApi();
var id = id_example; // String | The id of the cart
var customDiscount = new CouponDefinition(); // CouponDefinition | The details of the discount to add

try { 
    api_instance.addCustomDiscount(id, customDiscount);
} catch (e) {
    print("Exception when calling StoreShoppingCartsApi->addCustomDiscount: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the cart | 
 **customDiscount** | [**CouponDefinition**](CouponDefinition.md)| The details of the discount to add | [optional] 

### Return type

void (empty response body)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **addDiscountToCart**
> addDiscountToCart(id, skuRequest)

Adds a discount coupon to the cart

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new StoreShoppingCartsApi();
var id = id_example; // String | The id of the cart
var skuRequest = new SkuRequest(); // SkuRequest | The request of the sku

try { 
    api_instance.addDiscountToCart(id, skuRequest);
} catch (e) {
    print("Exception when calling StoreShoppingCartsApi->addDiscountToCart: $e\n");
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

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **addItemToCart**
> addItemToCart(id, cartItemRequest)

Add an item to the cart

Currently, carts cannot contain virtual and real currency items at the same time. Furthermore, the API only support a single virtual item at the moment

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new StoreShoppingCartsApi();
var id = id_example; // String | The id of the cart
var cartItemRequest = new CartItemRequest(); // CartItemRequest | The cart item request object

try { 
    api_instance.addItemToCart(id, cartItemRequest);
} catch (e) {
    print("Exception when calling StoreShoppingCartsApi->addItemToCart: $e\n");
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

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createCart**
> String createCart(owner, currencyCode)

Create a cart

You don't have to have a user to create a cart but the API requires authentication to checkout

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new StoreShoppingCartsApi();
var owner = 56; // int | Set the owner of a cart. If not specified, defaults to the calling user's id. If specified and is not the calling user's id, SHOPPING_CARTS_ADMIN permission is required
var currencyCode = currencyCode_example; // String | Set the currency for the cart, by currency code. May be disallowed by site settings.

try { 
    var result = api_instance.createCart(owner, currencyCode);
    print(result);
} catch (e) {
    print("Exception when calling StoreShoppingCartsApi->createCart: $e\n");
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

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCart**
> Cart getCart(id)

Returns the cart with the given GUID

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new StoreShoppingCartsApi();
var id = id_example; // String | The id of the cart

try { 
    var result = api_instance.getCart(id);
    print(result);
} catch (e) {
    print("Exception when calling StoreShoppingCartsApi->getCart: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the cart | 

### Return type

[**Cart**](Cart.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCarts**
> PageResource«CartSummary» getCarts(filterOwnerId, size, page, order)

Get a list of carts

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new StoreShoppingCartsApi();
var filterOwnerId = 56; // int | Filter by the id of the owner
var size = 56; // int | The number of objects returned per page
var page = 56; // int | The number of the page returned, starting with 1
var order = order_example; // String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]

try { 
    var result = api_instance.getCarts(filterOwnerId, size, page, order);
    print(result);
} catch (e) {
    print("Exception when calling StoreShoppingCartsApi->getCarts: $e\n");
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

[**PageResource«CartSummary»**](PageResource«CartSummary».md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getShippable**
> CartShippableResponse getShippable(id)

Returns whether a cart requires shipping

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new StoreShoppingCartsApi();
var id = id_example; // String | The id of the cart

try { 
    var result = api_instance.getShippable(id);
    print(result);
} catch (e) {
    print("Exception when calling StoreShoppingCartsApi->getShippable: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the cart | 

### Return type

[**CartShippableResponse**](CartShippableResponse.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getShippingCountries**
> SampleCountriesResponse getShippingCountries(id)

Get the list of available shipping countries per vendor

Since a cart can have multiple vendors with different shipping options, the countries are broken down by vendors. Please see notes about the response object as the fields are variable.

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new StoreShoppingCartsApi();
var id = id_example; // String | The id of the cart

try { 
    var result = api_instance.getShippingCountries(id);
    print(result);
} catch (e) {
    print("Exception when calling StoreShoppingCartsApi->getShippingCountries: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the cart | 

### Return type

[**SampleCountriesResponse**](SampleCountriesResponse.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **removeDiscountFromCart**
> removeDiscountFromCart(id, code)

Removes a discount coupon from the cart

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new StoreShoppingCartsApi();
var id = id_example; // String | The id of the cart
var code = code_example; // String | The SKU code of the coupon to remove

try { 
    api_instance.removeDiscountFromCart(id, code);
} catch (e) {
    print("Exception when calling StoreShoppingCartsApi->removeDiscountFromCart: $e\n");
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

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **setCartCurrency**
> setCartCurrency(id, currencyCode)

Sets the currency to use for the cart

May be disallowed by site settings.

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new StoreShoppingCartsApi();
var id = id_example; // String | The id of the cart
var currencyCode = new StringWrapper(); // StringWrapper | The code of the currency

try { 
    api_instance.setCartCurrency(id, currencyCode);
} catch (e) {
    print("Exception when calling StoreShoppingCartsApi->setCartCurrency: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the cart | 
 **currencyCode** | [**StringWrapper**](StringWrapper.md)| The code of the currency | [optional] 

### Return type

void (empty response body)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **setCartOwner**
> setCartOwner(id, userId)

Sets the owner of a cart if none is set already

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new StoreShoppingCartsApi();
var id = id_example; // String | The id of the cart
var userId = new IntWrapper(); // IntWrapper | The id of the user

try { 
    api_instance.setCartOwner(id, userId);
} catch (e) {
    print("Exception when calling StoreShoppingCartsApi->setCartOwner: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the cart | 
 **userId** | [**IntWrapper**](IntWrapper.md)| The id of the user | [optional] 

### Return type

void (empty response body)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateItemInCart**
> updateItemInCart(id, cartItemRequest)

Changes the quantity of an item already in the cart

A quantity of zero will remove the item from the cart altogether.

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new StoreShoppingCartsApi();
var id = id_example; // String | The id of the cart
var cartItemRequest = new CartItemRequest(); // CartItemRequest | The cart item request object

try { 
    api_instance.updateItemInCart(id, cartItemRequest);
} catch (e) {
    print("Exception when calling StoreShoppingCartsApi->updateItemInCart: $e\n");
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

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateShippingAddress**
> updateShippingAddress(id, cartShippingAddressRequest)

Modifies or sets the order shipping address

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new StoreShoppingCartsApi();
var id = id_example; // String | The id of the cart
var cartShippingAddressRequest = new CartShippingAddressRequest(); // CartShippingAddressRequest | The cart shipping address request object

try { 
    api_instance.updateShippingAddress(id, cartShippingAddressRequest);
} catch (e) {
    print("Exception when calling StoreShoppingCartsApi->updateShippingAddress: $e\n");
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

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

