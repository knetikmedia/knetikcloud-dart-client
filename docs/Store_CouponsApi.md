# swagger.api.Store_CouponsApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://jsapi-integration.us-east-1.elasticbeanstalk.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createCouponItem**](Store_CouponsApi.md#createCouponItem) | **POST** /store/coupons | Create a coupon item
[**createCouponTemplate**](Store_CouponsApi.md#createCouponTemplate) | **POST** /store/coupons/templates | Create a coupon template
[**deleteCouponItem**](Store_CouponsApi.md#deleteCouponItem) | **DELETE** /store/coupons/{id} | Delete a coupon item
[**deleteCouponTemplate**](Store_CouponsApi.md#deleteCouponTemplate) | **DELETE** /store/coupons/templates/{id} | Delete a coupon template
[**getCouponItem**](Store_CouponsApi.md#getCouponItem) | **GET** /store/coupons/{id} | Get a single coupon item
[**getCouponItemBySku**](Store_CouponsApi.md#getCouponItemBySku) | **GET** /store/coupons/skus/{sku} | Get a coupon by sku
[**getCouponTemplate**](Store_CouponsApi.md#getCouponTemplate) | **GET** /store/coupons/templates/{id} | Get a single coupon template
[**getCouponTemplates**](Store_CouponsApi.md#getCouponTemplates) | **GET** /store/coupons/templates | List and search coupon templates
[**updateCouponItem**](Store_CouponsApi.md#updateCouponItem) | **PUT** /store/coupons/{id} | Update a coupon item
[**updateCouponTemplate**](Store_CouponsApi.md#updateCouponTemplate) | **PUT** /store/coupons/templates/{id} | Update a coupon template


# **createCouponItem**
> CouponItem createCouponItem(cascade, couponItem)

Create a coupon item

SKUs have to be unique in the entire store. <br><br><b>Permissions Needed:</b> COUPONS_ADMIN

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new Store_CouponsApi();
var cascade = true; // bool | Whether to cascade group changes, such as in the limited gettable behavior. A 400 error will return otherwise if the group is already in use with different values.
var couponItem = new CouponItem(); // CouponItem | The coupon item object

try { 
    var result = api_instance.createCouponItem(cascade, couponItem);
    print(result);
} catch (e) {
    print("Exception when calling Store_CouponsApi->createCouponItem: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cascade** | **bool**| Whether to cascade group changes, such as in the limited gettable behavior. A 400 error will return otherwise if the group is already in use with different values. | [optional] [default to false]
 **couponItem** | [**CouponItem**](CouponItem.md)| The coupon item object | [optional] 

### Return type

[**CouponItem**](CouponItem.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createCouponTemplate**
> ItemTemplateResource createCouponTemplate(couponTemplateResource)

Create a coupon template

Coupon Templates define a type of coupon and the properties they have. <br><br><b>Permissions Needed:</b> TEMPLATE_ADMIN

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new Store_CouponsApi();
var couponTemplateResource = new ItemTemplateResource(); // ItemTemplateResource | The new coupon template

try { 
    var result = api_instance.createCouponTemplate(couponTemplateResource);
    print(result);
} catch (e) {
    print("Exception when calling Store_CouponsApi->createCouponTemplate: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **couponTemplateResource** | [**ItemTemplateResource**](ItemTemplateResource.md)| The new coupon template | [optional] 

### Return type

[**ItemTemplateResource**](ItemTemplateResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteCouponItem**
> deleteCouponItem(id)

Delete a coupon item

<b>Permissions Needed:</b> COUPONS_ADMIN

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new Store_CouponsApi();
var id = 56; // int | The id of the coupon

try { 
    api_instance.deleteCouponItem(id);
} catch (e) {
    print("Exception when calling Store_CouponsApi->deleteCouponItem: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The id of the coupon | 

### Return type

void (empty response body)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteCouponTemplate**
> deleteCouponTemplate(id, cascade)

Delete a coupon template

<b>Permissions Needed:</b> TEMPLATE_ADMIN

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new Store_CouponsApi();
var id = id_example; // String | The id of the template
var cascade = cascade_example; // String | force deleting the template if it's attached to other objects, cascade = detach

try { 
    api_instance.deleteCouponTemplate(id, cascade);
} catch (e) {
    print("Exception when calling Store_CouponsApi->deleteCouponTemplate: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the template | 
 **cascade** | **String**| force deleting the template if it&#39;s attached to other objects, cascade &#x3D; detach | [optional] 

### Return type

void (empty response body)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCouponItem**
> CouponItem getCouponItem(id)

Get a single coupon item

<b>Permissions Needed:</b> COUPONS_ADMIN

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new Store_CouponsApi();
var id = 56; // int | The id of the coupon

try { 
    var result = api_instance.getCouponItem(id);
    print(result);
} catch (e) {
    print("Exception when calling Store_CouponsApi->getCouponItem: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The id of the coupon | 

### Return type

[**CouponItem**](CouponItem.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCouponItemBySku**
> CouponItem getCouponItemBySku(sku)

Get a coupon by sku

<b>Permissions Needed:</b> ANY

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new Store_CouponsApi();
var sku = sku_example; // String | A sku of the coupon

try { 
    var result = api_instance.getCouponItemBySku(sku);
    print(result);
} catch (e) {
    print("Exception when calling Store_CouponsApi->getCouponItemBySku: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sku** | **String**| A sku of the coupon | 

### Return type

[**CouponItem**](CouponItem.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCouponTemplate**
> ItemTemplateResource getCouponTemplate(id)

Get a single coupon template

Coupon Templates define a type of coupon and the properties they have. <br><br><b>Permissions Needed:</b> TEMPLATE_ADMIN or COUPONS_ADMIN

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new Store_CouponsApi();
var id = id_example; // String | The id of the template

try { 
    var result = api_instance.getCouponTemplate(id);
    print(result);
} catch (e) {
    print("Exception when calling Store_CouponsApi->getCouponTemplate: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the template | 

### Return type

[**ItemTemplateResource**](ItemTemplateResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCouponTemplates**
> PageResource«ItemTemplateResource» getCouponTemplates(size, page, order)

List and search coupon templates

<b>Permissions Needed:</b> TEMPLATE_ADMIN or COUPONS_ADMIN

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new Store_CouponsApi();
var size = 56; // int | The number of objects returned per page
var page = 56; // int | The number of the page returned, starting with 1
var order = order_example; // String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]

try { 
    var result = api_instance.getCouponTemplates(size, page, order);
    print(result);
} catch (e) {
    print("Exception when calling Store_CouponsApi->getCouponTemplates: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **String**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to id:ASC]

### Return type

[**PageResource«ItemTemplateResource»**](PageResource«ItemTemplateResource».md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateCouponItem**
> CouponItem updateCouponItem(id, cascade, couponItem)

Update a coupon item

<b>Permissions Needed:</b> COUPONS_ADMIN

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new Store_CouponsApi();
var id = 56; // int | The id of the coupon
var cascade = true; // bool | Whether to cascade group changes, such as in the limited gettable behavior. A 400 error will return otherwise if the group is already in use with different values.
var couponItem = new CouponItem(); // CouponItem | The coupon item object

try { 
    var result = api_instance.updateCouponItem(id, cascade, couponItem);
    print(result);
} catch (e) {
    print("Exception when calling Store_CouponsApi->updateCouponItem: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The id of the coupon | 
 **cascade** | **bool**| Whether to cascade group changes, such as in the limited gettable behavior. A 400 error will return otherwise if the group is already in use with different values. | [optional] [default to false]
 **couponItem** | [**CouponItem**](CouponItem.md)| The coupon item object | [optional] 

### Return type

[**CouponItem**](CouponItem.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateCouponTemplate**
> ItemTemplateResource updateCouponTemplate(id, couponTemplateResource)

Update a coupon template

<b>Permissions Needed:</b> TEMPLATE_ADMIN

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new Store_CouponsApi();
var id = id_example; // String | The id of the template
var couponTemplateResource = new ItemTemplateResource(); // ItemTemplateResource | The coupon template resource object

try { 
    var result = api_instance.updateCouponTemplate(id, couponTemplateResource);
    print(result);
} catch (e) {
    print("Exception when calling Store_CouponsApi->updateCouponTemplate: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the template | 
 **couponTemplateResource** | [**ItemTemplateResource**](ItemTemplateResource.md)| The coupon template resource object | [optional] 

### Return type

[**ItemTemplateResource**](ItemTemplateResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

