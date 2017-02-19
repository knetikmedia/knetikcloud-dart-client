# swagger.api.DispositionsApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://localhost:8080/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addDisposition**](DispositionsApi.md#addDisposition) | **POST** /dispositions | Add a new disposition
[**deleteDisposition**](DispositionsApi.md#deleteDisposition) | **DELETE** /dispositions/{id} | Delete a disposition
[**getDisposition**](DispositionsApi.md#getDisposition) | **GET** /dispositions/{id} | Returns a disposition
[**getDispositionCounts**](DispositionsApi.md#getDispositionCounts) | **GET** /dispositions/count | Returns a list of disposition counts
[**getDispositions**](DispositionsApi.md#getDispositions) | **GET** /dispositions | Returns a page of dispositions


# **addDisposition**
> DispositionResource addDisposition(disposition)

Add a new disposition

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new DispositionsApi();
var disposition = new DispositionResource(); // DispositionResource | The new disposition record

try { 
    var result = api_instance.addDisposition(disposition);
    print(result);
} catch (e) {
    print("Exception when calling DispositionsApi->addDisposition: $e\n");
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
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteDisposition**
> deleteDisposition(id)

Delete a disposition

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new DispositionsApi();
var id = 789; // int | The id of the disposition record

try { 
    api_instance.deleteDisposition(id);
} catch (e) {
    print("Exception when calling DispositionsApi->deleteDisposition: $e\n");
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
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDisposition**
> DispositionResource getDisposition(id)

Returns a disposition

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new DispositionsApi();
var id = 789; // int | The id of the disposition record

try { 
    var result = api_instance.getDisposition(id);
    print(result);
} catch (e) {
    print("Exception when calling DispositionsApi->getDisposition: $e\n");
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
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDispositionCounts**
> List<DispositionCount> getDispositionCounts(filterContext, filterOwner)

Returns a list of disposition counts

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new DispositionsApi();
var filterContext = filterContext_example; // String | Filter for dispositions within a context type (games, articles, polls, etc). Optionally with a specific id like filter_context=video:47
var filterOwner = filterOwner_example; // String | Filter for dispositions from a specific user by id or 'me'

try { 
    var result = api_instance.getDispositionCounts(filterContext, filterOwner);
    print(result);
} catch (e) {
    print("Exception when calling DispositionsApi->getDispositionCounts: $e\n");
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
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDispositions**
> PageResource«DispositionResource» getDispositions(filterContext, filterOwner, size, page, order)

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
    var result = api_instance.getDispositions(filterContext, filterOwner, size, page, order);
    print(result);
} catch (e) {
    print("Exception when calling DispositionsApi->getDispositions: $e\n");
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

[**PageResource«DispositionResource»**](PageResource«DispositionResource».md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

