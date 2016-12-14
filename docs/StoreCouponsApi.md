# swagger.api.StoreCouponsApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://devsandbox.knetikcloud.com/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createCouponItemUsingPOST**](StoreCouponsApi.md#createCouponItemUsingPOST) | **POST** /store/coupons | Create a coupon item
[**createCouponTemplateUsingPOST**](StoreCouponsApi.md#createCouponTemplateUsingPOST) | **POST** /store/coupons/templates | Create a coupon template
[**deleteCouponItemUsingDELETE**](StoreCouponsApi.md#deleteCouponItemUsingDELETE) | **DELETE** /store/coupons/{id} | Delete a coupon item
[**deleteCouponTemplateUsingDELETE**](StoreCouponsApi.md#deleteCouponTemplateUsingDELETE) | **DELETE** /store/coupons/templates/{id} | Delete a coupon template
[**getCouponItemUsingGET**](StoreCouponsApi.md#getCouponItemUsingGET) | **GET** /store/coupons/{id} | Get a single coupon item
[**getCouponTemplateUsingGET**](StoreCouponsApi.md#getCouponTemplateUsingGET) | **GET** /store/coupons/templates/{id} | Get a single coupon template
[**getCouponTemplatesUsingGET**](StoreCouponsApi.md#getCouponTemplatesUsingGET) | **GET** /store/coupons/templates | List and search coupon templates
[**updateCouponItemUsingPUT**](StoreCouponsApi.md#updateCouponItemUsingPUT) | **PUT** /store/coupons/{id} | Update a coupon item
[**updateCouponTemplateUsingPUT**](StoreCouponsApi.md#updateCouponTemplateUsingPUT) | **PUT** /store/coupons/templates/{id} | Update a coupon template


# **createCouponItemUsingPOST**
> CouponItem createCouponItemUsingPOST(couponItem)

Create a coupon item

SKUs have to be unique in the entire store.

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new StoreCouponsApi();
var couponItem = new CouponItem(); // CouponItem | The coupon item object

try { 
    var result = api_instance.createCouponItemUsingPOST(couponItem);
    print(result);
} catch (e) {
    print("Exception when calling StoreCouponsApi->createCouponItemUsingPOST: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **couponItem** | [**CouponItem**](CouponItem.md)| The coupon item object | [optional] 

### Return type

[**CouponItem**](CouponItem.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createCouponTemplateUsingPOST**
> ItemTemplateResource createCouponTemplateUsingPOST(couponTemplateResource)

Create a coupon template

Coupon Templates define a type of coupon and the properties they have.

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new StoreCouponsApi();
var couponTemplateResource = new ItemTemplateResource(); // ItemTemplateResource | The new coupon template

try { 
    var result = api_instance.createCouponTemplateUsingPOST(couponTemplateResource);
    print(result);
} catch (e) {
    print("Exception when calling StoreCouponsApi->createCouponTemplateUsingPOST: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **couponTemplateResource** | [**ItemTemplateResource**](ItemTemplateResource.md)| The new coupon template | [optional] 

### Return type

[**ItemTemplateResource**](ItemTemplateResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteCouponItemUsingDELETE**
> deleteCouponItemUsingDELETE(id)

Delete a coupon item

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new StoreCouponsApi();
var id = 56; // int | The id of the coupon

try { 
    api_instance.deleteCouponItemUsingDELETE(id);
} catch (e) {
    print("Exception when calling StoreCouponsApi->deleteCouponItemUsingDELETE: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The id of the coupon | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteCouponTemplateUsingDELETE**
> deleteCouponTemplateUsingDELETE(id, cascade)

Delete a coupon template

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new StoreCouponsApi();
var id = id_example; // String | The id of the template
var cascade = cascade_example; // String | force deleting the template if it's attached to other objects, cascade = detach

try { 
    api_instance.deleteCouponTemplateUsingDELETE(id, cascade);
} catch (e) {
    print("Exception when calling StoreCouponsApi->deleteCouponTemplateUsingDELETE: $e\n");
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

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCouponItemUsingGET**
> CouponItem getCouponItemUsingGET(id)

Get a single coupon item

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new StoreCouponsApi();
var id = 56; // int | The id of the coupon

try { 
    var result = api_instance.getCouponItemUsingGET(id);
    print(result);
} catch (e) {
    print("Exception when calling StoreCouponsApi->getCouponItemUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The id of the coupon | 

### Return type

[**CouponItem**](CouponItem.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCouponTemplateUsingGET**
> ItemTemplateResource getCouponTemplateUsingGET(id)

Get a single coupon template

Coupon Templates define a type of coupon and the properties they have.

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new StoreCouponsApi();
var id = id_example; // String | The id of the template

try { 
    var result = api_instance.getCouponTemplateUsingGET(id);
    print(result);
} catch (e) {
    print("Exception when calling StoreCouponsApi->getCouponTemplateUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the template | 

### Return type

[**ItemTemplateResource**](ItemTemplateResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCouponTemplatesUsingGET**
> Page«ItemTemplateResource» getCouponTemplatesUsingGET(size, page, order)

List and search coupon templates

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new StoreCouponsApi();
var size = 56; // int | The number of objects returned per page
var page = 56; // int | The number of the page returned, starting with 1
var order = order_example; // String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]

try { 
    var result = api_instance.getCouponTemplatesUsingGET(size, page, order);
    print(result);
} catch (e) {
    print("Exception when calling StoreCouponsApi->getCouponTemplatesUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **String**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to 1]

### Return type

[**Page«ItemTemplateResource»**](Page«ItemTemplateResource».md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateCouponItemUsingPUT**
> updateCouponItemUsingPUT(id, couponItem)

Update a coupon item

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new StoreCouponsApi();
var id = 56; // int | The id of the coupon
var couponItem = new CouponItem(); // CouponItem | The coupon item object

try { 
    api_instance.updateCouponItemUsingPUT(id, couponItem);
} catch (e) {
    print("Exception when calling StoreCouponsApi->updateCouponItemUsingPUT: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The id of the coupon | 
 **couponItem** | [**CouponItem**](CouponItem.md)| The coupon item object | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateCouponTemplateUsingPUT**
> updateCouponTemplateUsingPUT(id, couponTemplateResource)

Update a coupon template

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new StoreCouponsApi();
var id = id_example; // String | The id of the template
var couponTemplateResource = new ItemTemplateResource(); // ItemTemplateResource | The coupon template resource object

try { 
    api_instance.updateCouponTemplateUsingPUT(id, couponTemplateResource);
} catch (e) {
    print("Exception when calling StoreCouponsApi->updateCouponTemplateUsingPUT: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the template | 
 **couponTemplateResource** | [**ItemTemplateResource**](ItemTemplateResource.md)| The coupon template resource object | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

