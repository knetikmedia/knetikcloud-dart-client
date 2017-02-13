# swagger.api.MediaArtistsApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://integration.knetikcloud.com/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addArtist**](MediaArtistsApi.md#addArtist) | **POST** /media/artists | Adds a new artist in the system
[**createArtistTemplate**](MediaArtistsApi.md#createArtistTemplate) | **POST** /media/artists/templates | Create an artist template
[**deleteArtist**](MediaArtistsApi.md#deleteArtist) | **DELETE** /media/artists/{id} | Removes an artist from the system IF no resources are attached to it
[**deleteArtistTemplate**](MediaArtistsApi.md#deleteArtistTemplate) | **DELETE** /media/artists/templates/{id} | Delete an artist template
[**getArtist**](MediaArtistsApi.md#getArtist) | **GET** /media/artists/{id} | Loads a specific artist details
[**getArtistTemplate**](MediaArtistsApi.md#getArtistTemplate) | **GET** /media/artists/templates/{id} | Get a single artist template
[**getArtistTemplates**](MediaArtistsApi.md#getArtistTemplates) | **GET** /media/artists/templates | List and search artist templates
[**getArtists**](MediaArtistsApi.md#getArtists) | **GET** /media/artists | Search for artists
[**updateArtist**](MediaArtistsApi.md#updateArtist) | **PUT** /media/artists/{id} | Modifies an artist details
[**updateArtistTemplate**](MediaArtistsApi.md#updateArtistTemplate) | **PUT** /media/artists/templates/{id} | Update an artist template


# **addArtist**
> ArtistResource addArtist(artistResource)

Adds a new artist in the system

Adds a new artist in the system. Use specific media contributions endpoint to add contributions

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new MediaArtistsApi();
var artistResource = new ArtistResource(); // ArtistResource | The new artist

try { 
    var result = api_instance.addArtist(artistResource);
    print(result);
} catch (e) {
    print("Exception when calling MediaArtistsApi->addArtist: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **artistResource** | [**ArtistResource**](ArtistResource.md)| The new artist | [optional] 

### Return type

[**ArtistResource**](ArtistResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createArtistTemplate**
> TemplateResource createArtistTemplate(artistTemplateResource)

Create an artist template

Artist Templates define a type of artist and the properties they have

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new MediaArtistsApi();
var artistTemplateResource = new TemplateResource(); // TemplateResource | The artist template resource object

try { 
    var result = api_instance.createArtistTemplate(artistTemplateResource);
    print(result);
} catch (e) {
    print("Exception when calling MediaArtistsApi->createArtistTemplate: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **artistTemplateResource** | [**TemplateResource**](TemplateResource.md)| The artist template resource object | [optional] 

### Return type

[**TemplateResource**](TemplateResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteArtist**
> deleteArtist(id)

Removes an artist from the system IF no resources are attached to it

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new MediaArtistsApi();
var id = 789; // int | The artist id

try { 
    api_instance.deleteArtist(id);
} catch (e) {
    print("Exception when calling MediaArtistsApi->deleteArtist: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The artist id | 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteArtistTemplate**
> deleteArtistTemplate(id, cascade)

Delete an artist template

If cascade = 'detach', it will force delete the template even if it's attached to other objects

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new MediaArtistsApi();
var id = id_example; // String | The id of the template
var cascade = cascade_example; // String | The value needed to delete used templates

try { 
    api_instance.deleteArtistTemplate(id, cascade);
} catch (e) {
    print("Exception when calling MediaArtistsApi->deleteArtistTemplate: $e\n");
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

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getArtist**
> ArtistResource getArtist(id, showContributions)

Loads a specific artist details

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new MediaArtistsApi();
var id = 789; // int | The artist id
var showContributions = 56; // int | The number of contributions to show fetch

try { 
    var result = api_instance.getArtist(id, showContributions);
    print(result);
} catch (e) {
    print("Exception when calling MediaArtistsApi->getArtist: $e\n");
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
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getArtistTemplate**
> TemplateResource getArtistTemplate(id)

Get a single artist template

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new MediaArtistsApi();
var id = id_example; // String | The id of the template

try { 
    var result = api_instance.getArtistTemplate(id);
    print(result);
} catch (e) {
    print("Exception when calling MediaArtistsApi->getArtistTemplate: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the template | 

### Return type

[**TemplateResource**](TemplateResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getArtistTemplates**
> PageResource«TemplateResource» getArtistTemplates(size, page, order)

List and search artist templates

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new MediaArtistsApi();
var size = 56; // int | The number of objects returned per page
var page = 56; // int | The number of the page returned, starting with 1
var order = order_example; // String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]

try { 
    var result = api_instance.getArtistTemplates(size, page, order);
    print(result);
} catch (e) {
    print("Exception when calling MediaArtistsApi->getArtistTemplates: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **String**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to id:ASC]

### Return type

[**PageResource«TemplateResource»**](PageResource«TemplateResource».md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getArtists**
> PageResource«ArtistResource» getArtists(filterArtistsByName, size, page, order)

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
    var result = api_instance.getArtists(filterArtistsByName, size, page, order);
    print(result);
} catch (e) {
    print("Exception when calling MediaArtistsApi->getArtists: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterArtistsByName** | **String**| Filter for artists which name *STARTS* with the given string | [optional] 
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **String**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to id:ASC]

### Return type

[**PageResource«ArtistResource»**](PageResource«ArtistResource».md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateArtist**
> updateArtist(id, artistResource)

Modifies an artist details

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new MediaArtistsApi();
var id = 789; // int | The artist id
var artistResource = new ArtistResource(); // ArtistResource | The new artist

try { 
    api_instance.updateArtist(id, artistResource);
} catch (e) {
    print("Exception when calling MediaArtistsApi->updateArtist: $e\n");
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

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateArtistTemplate**
> updateArtistTemplate(id, artistTemplateResource)

Update an artist template

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new MediaArtistsApi();
var id = id_example; // String | The id of the template
var artistTemplateResource = new TemplateResource(); // TemplateResource | The artist template resource object

try { 
    api_instance.updateArtistTemplate(id, artistTemplateResource);
} catch (e) {
    print("Exception when calling MediaArtistsApi->updateArtistTemplate: $e\n");
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

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

