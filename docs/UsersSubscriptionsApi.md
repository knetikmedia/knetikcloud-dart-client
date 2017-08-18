# swagger.api.UsersSubscriptionsApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://sandbox.knetikcloud.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getUserSubscriptionDetails**](UsersSubscriptionsApi.md#getUserSubscriptionDetails) | **GET** /users/{user_id}/subscriptions/{inventory_id} | Get details about a user&#39;s subscription
[**getUsersSubscriptionDetails**](UsersSubscriptionsApi.md#getUsersSubscriptionDetails) | **GET** /users/{user_id}/subscriptions | Get details about a user&#39;s subscriptions
[**reactivateUserSubscription**](UsersSubscriptionsApi.md#reactivateUserSubscription) | **POST** /users/{user_id}/subscriptions/{inventory_id}/reactivate | Reactivate a subscription and charge fee
[**setSubscriptionBillDate**](UsersSubscriptionsApi.md#setSubscriptionBillDate) | **PUT** /users/{user_id}/subscriptions/{inventory_id}/bill-date | Set a new date to bill a subscription on
[**setSubscriptionPaymentMethod**](UsersSubscriptionsApi.md#setSubscriptionPaymentMethod) | **PUT** /users/{user_id}/subscriptions/{inventory_id}/payment-method | Set the payment method to use for a subscription
[**setSubscriptionStatus**](UsersSubscriptionsApi.md#setSubscriptionStatus) | **PUT** /users/{user_id}/subscriptions/{inventory_id}/status | Set the status of a subscription
[**setUserSubscriptionPlan**](UsersSubscriptionsApi.md#setUserSubscriptionPlan) | **PUT** /users/{user_id}/subscriptions/{inventory_id}/plan | Set a new subscription plan for a user
[**setUserSubscriptionPrice**](UsersSubscriptionsApi.md#setUserSubscriptionPrice) | **PUT** /users/{user_id}/subscriptions/{inventory_id}/price-override | Set a new subscription price for a user


# **getUserSubscriptionDetails**
> InventorySubscriptionResource getUserSubscriptionDetails(userId, inventoryId)

Get details about a user's subscription

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new UsersSubscriptionsApi();
var userId = 56; // int | The id of the user
var inventoryId = 56; // int | The id of the user's inventory

try { 
    var result = api_instance.getUserSubscriptionDetails(userId, inventoryId);
    print(result);
} catch (e) {
    print("Exception when calling UsersSubscriptionsApi->getUserSubscriptionDetails: $e\n");
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

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUsersSubscriptionDetails**
> List<InventorySubscriptionResource> getUsersSubscriptionDetails(userId)

Get details about a user's subscriptions

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new UsersSubscriptionsApi();
var userId = 56; // int | The id of the user

try { 
    var result = api_instance.getUsersSubscriptionDetails(userId);
    print(result);
} catch (e) {
    print("Exception when calling UsersSubscriptionsApi->getUsersSubscriptionDetails: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **int**| The id of the user | 

### Return type

[**List<InventorySubscriptionResource>**](InventorySubscriptionResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reactivateUserSubscription**
> InvoiceResource reactivateUserSubscription(userId, inventoryId, reactivateSubscriptionRequest)

Reactivate a subscription and charge fee

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new UsersSubscriptionsApi();
var userId = 56; // int | The id of the user
var inventoryId = 56; // int | The id of the user's inventory
var reactivateSubscriptionRequest = new ReactivateSubscriptionRequest(); // ReactivateSubscriptionRequest | The reactivate subscription request object inventory

try { 
    var result = api_instance.reactivateUserSubscription(userId, inventoryId, reactivateSubscriptionRequest);
    print(result);
} catch (e) {
    print("Exception when calling UsersSubscriptionsApi->reactivateUserSubscription: $e\n");
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

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **setSubscriptionBillDate**
> setSubscriptionBillDate(userId, inventoryId, billDate)

Set a new date to bill a subscription on

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new UsersSubscriptionsApi();
var userId = 56; // int | The id of the user
var inventoryId = 56; // int | The id of the user's inventory
var billDate = new int(); // int | The new bill date. Unix timestamp in seconds

try { 
    api_instance.setSubscriptionBillDate(userId, inventoryId, billDate);
} catch (e) {
    print("Exception when calling UsersSubscriptionsApi->setSubscriptionBillDate: $e\n");
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

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **setSubscriptionPaymentMethod**
> setSubscriptionPaymentMethod(userId, inventoryId, paymentMethodId)

Set the payment method to use for a subscription

May send null to use floating default

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new UsersSubscriptionsApi();
var userId = 56; // int | The id of the user
var inventoryId = 56; // int | The id of the user's inventory
var paymentMethodId = new IntWrapper(); // IntWrapper | The id of the payment method

try { 
    api_instance.setSubscriptionPaymentMethod(userId, inventoryId, paymentMethodId);
} catch (e) {
    print("Exception when calling UsersSubscriptionsApi->setSubscriptionPaymentMethod: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **int**| The id of the user | 
 **inventoryId** | **int**| The id of the user&#39;s inventory | 
 **paymentMethodId** | [**IntWrapper**](IntWrapper.md)| The id of the payment method | [optional] 

### Return type

void (empty response body)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **setSubscriptionStatus**
> setSubscriptionStatus(userId, inventoryId, status)

Set the status of a subscription

Note that the new status may be blocked if the system is not configured to allow the current status to be changed to the new, to enforce proper flow. The default options for statuses are shown below but may be altered for special use cases

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new UsersSubscriptionsApi();
var userId = 56; // int | The id of the user
var inventoryId = 56; // int | The id of the user's inventory
var status = new StringWrapper(); // StringWrapper | The new status for the subscription. Actual options may differ from the indicated set if the invoice status type data has been altered.  Allowable values: ('current', 'canceled', 'stopped', 'payment_failed', 'suspended')

try { 
    api_instance.setSubscriptionStatus(userId, inventoryId, status);
} catch (e) {
    print("Exception when calling UsersSubscriptionsApi->setSubscriptionStatus: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **int**| The id of the user | 
 **inventoryId** | **int**| The id of the user&#39;s inventory | 
 **status** | [**StringWrapper**](StringWrapper.md)| The new status for the subscription. Actual options may differ from the indicated set if the invoice status type data has been altered.  Allowable values: (&#39;current&#39;, &#39;canceled&#39;, &#39;stopped&#39;, &#39;payment_failed&#39;, &#39;suspended&#39;) | 

### Return type

void (empty response body)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **setUserSubscriptionPlan**
> setUserSubscriptionPlan(userId, inventoryId, planId)

Set a new subscription plan for a user

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new UsersSubscriptionsApi();
var userId = 56; // int | The id of the user
var inventoryId = 56; // int | The id of the user's inventory
var planId = new StringWrapper(); // StringWrapper | The id of the new plan. Must be from the same subscription

try { 
    api_instance.setUserSubscriptionPlan(userId, inventoryId, planId);
} catch (e) {
    print("Exception when calling UsersSubscriptionsApi->setUserSubscriptionPlan: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **int**| The id of the user | 
 **inventoryId** | **int**| The id of the user&#39;s inventory | 
 **planId** | [**StringWrapper**](StringWrapper.md)| The id of the new plan. Must be from the same subscription | [optional] 

### Return type

void (empty response body)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **setUserSubscriptionPrice**
> setUserSubscriptionPrice(userId, inventoryId, the override details)

Set a new subscription price for a user

This new price will be what the user is charged at the begining of each new period. This override is specific to the current subscription and will not carry over if they end and later re-subscribe. It will persist if the plan is changed using the setUserSubscriptionPlan endpoint.

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new UsersSubscriptionsApi();
var userId = 56; // int | The id of the user
var inventoryId = 56; // int | The id of the user's inventory
var the override details = new SubscriptionPriceOverrideRequest(); // SubscriptionPriceOverrideRequest | override

try { 
    api_instance.setUserSubscriptionPrice(userId, inventoryId, the override details);
} catch (e) {
    print("Exception when calling UsersSubscriptionsApi->setUserSubscriptionPrice: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **int**| The id of the user | 
 **inventoryId** | **int**| The id of the user&#39;s inventory | 
 **the override details** | [**SubscriptionPriceOverrideRequest**](SubscriptionPriceOverrideRequest.md)| override | [optional] 

### Return type

void (empty response body)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

