# swagger.api.DispositionsApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://localhost:8080/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addDispositionUsingPOST**](DispositionsApi.md#addDispositionUsingPOST) | **POST** /dispositions | Add a new disposition. 
[**deleteDispositionUsingDELETE**](DispositionsApi.md#deleteDispositionUsingDELETE) | **DELETE** /dispositions/{id} | Delete a disposition
[**getDispositionCountUsingGET**](DispositionsApi.md#getDispositionCountUsingGET) | **GET** /dispositions/count | Returns a list of disposition counts
[**getDispositionUsingGET**](DispositionsApi.md#getDispositionUsingGET) | **GET** /dispositions/{id} | Returns a disposition
[**getDispositionsUsingGET**](DispositionsApi.md#getDispositionsUsingGET) | **GET** /dispositions | Returns a page of dispositions


# **addDispositionUsingPOST**
> DispositionResource addDispositionUsingPOST(disposition)

Add a new disposition. 

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new DispositionsApi();
var disposition = new DispositionResource(); // DispositionResource | The new disposition record

try { 
    var result = api_instance.addDispositionUsingPOST(disposition);
    print(result);
} catch (e) {
    print("Exception when calling DispositionsApi->addDispositionUsingPOST: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **disposition** | [**DispositionResource**](DispositionResource.md)| The new disposition record | [optional] 

### Return type

[**DispositionResource**](DispositionResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteDispositionUsingDELETE**
> deleteDispositionUsingDELETE(id)

Delete a disposition

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new DispositionsApi();
var id = 789; // int | The id of the disposition record

try { 
    api_instance.deleteDispositionUsingDELETE(id);
} catch (e) {
    print("Exception when calling DispositionsApi->deleteDispositionUsingDELETE: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The id of the disposition record | 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDispositionCountUsingGET**
> List<DispositionCount> getDispositionCountUsingGET(filterContext, filterOwner)

Returns a list of disposition counts

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new DispositionsApi();
var filterContext = filterContext_example; // String | Filter for dispositions within a context type (games, articles, polls, etc). Optionally with a specific id like filter_context=video:47
var filterOwner = filterOwner_example; // String | Filter for dispositions from a specific user by id or 'me'

try { 
    var result = api_instance.getDispositionCountUsingGET(filterContext, filterOwner);
    print(result);
} catch (e) {
    print("Exception when calling DispositionsApi->getDispositionCountUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterContext** | **String**| Filter for dispositions within a context type (games, articles, polls, etc). Optionally with a specific id like filter_context&#x3D;video:47 | [optional] 
 **filterOwner** | **String**| Filter for dispositions from a specific user by id or &#39;me&#39; | [optional] 

### Return type

[**List<DispositionCount>**](DispositionCount.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDispositionUsingGET**
> DispositionResource getDispositionUsingGET(id)

Returns a disposition

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new DispositionsApi();
var id = 789; // int | The id of the disposition record

try { 
    var result = api_instance.getDispositionUsingGET(id);
    print(result);
} catch (e) {
    print("Exception when calling DispositionsApi->getDispositionUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The id of the disposition record | 

### Return type

[**DispositionResource**](DispositionResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDispositionsUsingGET**
> Page«DispositionResource» getDispositionsUsingGET(filterContext, filterOwner, size, page, order)

Returns a page of dispositions

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new DispositionsApi();
var filterContext = filterContext_example; // String | Filter for dispositions within a context type (games, articles, polls, etc). Optionally with a specific id like filter_context=video:47
var filterOwner = filterOwner_example; // String | Filter for dispositions from a specific user by id or 'me'
var size = 56; // int | The number of objects returned per page
var page = 56; // int | The number of the page returned, starting with 1
var order = order_example; // String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]

try { 
    var result = api_instance.getDispositionsUsingGET(filterContext, filterOwner, size, page, order);
    print(result);
} catch (e) {
    print("Exception when calling DispositionsApi->getDispositionsUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterContext** | **String**| Filter for dispositions within a context type (games, articles, polls, etc). Optionally with a specific id like filter_context&#x3D;video:47 | [optional] 
 **filterOwner** | **String**| Filter for dispositions from a specific user by id or &#39;me&#39; | [optional] 
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **String**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to id:ASC]

### Return type

[**Page«DispositionResource»**](Page«DispositionResource».md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

