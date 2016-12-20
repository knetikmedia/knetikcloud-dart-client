# swagger.api.StoreSubscriptionsApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://localhost:8080/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createSubscriptionTemplateUsingPOST**](StoreSubscriptionsApi.md#createSubscriptionTemplateUsingPOST) | **POST** /subscriptions/templates | Create a subscription template
[**createSubscriptionUsingPOST**](StoreSubscriptionsApi.md#createSubscriptionUsingPOST) | **POST** /subscriptions | Creates a subscription item and associated plans
[**deletePlanUsingDELETE**](StoreSubscriptionsApi.md#deletePlanUsingDELETE) | **DELETE** /subscriptions/{id}/plans/{plan_id} | Delete a subscription plan
[**deleteSubscriptionTemplateUsingDELETE**](StoreSubscriptionsApi.md#deleteSubscriptionTemplateUsingDELETE) | **DELETE** /subscriptions/templates/{id} | Delete a subscription template
[**getSubscriptionTemplateUsingGET**](StoreSubscriptionsApi.md#getSubscriptionTemplateUsingGET) | **GET** /subscriptions/templates/{id} | Get a single subscription template
[**getSubscriptionTemplatesUsingGET**](StoreSubscriptionsApi.md#getSubscriptionTemplatesUsingGET) | **GET** /subscriptions/templates | List and search subscription templates
[**getSubscriptionUsingGET**](StoreSubscriptionsApi.md#getSubscriptionUsingGET) | **GET** /subscriptions/{id} | Retrieve a single subscription item and associated plans
[**listSubscriptionsUsingGET**](StoreSubscriptionsApi.md#listSubscriptionsUsingGET) | **GET** /subscriptions | List available subscription items and associated plans
[**processUsingPOST**](StoreSubscriptionsApi.md#processUsingPOST) | **POST** /subscriptions/process | Processes subscriptions and charge dues
[**updateSubscriptionTemplateUsingPUT**](StoreSubscriptionsApi.md#updateSubscriptionTemplateUsingPUT) | **PUT** /subscriptions/templates/{id} | Update a subscription template
[**updateSubscriptionUsingPUT**](StoreSubscriptionsApi.md#updateSubscriptionUsingPUT) | **PUT** /subscriptions/{id} | Updates a subscription item and associated plans


# **createSubscriptionTemplateUsingPOST**
> SubscriptionTemplateResource createSubscriptionTemplateUsingPOST(subscriptionTemplateResource)

Create a subscription template

Subscription Templates define a type of subscription and the properties they have.

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new StoreSubscriptionsApi();
var subscriptionTemplateResource = new SubscriptionTemplateResource(); // SubscriptionTemplateResource | The new subscription template

try { 
    var result = api_instance.createSubscriptionTemplateUsingPOST(subscriptionTemplateResource);
    print(result);
} catch (e) {
    print("Exception when calling StoreSubscriptionsApi->createSubscriptionTemplateUsingPOST: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **subscriptionTemplateResource** | [**SubscriptionTemplateResource**](SubscriptionTemplateResource.md)| The new subscription template | [optional] 

### Return type

[**SubscriptionTemplateResource**](SubscriptionTemplateResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createSubscriptionUsingPOST**
> SubscriptionResource createSubscriptionUsingPOST(subscriptionResource)

Creates a subscription item and associated plans

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new StoreSubscriptionsApi();
var subscriptionResource = new SubscriptionResource(); // SubscriptionResource | The subscription to be created

try { 
    var result = api_instance.createSubscriptionUsingPOST(subscriptionResource);
    print(result);
} catch (e) {
    print("Exception when calling StoreSubscriptionsApi->createSubscriptionUsingPOST: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **subscriptionResource** | [**SubscriptionResource**](SubscriptionResource.md)| The subscription to be created | [optional] 

### Return type

[**SubscriptionResource**](SubscriptionResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deletePlanUsingDELETE**
> deletePlanUsingDELETE(id, planId)

Delete a subscription plan

Must not be locked or a migration target

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new StoreSubscriptionsApi();
var id = 56; // int | The id of the subscription
var planId = planId_example; // String | The id of the plan

try { 
    api_instance.deletePlanUsingDELETE(id, planId);
} catch (e) {
    print("Exception when calling StoreSubscriptionsApi->deletePlanUsingDELETE: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The id of the subscription | 
 **planId** | **String**| The id of the plan | 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteSubscriptionTemplateUsingDELETE**
> deleteSubscriptionTemplateUsingDELETE(id, cascade)

Delete a subscription template

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new StoreSubscriptionsApi();
var id = id_example; // String | The id of the template
var cascade = cascade_example; // String | force deleting the template if it's attached to other objects, cascade = detach

try { 
    api_instance.deleteSubscriptionTemplateUsingDELETE(id, cascade);
} catch (e) {
    print("Exception when calling StoreSubscriptionsApi->deleteSubscriptionTemplateUsingDELETE: $e\n");
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

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSubscriptionTemplateUsingGET**
> SubscriptionTemplateResource getSubscriptionTemplateUsingGET(id)

Get a single subscription template

Subscription Templates define a type of subscription and the properties they have.

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new StoreSubscriptionsApi();
var id = id_example; // String | The id of the template

try { 
    var result = api_instance.getSubscriptionTemplateUsingGET(id);
    print(result);
} catch (e) {
    print("Exception when calling StoreSubscriptionsApi->getSubscriptionTemplateUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the template | 

### Return type

[**SubscriptionTemplateResource**](SubscriptionTemplateResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSubscriptionTemplatesUsingGET**
> PageResource«SubscriptionTemplateResource» getSubscriptionTemplatesUsingGET(size, page, order)

List and search subscription templates

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new StoreSubscriptionsApi();
var size = 56; // int | The number of objects returned per page
var page = 56; // int | The number of the page returned, starting with 1
var order = order_example; // String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]

try { 
    var result = api_instance.getSubscriptionTemplatesUsingGET(size, page, order);
    print(result);
} catch (e) {
    print("Exception when calling StoreSubscriptionsApi->getSubscriptionTemplatesUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **String**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to id:ASC]

### Return type

[**PageResource«SubscriptionTemplateResource»**](PageResource«SubscriptionTemplateResource».md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSubscriptionUsingGET**
> SubscriptionResource getSubscriptionUsingGET(id)

Retrieve a single subscription item and associated plans

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new StoreSubscriptionsApi();
var id = 56; // int | The id of the subscription

try { 
    var result = api_instance.getSubscriptionUsingGET(id);
    print(result);
} catch (e) {
    print("Exception when calling StoreSubscriptionsApi->getSubscriptionUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The id of the subscription | 

### Return type

[**SubscriptionResource**](SubscriptionResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listSubscriptionsUsingGET**
> PageResource«SubscriptionResource» listSubscriptionsUsingGET(size, page, order)

List available subscription items and associated plans

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new StoreSubscriptionsApi();
var size = 56; // int | The number of objects returned per page
var page = 56; // int | The number of the page returned, starting with 1
var order = order_example; // String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]

try { 
    var result = api_instance.listSubscriptionsUsingGET(size, page, order);
    print(result);
} catch (e) {
    print("Exception when calling StoreSubscriptionsApi->listSubscriptionsUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **String**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to id:ASC]

### Return type

[**PageResource«SubscriptionResource»**](PageResource«SubscriptionResource».md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **processUsingPOST**
> processUsingPOST()

Processes subscriptions and charge dues

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new StoreSubscriptionsApi();

try { 
    api_instance.processUsingPOST();
} catch (e) {
    print("Exception when calling StoreSubscriptionsApi->processUsingPOST: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateSubscriptionTemplateUsingPUT**
> updateSubscriptionTemplateUsingPUT(id, subscriptionTemplateResource)

Update a subscription template

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new StoreSubscriptionsApi();
var id = id_example; // String | The id of the template
var subscriptionTemplateResource = new SubscriptionTemplateResource(); // SubscriptionTemplateResource | The subscription template resource object

try { 
    api_instance.updateSubscriptionTemplateUsingPUT(id, subscriptionTemplateResource);
} catch (e) {
    print("Exception when calling StoreSubscriptionsApi->updateSubscriptionTemplateUsingPUT: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the template | 
 **subscriptionTemplateResource** | [**SubscriptionTemplateResource**](SubscriptionTemplateResource.md)| The subscription template resource object | [optional] 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateSubscriptionUsingPUT**
> updateSubscriptionUsingPUT(id, subscriptionResource)

Updates a subscription item and associated plans

Will not remove plans left out

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new StoreSubscriptionsApi();
var id = 56; // int | The id of the subscription
var subscriptionResource = new SubscriptionResource(); // SubscriptionResource | The subscription resource object

try { 
    api_instance.updateSubscriptionUsingPUT(id, subscriptionResource);
} catch (e) {
    print("Exception when calling StoreSubscriptionsApi->updateSubscriptionUsingPUT: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The id of the subscription | 
 **subscriptionResource** | [**SubscriptionResource**](SubscriptionResource.md)| The subscription resource object | [optional] 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

