# swagger.api.StoreSubscriptionsApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://localhost:8080/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createSubscription**](StoreSubscriptionsApi.md#createSubscription) | **POST** /subscriptions | Creates a subscription item and associated plans
[**createSubscriptionTemplate**](StoreSubscriptionsApi.md#createSubscriptionTemplate) | **POST** /subscriptions/templates | Create a subscription template
[**deleteSubscription**](StoreSubscriptionsApi.md#deleteSubscription) | **DELETE** /subscriptions/{id}/plans/{plan_id} | Delete a subscription plan
[**deleteSubscriptionTemplate**](StoreSubscriptionsApi.md#deleteSubscriptionTemplate) | **DELETE** /subscriptions/templates/{id} | Delete a subscription template
[**getSubscription**](StoreSubscriptionsApi.md#getSubscription) | **GET** /subscriptions/{id} | Retrieve a single subscription item and associated plans
[**getSubscriptionTemplate**](StoreSubscriptionsApi.md#getSubscriptionTemplate) | **GET** /subscriptions/templates/{id} | Get a single subscription template
[**getSubscriptionTemplates**](StoreSubscriptionsApi.md#getSubscriptionTemplates) | **GET** /subscriptions/templates | List and search subscription templates
[**getSubscriptions**](StoreSubscriptionsApi.md#getSubscriptions) | **GET** /subscriptions | List available subscription items and associated plans
[**processSubscriptions**](StoreSubscriptionsApi.md#processSubscriptions) | **POST** /subscriptions/process | Processes subscriptions and charge dues
[**updateSubscription**](StoreSubscriptionsApi.md#updateSubscription) | **PUT** /subscriptions/{id} | Updates a subscription item and associated plans
[**updateSubscriptionTemplate**](StoreSubscriptionsApi.md#updateSubscriptionTemplate) | **PUT** /subscriptions/templates/{id} | Update a subscription template


# **createSubscription**
> SubscriptionResource createSubscription(subscriptionResource)

Creates a subscription item and associated plans

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new StoreSubscriptionsApi();
var subscriptionResource = new SubscriptionResource(); // SubscriptionResource | The subscription to be created

try { 
    var result = api_instance.createSubscription(subscriptionResource);
    print(result);
} catch (e) {
    print("Exception when calling StoreSubscriptionsApi->createSubscription: $e\n");
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

# **createSubscriptionTemplate**
> SubscriptionTemplateResource createSubscriptionTemplate(subscriptionTemplateResource)

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
    var result = api_instance.createSubscriptionTemplate(subscriptionTemplateResource);
    print(result);
} catch (e) {
    print("Exception when calling StoreSubscriptionsApi->createSubscriptionTemplate: $e\n");
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

# **deleteSubscription**
> deleteSubscription(id, planId)

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
    api_instance.deleteSubscription(id, planId);
} catch (e) {
    print("Exception when calling StoreSubscriptionsApi->deleteSubscription: $e\n");
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

# **deleteSubscriptionTemplate**
> deleteSubscriptionTemplate(id, cascade)

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
    api_instance.deleteSubscriptionTemplate(id, cascade);
} catch (e) {
    print("Exception when calling StoreSubscriptionsApi->deleteSubscriptionTemplate: $e\n");
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

# **getSubscription**
> SubscriptionResource getSubscription(id)

Retrieve a single subscription item and associated plans

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new StoreSubscriptionsApi();
var id = 56; // int | The id of the subscription

try { 
    var result = api_instance.getSubscription(id);
    print(result);
} catch (e) {
    print("Exception when calling StoreSubscriptionsApi->getSubscription: $e\n");
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

# **getSubscriptionTemplate**
> SubscriptionTemplateResource getSubscriptionTemplate(id)

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
    var result = api_instance.getSubscriptionTemplate(id);
    print(result);
} catch (e) {
    print("Exception when calling StoreSubscriptionsApi->getSubscriptionTemplate: $e\n");
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

# **getSubscriptionTemplates**
> PageResource«SubscriptionTemplateResource» getSubscriptionTemplates(size, page, order)

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
    var result = api_instance.getSubscriptionTemplates(size, page, order);
    print(result);
} catch (e) {
    print("Exception when calling StoreSubscriptionsApi->getSubscriptionTemplates: $e\n");
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

# **getSubscriptions**
> PageResource«SubscriptionResource» getSubscriptions(size, page, order)

List available subscription items and associated plans

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new StoreSubscriptionsApi();
var size = 56; // int | The number of objects returned per page
var page = 56; // int | The number of the page returned, starting with 1
var order = order_example; // String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]

try { 
    var result = api_instance.getSubscriptions(size, page, order);
    print(result);
} catch (e) {
    print("Exception when calling StoreSubscriptionsApi->getSubscriptions: $e\n");
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

# **processSubscriptions**
> processSubscriptions()

Processes subscriptions and charge dues

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new StoreSubscriptionsApi();

try { 
    api_instance.processSubscriptions();
} catch (e) {
    print("Exception when calling StoreSubscriptionsApi->processSubscriptions: $e\n");
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

# **updateSubscription**
> updateSubscription(id, subscriptionResource)

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
    api_instance.updateSubscription(id, subscriptionResource);
} catch (e) {
    print("Exception when calling StoreSubscriptionsApi->updateSubscription: $e\n");
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

# **updateSubscriptionTemplate**
> SubscriptionTemplateResource updateSubscriptionTemplate(id, subscriptionTemplateResource)

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
    var result = api_instance.updateSubscriptionTemplate(id, subscriptionTemplateResource);
    print(result);
} catch (e) {
    print("Exception when calling StoreSubscriptionsApi->updateSubscriptionTemplate: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the template | 
 **subscriptionTemplateResource** | [**SubscriptionTemplateResource**](SubscriptionTemplateResource.md)| The subscription template resource object | [optional] 

### Return type

[**SubscriptionTemplateResource**](SubscriptionTemplateResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

