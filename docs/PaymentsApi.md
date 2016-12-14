# swagger.api.PaymentsApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://devsandbox.knetikcloud.com/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createPaymentMethodUsingPOST**](PaymentsApi.md#createPaymentMethodUsingPOST) | **POST** /users/{user_id}/payment-methods | Create a new payment method for a user
[**deletePaymentMethodUsingDELETE**](PaymentsApi.md#deletePaymentMethodUsingDELETE) | **DELETE** /users/{user_id}/payment-methods/{id} | Delete an existing payment method for a user
[**getPaymentMethodUsingGET**](PaymentsApi.md#getPaymentMethodUsingGET) | **GET** /users/{user_id}/payment-methods/{id} | Get a single payment method for a user
[**getPaymentMethodsUsingGET**](PaymentsApi.md#getPaymentMethodsUsingGET) | **GET** /users/{user_id}/payment-methods | Get all payment methods for a user
[**paymentAuthorizationUsingPOST**](PaymentsApi.md#paymentAuthorizationUsingPOST) | **POST** /payment/authorizations | Authorize payment of an invoice for later capture
[**paymentCaptureUsingPOST**](PaymentsApi.md#paymentCaptureUsingPOST) | **POST** /payment/authorizations/{id}/capture | Capture an existing invoice payment authorization
[**updatePaymentMethodUsingPUT**](PaymentsApi.md#updatePaymentMethodUsingPUT) | **PUT** /users/{user_id}/payment-methods/{id} | Update an existing payment method for a user


# **createPaymentMethodUsingPOST**
> PaymentMethodResource createPaymentMethodUsingPOST(userId, paymentMethod)

Create a new payment method for a user

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new PaymentsApi();
var userId = 56; // int | ID of the user for whom the payment method is being created
var paymentMethod = new PaymentMethodResource(); // PaymentMethodResource | Payment method being created

try { 
    var result = api_instance.createPaymentMethodUsingPOST(userId, paymentMethod);
    print(result);
} catch (e) {
    print("Exception when calling PaymentsApi->createPaymentMethodUsingPOST: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **int**| ID of the user for whom the payment method is being created | 
 **paymentMethod** | [**PaymentMethodResource**](PaymentMethodResource.md)| Payment method being created | [optional] 

### Return type

[**PaymentMethodResource**](PaymentMethodResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deletePaymentMethodUsingDELETE**
> deletePaymentMethodUsingDELETE(userId, id)

Delete an existing payment method for a user

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new PaymentsApi();
var userId = 56; // int | ID of the user for whom the payment method is being updated
var id = 56; // int | ID of the payment method being deleted

try { 
    api_instance.deletePaymentMethodUsingDELETE(userId, id);
} catch (e) {
    print("Exception when calling PaymentsApi->deletePaymentMethodUsingDELETE: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **int**| ID of the user for whom the payment method is being updated | 
 **id** | **int**| ID of the payment method being deleted | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPaymentMethodUsingGET**
> PaymentMethodResource getPaymentMethodUsingGET(userId, id)

Get a single payment method for a user

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new PaymentsApi();
var userId = 56; // int | ID of the user for whom the payment method is being retrieved
var id = 56; // int | ID of the payment method being retrieved

try { 
    var result = api_instance.getPaymentMethodUsingGET(userId, id);
    print(result);
} catch (e) {
    print("Exception when calling PaymentsApi->getPaymentMethodUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **int**| ID of the user for whom the payment method is being retrieved | 
 **id** | **int**| ID of the payment method being retrieved | 

### Return type

[**PaymentMethodResource**](PaymentMethodResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPaymentMethodsUsingGET**
> List<PaymentMethodResource> getPaymentMethodsUsingGET(userId, size, page, order)

Get all payment methods for a user

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new PaymentsApi();
var userId = 56; // int | ID of the user for whom the payment methods are being retrieved
var size = 56; // int | The number of objects returned per page
var page = 56; // int | The number of the page returned, starting with 1
var order = order_example; // String | a comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]

try { 
    var result = api_instance.getPaymentMethodsUsingGET(userId, size, page, order);
    print(result);
} catch (e) {
    print("Exception when calling PaymentsApi->getPaymentMethodsUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **int**| ID of the user for whom the payment methods are being retrieved | 
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **String**| a comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to 1]

### Return type

[**List<PaymentMethodResource>**](PaymentMethodResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **paymentAuthorizationUsingPOST**
> PaymentAuthorizationResource paymentAuthorizationUsingPOST(request)

Authorize payment of an invoice for later capture

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new PaymentsApi();
var request = new PaymentAuthorizationResource(); // PaymentAuthorizationResource | Payment authorization request

try { 
    var result = api_instance.paymentAuthorizationUsingPOST(request);
    print(result);
} catch (e) {
    print("Exception when calling PaymentsApi->paymentAuthorizationUsingPOST: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**PaymentAuthorizationResource**](PaymentAuthorizationResource.md)| Payment authorization request | [optional] 

### Return type

[**PaymentAuthorizationResource**](PaymentAuthorizationResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **paymentCaptureUsingPOST**
> paymentCaptureUsingPOST(id)

Capture an existing invoice payment authorization

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new PaymentsApi();
var id = 56; // int | ID of the payment authorization to capture

try { 
    api_instance.paymentCaptureUsingPOST(id);
} catch (e) {
    print("Exception when calling PaymentsApi->paymentCaptureUsingPOST: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| ID of the payment authorization to capture | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updatePaymentMethodUsingPUT**
> updatePaymentMethodUsingPUT(userId, id, paymentMethod)

Update an existing payment method for a user

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new PaymentsApi();
var userId = 56; // int | ID of the user for whom the payment method is being updated
var id = 56; // int | ID of the payment method being updated
var paymentMethod = new PaymentMethodResource(); // PaymentMethodResource | The updated payment method data

try { 
    api_instance.updatePaymentMethodUsingPUT(userId, id, paymentMethod);
} catch (e) {
    print("Exception when calling PaymentsApi->updatePaymentMethodUsingPUT: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **int**| ID of the user for whom the payment method is being updated | 
 **id** | **int**| ID of the payment method being updated | 
 **paymentMethod** | [**PaymentMethodResource**](PaymentMethodResource.md)| The updated payment method data | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

