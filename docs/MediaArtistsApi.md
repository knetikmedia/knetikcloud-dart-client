# swagger.api.MediaArtistsApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://devsandbox.knetikcloud.com/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addArtistUsingPOST**](MediaArtistsApi.md#addArtistUsingPOST) | **POST** /media/artists | Adds a new artist in the system
[**createArtistTemplateUsingPOST**](MediaArtistsApi.md#createArtistTemplateUsingPOST) | **POST** /media/artists/templates | Create an artist template
[**deleteArtistTemplateUsingDELETE**](MediaArtistsApi.md#deleteArtistTemplateUsingDELETE) | **DELETE** /media/artists/templates/{id} | Delete an artist template
[**deleteArtistUsingDELETE**](MediaArtistsApi.md#deleteArtistUsingDELETE) | **DELETE** /media/artists/{id} | Removes an artist from the system IF no resources are attached to it
[**getArtistTemplateUsingGET**](MediaArtistsApi.md#getArtistTemplateUsingGET) | **GET** /media/artists/templates/{id} | Get a single artist template
[**getArtistTemplatesUsingGET**](MediaArtistsApi.md#getArtistTemplatesUsingGET) | **GET** /media/artists/templates | List and search artist templates
[**getArtistUsingGET**](MediaArtistsApi.md#getArtistUsingGET) | **GET** /media/artists/{id} | Loads a specific artist details
[**searchArtistsUsingGET**](MediaArtistsApi.md#searchArtistsUsingGET) | **GET** /media/artists | Search for artists
[**updateArtistTemplateUsingPUT**](MediaArtistsApi.md#updateArtistTemplateUsingPUT) | **PUT** /media/artists/templates/{id} | Update an artist template
[**updateArtistUsingPUT**](MediaArtistsApi.md#updateArtistUsingPUT) | **PUT** /media/artists/{id} | Modifies an artist details


# **addArtistUsingPOST**
> ArtistResource addArtistUsingPOST(artistResource)

Adds a new artist in the system

Adds a new artist in the system. Use specific media contributions endpoint to add contributions

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new MediaArtistsApi();
var artistResource = new ArtistResource(); // ArtistResource | The new artist

try { 
    var result = api_instance.addArtistUsingPOST(artistResource);
    print(result);
} catch (e) {
    print("Exception when calling MediaArtistsApi->addArtistUsingPOST: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **artistResource** | [**ArtistResource**](ArtistResource.md)| The new artist | [optional] 

### Return type

[**ArtistResource**](ArtistResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createArtistTemplateUsingPOST**
> TemplateResource createArtistTemplateUsingPOST(artistTemplateResource)

Create an artist template

Artist Templates define a type of artist and the properties they have

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new MediaArtistsApi();
var artistTemplateResource = new TemplateResource(); // TemplateResource | The artist template resource object

try { 
    var result = api_instance.createArtistTemplateUsingPOST(artistTemplateResource);
    print(result);
} catch (e) {
    print("Exception when calling MediaArtistsApi->createArtistTemplateUsingPOST: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **artistTemplateResource** | [**TemplateResource**](TemplateResource.md)| The artist template resource object | [optional] 

### Return type

[**TemplateResource**](TemplateResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteArtistTemplateUsingDELETE**
> deleteArtistTemplateUsingDELETE(id, cascade)

Delete an artist template

If cascade = 'detach', it will force delete the template even if it's attached to other objects

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new MediaArtistsApi();
var id = id_example; // String | The id of the template
var cascade = cascade_example; // String | The value needed to delete used templates

try { 
    api_instance.deleteArtistTemplateUsingDELETE(id, cascade);
} catch (e) {
    print("Exception when calling MediaArtistsApi->deleteArtistTemplateUsingDELETE: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the template | 
 **cascade** | **String**| The value needed to delete used templates | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteArtistUsingDELETE**
> deleteArtistUsingDELETE(id)

Removes an artist from the system IF no resources are attached to it

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new MediaArtistsApi();
var id = 789; // int | The artist id

try { 
    api_instance.deleteArtistUsingDELETE(id);
} catch (e) {
    print("Exception when calling MediaArtistsApi->deleteArtistUsingDELETE: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The artist id | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getArtistTemplateUsingGET**
> TemplateResource getArtistTemplateUsingGET(id)

Get a single artist template

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new MediaArtistsApi();
var id = id_example; // String | The id of the template

try { 
    var result = api_instance.getArtistTemplateUsingGET(id);
    print(result);
} catch (e) {
    print("Exception when calling MediaArtistsApi->getArtistTemplateUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the template | 

### Return type

[**TemplateResource**](TemplateResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getArtistTemplatesUsingGET**
> Page«TemplateResource» getArtistTemplatesUsingGET(size, page, order)

List and search artist templates

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new MediaArtistsApi();
var size = 56; // int | The number of objects returned per page
var page = 56; // int | The number of the page returned, starting with 1
var order = order_example; // String | a comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]

try { 
    var result = api_instance.getArtistTemplatesUsingGET(size, page, order);
    print(result);
} catch (e) {
    print("Exception when calling MediaArtistsApi->getArtistTemplatesUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **String**| a comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to 1]

### Return type

[**Page«TemplateResource»**](Page«TemplateResource».md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getArtistUsingGET**
> ArtistResource getArtistUsingGET(id, showContributions)

Loads a specific artist details

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new MediaArtistsApi();
var id = 789; // int | The artist id
var showContributions = 56; // int | The number of contributions to show fetch

try { 
    var result = api_instance.getArtistUsingGET(id, showContributions);
    print(result);
} catch (e) {
    print("Exception when calling MediaArtistsApi->getArtistUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The artist id | 
 **showContributions** | **int**| The number of contributions to show fetch | [optional] 

### Return type

[**ArtistResource**](ArtistResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchArtistsUsingGET**
> Page«ArtistResource» searchArtistsUsingGET(filterArtistsByName, size, page, order)

Search for artists

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new MediaArtistsApi();
var filterArtistsByName = filterArtistsByName_example; // String | Filter for artists which name *STARTS* with the given string
var size = 56; // int | The number of objects returned per page
var page = 56; // int | The number of the page returned, starting with 1
var order = order_example; // String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]

try { 
    var result = api_instance.searchArtistsUsingGET(filterArtistsByName, size, page, order);
    print(result);
} catch (e) {
    print("Exception when calling MediaArtistsApi->searchArtistsUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterArtistsByName** | **String**| Filter for artists which name *STARTS* with the given string | [optional] 
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **String**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to 1]

### Return type

[**Page«ArtistResource»**](Page«ArtistResource».md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateArtistTemplateUsingPUT**
> updateArtistTemplateUsingPUT(id, artistTemplateResource)

Update an artist template

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new MediaArtistsApi();
var id = id_example; // String | The id of the template
var artistTemplateResource = new TemplateResource(); // TemplateResource | The artist template resource object

try { 
    api_instance.updateArtistTemplateUsingPUT(id, artistTemplateResource);
} catch (e) {
    print("Exception when calling MediaArtistsApi->updateArtistTemplateUsingPUT: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the template | 
 **artistTemplateResource** | [**TemplateResource**](TemplateResource.md)| The artist template resource object | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateArtistUsingPUT**
> updateArtistUsingPUT(id, artistResource)

Modifies an artist details

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new MediaArtistsApi();
var id = 789; // int | The artist id
var artistResource = new ArtistResource(); // ArtistResource | The new artist

try { 
    api_instance.updateArtistUsingPUT(id, artistResource);
} catch (e) {
    print("Exception when calling MediaArtistsApi->updateArtistUsingPUT: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The artist id | 
 **artistResource** | [**ArtistResource**](ArtistResource.md)| The new artist | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

