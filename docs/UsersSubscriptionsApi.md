# swagger.api.UsersSubscriptionsApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://localhost:8080/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getSubscriptionDetailsUsingGET**](UsersSubscriptionsApi.md#getSubscriptionDetailsUsingGET) | **GET** /users/{user_id}/subscriptions/{inventory_id} | Get details about a user&#39;s subscription
[**getSubscriptionDetailsUsingGET1**](UsersSubscriptionsApi.md#getSubscriptionDetailsUsingGET1) | **GET** /users/{user_id}/subscriptions | Get details about a user&#39;s subscriptions
[**reactivateUsingPOST**](UsersSubscriptionsApi.md#reactivateUsingPOST) | **POST** /users/{user_id}/subscriptions/{inventory_id}/reactivate | Reactivate a subscription and charge fee
[**setBillDateUsingPUT**](UsersSubscriptionsApi.md#setBillDateUsingPUT) | **PUT** /users/{user_id}/subscriptions/{inventory_id}/bill-date | Set a new date to bill a subscription on
[**setPaymentMethodUsingPUT**](UsersSubscriptionsApi.md#setPaymentMethodUsingPUT) | **PUT** /users/{user_id}/subscriptions/{inventory_id}/payment-method | Set the payment method to use for a subscription
[**setStatusUsingPUT**](UsersSubscriptionsApi.md#setStatusUsingPUT) | **PUT** /users/{user_id}/subscriptions/{inventory_id}/status | Set the status of a subscription
[**setUserPlanUsingPUT**](UsersSubscriptionsApi.md#setUserPlanUsingPUT) | **PUT** /users/{user_id}/subscriptions/{inventory_id}/plan | Set a new subscription plan for a user


# **getSubscriptionDetailsUsingGET**
> InventorySubscriptionResource getSubscriptionDetailsUsingGET(userId, inventoryId)

Get details about a user's subscription

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new UsersSubscriptionsApi();
var userId = 56; // int | The id of the user
var inventoryId = 56; // int | The id of the user's inventory

try { 
    var result = api_instance.getSubscriptionDetailsUsingGET(userId, inventoryId);
    print(result);
} catch (e) {
    print("Exception when calling UsersSubscriptionsApi->getSubscriptionDetailsUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **int**| The id of the user | 
 **inventoryId** | **int**| The id of the user&#39;s inventory | 

### Return type

[**InventorySubscriptionResource**](InventorySubscriptionResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSubscriptionDetailsUsingGET1**
> List<InventorySubscriptionResource> getSubscriptionDetailsUsingGET1(userId)

Get details about a user's subscriptions

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new UsersSubscriptionsApi();
var userId = 56; // int | The id of the user

try { 
    var result = api_instance.getSubscriptionDetailsUsingGET1(userId);
    print(result);
} catch (e) {
    print("Exception when calling UsersSubscriptionsApi->getSubscriptionDetailsUsingGET1: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **int**| The id of the user | 

### Return type

[**List<InventorySubscriptionResource>**](InventorySubscriptionResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reactivateUsingPOST**
> InvoiceResource reactivateUsingPOST(userId, inventoryId, reactivateSubscriptionRequest)

Reactivate a subscription and charge fee

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new UsersSubscriptionsApi();
var userId = 56; // int | The id of the user
var inventoryId = 56; // int | The id of the user's inventory
var reactivateSubscriptionRequest = new ReactivateSubscriptionRequest(); // ReactivateSubscriptionRequest | The reactivate subscription request object inventory

try { 
    var result = api_instance.reactivateUsingPOST(userId, inventoryId, reactivateSubscriptionRequest);
    print(result);
} catch (e) {
    print("Exception when calling UsersSubscriptionsApi->reactivateUsingPOST: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **int**| The id of the user | 
 **inventoryId** | **int**| The id of the user&#39;s inventory | 
 **reactivateSubscriptionRequest** | [**ReactivateSubscriptionRequest**](ReactivateSubscriptionRequest.md)| The reactivate subscription request object inventory | [optional] 

### Return type

[**InvoiceResource**](InvoiceResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **setBillDateUsingPUT**
> setBillDateUsingPUT(userId, inventoryId, billDate)

Set a new date to bill a subscription on

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new UsersSubscriptionsApi();
var userId = 56; // int | The id of the user
var inventoryId = 56; // int | The id of the user's inventory
var billDate = new int(); // int | The new bill date. Unix timestamp in seconds

try { 
    api_instance.setBillDateUsingPUT(userId, inventoryId, billDate);
} catch (e) {
    print("Exception when calling UsersSubscriptionsApi->setBillDateUsingPUT: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **int**| The id of the user | 
 **inventoryId** | **int**| The id of the user&#39;s inventory | 
 **billDate** | **int**| The new bill date. Unix timestamp in seconds | 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **setPaymentMethodUsingPUT**
> setPaymentMethodUsingPUT(userId, inventoryId, paymentMethodId)

Set the payment method to use for a subscription

May send null to use floating default

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new UsersSubscriptionsApi();
var userId = 56; // int | The id of the user
var inventoryId = 56; // int | The id of the user's inventory
var paymentMethodId = new int(); // int | The id of the payment method

try { 
    api_instance.setPaymentMethodUsingPUT(userId, inventoryId, paymentMethodId);
} catch (e) {
    print("Exception when calling UsersSubscriptionsApi->setPaymentMethodUsingPUT: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **int**| The id of the user | 
 **inventoryId** | **int**| The id of the user&#39;s inventory | 
 **paymentMethodId** | **int**| The id of the payment method | [optional] 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **setStatusUsingPUT**
> setStatusUsingPUT(userId, inventoryId, status)

Set the status of a subscription

The body is a json string (put in quotes) that should match a desired invoice status type. Note that the new status may be blocked if the system is not configured to allow the current status to be changed to the new, to enforce proper flow. The default options for statuses are shown below but may be altered for special use cases

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new UsersSubscriptionsApi();
var userId = 56; // int | The id of the user
var inventoryId = 56; // int | The id of the user's inventory
var status = new String(); // String | The new status for the subscription. Actual options may differ from the indicated set if the invoice status type data has been altered.  Allowable values: ('current', 'canceled', 'stopped', 'payment_failed', 'suspended')

try { 
    api_instance.setStatusUsingPUT(userId, inventoryId, status);
} catch (e) {
    print("Exception when calling UsersSubscriptionsApi->setStatusUsingPUT: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **int**| The id of the user | 
 **inventoryId** | **int**| The id of the user&#39;s inventory | 
 **status** | **String**| The new status for the subscription. Actual options may differ from the indicated set if the invoice status type data has been altered.  Allowable values: (&#39;current&#39;, &#39;canceled&#39;, &#39;stopped&#39;, &#39;payment_failed&#39;, &#39;suspended&#39;) | 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **setUserPlanUsingPUT**
> setUserPlanUsingPUT(userId, inventoryId, planId)

Set a new subscription plan for a user

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new UsersSubscriptionsApi();
var userId = 56; // int | The id of the user
var inventoryId = 56; // int | The id of the user's inventory
var planId = new String(); // String | The id of the new plan. Must be from the same subscription

try { 
    api_instance.setUserPlanUsingPUT(userId, inventoryId, planId);
} catch (e) {
    print("Exception when calling UsersSubscriptionsApi->setUserPlanUsingPUT: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **int**| The id of the user | 
 **inventoryId** | **int**| The id of the user&#39;s inventory | 
 **planId** | **String**| The id of the new plan. Must be from the same subscription | [optional] 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

