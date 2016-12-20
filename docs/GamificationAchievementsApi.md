# swagger.api.GamificationAchievementsApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://localhost:8080/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createAchievementUsingPOST**](GamificationAchievementsApi.md#createAchievementUsingPOST) | **POST** /achievements | Create a new achievement definition
[**createTemplateUsingPOST**](GamificationAchievementsApi.md#createTemplateUsingPOST) | **POST** /achievements/templates | Create an achievement template
[**deleteAchievementTemplateUsingDELETE**](GamificationAchievementsApi.md#deleteAchievementTemplateUsingDELETE) | **DELETE** /achievements/templates/{id} | Delete an achievement template
[**deleteAchievementUsingDELETE**](GamificationAchievementsApi.md#deleteAchievementUsingDELETE) | **DELETE** /achievements/{name} | Delete an achievement definition
[**findAllByGroupNameUsingGET**](GamificationAchievementsApi.md#findAllByGroupNameUsingGET) | **GET** /achievements/derived/{name} | Get a list of derived achievements
[**getAchievementTemplateUsingGET**](GamificationAchievementsApi.md#getAchievementTemplateUsingGET) | **GET** /achievements/templates/{id} | Get a single achievement template
[**getAchievementTemplatesUsingGET**](GamificationAchievementsApi.md#getAchievementTemplatesUsingGET) | **GET** /achievements/templates | List and search achievement templates
[**getAchievementUsingGET**](GamificationAchievementsApi.md#getAchievementUsingGET) | **GET** /achievements/{name} | Get a single achievement definition
[**getAchievementsUsingGET**](GamificationAchievementsApi.md#getAchievementsUsingGET) | **GET** /achievements | Get all achievement definitions in the system
[**getAllUserProgressForAchievementUsingGET**](GamificationAchievementsApi.md#getAllUserProgressForAchievementUsingGET) | **GET** /users/achievements/{achievement_name} | Retrieve progress on a given achievement for all users
[**getAllUserProgressUsingGET**](GamificationAchievementsApi.md#getAllUserProgressUsingGET) | **GET** /users/achievements | Retrieve progress on achievements for all users
[**getAvailableTriggersUsingGET**](GamificationAchievementsApi.md#getAvailableTriggersUsingGET) | **GET** /achievements/triggers | Get the list of triggers that can be used to trigger an achievement progress update
[**getUserProgressForAchievementUsingGET**](GamificationAchievementsApi.md#getUserProgressForAchievementUsingGET) | **GET** /users/{user_id}/achievements/{achievement_name} | Retrieve progress on a given achievement for a given user
[**getUserProgressUsingGET**](GamificationAchievementsApi.md#getUserProgressUsingGET) | **GET** /users/{user_id}/achievements | Retrieve progress on achievements for a given user
[**updateAchievementUsingPUT**](GamificationAchievementsApi.md#updateAchievementUsingPUT) | **PUT** /achievements/{name} | Update an achievement definition
[**updateProgressUsingPUT**](GamificationAchievementsApi.md#updateProgressUsingPUT) | **PUT** /users/{user_id}/achievements/{achievement_name} | Update or create an achievement progress record for a user
[**updateTemplateUsingPUT**](GamificationAchievementsApi.md#updateTemplateUsingPUT) | **PUT** /achievements/templates/{id} | Update an achievement template


# **createAchievementUsingPOST**
> AchievementDefinitionResource createAchievementUsingPOST(achievement)

Create a new achievement definition

If the definition contains a trigger event name, a BRE rule is created, so that tracking logic is executed when the triggering event occurs. If no trigger event name is specified, the user's achievement status must manually be updated via the API.

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new GamificationAchievementsApi();
var achievement = new AchievementDefinitionResource(); // AchievementDefinitionResource | The achievement definition

try { 
    var result = api_instance.createAchievementUsingPOST(achievement);
    print(result);
} catch (e) {
    print("Exception when calling GamificationAchievementsApi->createAchievementUsingPOST: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **achievement** | [**AchievementDefinitionResource**](AchievementDefinitionResource.md)| The achievement definition | [optional] 

### Return type

[**AchievementDefinitionResource**](AchievementDefinitionResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createTemplateUsingPOST**
> TemplateResource createTemplateUsingPOST(template)

Create an achievement template

Achievement templates define a type of achievement and the properties they have

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new GamificationAchievementsApi();
var template = new TemplateResource(); // TemplateResource | The achievement template to be created

try { 
    var result = api_instance.createTemplateUsingPOST(template);
    print(result);
} catch (e) {
    print("Exception when calling GamificationAchievementsApi->createTemplateUsingPOST: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **template** | [**TemplateResource**](TemplateResource.md)| The achievement template to be created | [optional] 

### Return type

[**TemplateResource**](TemplateResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteAchievementTemplateUsingDELETE**
> deleteAchievementTemplateUsingDELETE(id, cascade)

Delete an achievement template

If cascade = 'detach', it will force delete the template even if it's attached to other objects

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new GamificationAchievementsApi();
var id = id_example; // String | The id of the template
var cascade = cascade_example; // String | The value needed to delete used templates

try { 
    api_instance.deleteAchievementTemplateUsingDELETE(id, cascade);
} catch (e) {
    print("Exception when calling GamificationAchievementsApi->deleteAchievementTemplateUsingDELETE: $e\n");
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

# **deleteAchievementUsingDELETE**
> deleteAchievementUsingDELETE(name)

Delete an achievement definition

Will also disable the associated generated rule, if any.

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new GamificationAchievementsApi();
var name = name_example; // String | The name of the achievement

try { 
    api_instance.deleteAchievementUsingDELETE(name);
} catch (e) {
    print("Exception when calling GamificationAchievementsApi->deleteAchievementUsingDELETE: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The name of the achievement | 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **findAllByGroupNameUsingGET**
> List<AchievementDefinitionResource> findAllByGroupNameUsingGET(name)

Get a list of derived achievements

Used by other services that depend on achievements

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new GamificationAchievementsApi();
var name = name_example; // String | The name of the derived achievement

try { 
    var result = api_instance.findAllByGroupNameUsingGET(name);
    print(result);
} catch (e) {
    print("Exception when calling GamificationAchievementsApi->findAllByGroupNameUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The name of the derived achievement | 

### Return type

[**List<AchievementDefinitionResource>**](AchievementDefinitionResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAchievementTemplateUsingGET**
> TemplateResource getAchievementTemplateUsingGET(id)

Get a single achievement template

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new GamificationAchievementsApi();
var id = id_example; // String | The id of the template

try { 
    var result = api_instance.getAchievementTemplateUsingGET(id);
    print(result);
} catch (e) {
    print("Exception when calling GamificationAchievementsApi->getAchievementTemplateUsingGET: $e\n");
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

# **getAchievementTemplatesUsingGET**
> Page«TemplateResource» getAchievementTemplatesUsingGET(size, page, order)

List and search achievement templates

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new GamificationAchievementsApi();
var size = 56; // int | The number of objects returned per page
var page = 56; // int | The number of the page returned, starting with 1
var order = order_example; // String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]

try { 
    var result = api_instance.getAchievementTemplatesUsingGET(size, page, order);
    print(result);
} catch (e) {
    print("Exception when calling GamificationAchievementsApi->getAchievementTemplatesUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **String**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to id:ASC]

### Return type

[**Page«TemplateResource»**](Page«TemplateResource».md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAchievementUsingGET**
> AchievementDefinitionResource getAchievementUsingGET(name)

Get a single achievement definition

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new GamificationAchievementsApi();
var name = name_example; // String | The name of the achievement

try { 
    var result = api_instance.getAchievementUsingGET(name);
    print(result);
} catch (e) {
    print("Exception when calling GamificationAchievementsApi->getAchievementUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The name of the achievement | 

### Return type

[**AchievementDefinitionResource**](AchievementDefinitionResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAchievementsUsingGET**
> Page«AchievementDefinitionResource» getAchievementsUsingGET(filterTagset, filterName, filterHidden, filterDerived, size, page, order)

Get all achievement definitions in the system

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new GamificationAchievementsApi();
var filterTagset = filterTagset_example; // String | Filter for achievements with specified tags (separated by comma)
var filterName = filterName_example; // String | Filter for achievements whose name contains a string
var filterHidden = true; // bool | Filter for achievements that are hidden or not
var filterDerived = true; // bool | Filter for achievements that are derived from other services
var size = 56; // int | The number of objects returned per page
var page = 56; // int | The number of the page returned, starting with 1
var order = order_example; // String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]

try { 
    var result = api_instance.getAchievementsUsingGET(filterTagset, filterName, filterHidden, filterDerived, size, page, order);
    print(result);
} catch (e) {
    print("Exception when calling GamificationAchievementsApi->getAchievementsUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterTagset** | **String**| Filter for achievements with specified tags (separated by comma) | [optional] 
 **filterName** | **String**| Filter for achievements whose name contains a string | [optional] 
 **filterHidden** | **bool**| Filter for achievements that are hidden or not | [optional] 
 **filterDerived** | **bool**| Filter for achievements that are derived from other services | [optional] 
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **String**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to name:ASC]

### Return type

[**Page«AchievementDefinitionResource»**](Page«AchievementDefinitionResource».md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAllUserProgressForAchievementUsingGET**
> Page«UserAchievementGroupResource» getAllUserProgressForAchievementUsingGET(achievementName, filterAchievementDerived, filterAchievementTagset, filterAchievementHidden, size, page)

Retrieve progress on a given achievement for all users

Assets will not be filled in on the resources returned. Use 'Get single achievement progress for user' to retrieve the full resource with assets for a given user as needed.

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new GamificationAchievementsApi();
var achievementName = achievementName_example; // String | The achievement's name
var filterAchievementDerived = true; // bool | Filter for achievements that are derived from other services
var filterAchievementTagset = filterAchievementTagset_example; // String | Filter for achievements with specified tags (separated by comma)
var filterAchievementHidden = true; // bool | Filter for achievements that are hidden or not
var size = 56; // int | The number of objects returned per page
var page = 56; // int | The number of the page returned, starting with 1

try { 
    var result = api_instance.getAllUserProgressForAchievementUsingGET(achievementName, filterAchievementDerived, filterAchievementTagset, filterAchievementHidden, size, page);
    print(result);
} catch (e) {
    print("Exception when calling GamificationAchievementsApi->getAllUserProgressForAchievementUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **achievementName** | **String**| The achievement&#39;s name | 
 **filterAchievementDerived** | **bool**| Filter for achievements that are derived from other services | [optional] 
 **filterAchievementTagset** | **String**| Filter for achievements with specified tags (separated by comma) | [optional] 
 **filterAchievementHidden** | **bool**| Filter for achievements that are hidden or not | [optional] 
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]

### Return type

[**Page«UserAchievementGroupResource»**](Page«UserAchievementGroupResource».md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAllUserProgressUsingGET**
> Page«UserAchievementGroupResource» getAllUserProgressUsingGET(filterAchievementDerived, filterAchievementTagset, filterAchievementName, filterAchievementHidden, size, page)

Retrieve progress on achievements for all users

Assets will not be filled in on the resources returned. Use 'Get single achievement progress for user' to retrieve the full resource with assets for a given user as needed.

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new GamificationAchievementsApi();
var filterAchievementDerived = true; // bool | Filter for achievements that are derived from other services
var filterAchievementTagset = filterAchievementTagset_example; // String | Filter for achievements with specified tags (separated by comma)
var filterAchievementName = filterAchievementName_example; // String | Filter for achievements whose name contains a string
var filterAchievementHidden = true; // bool | Filter for achievements that are hidden or not
var size = 56; // int | The number of objects returned per page
var page = 56; // int | The number of the page returned, starting with 1

try { 
    var result = api_instance.getAllUserProgressUsingGET(filterAchievementDerived, filterAchievementTagset, filterAchievementName, filterAchievementHidden, size, page);
    print(result);
} catch (e) {
    print("Exception when calling GamificationAchievementsApi->getAllUserProgressUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterAchievementDerived** | **bool**| Filter for achievements that are derived from other services | [optional] 
 **filterAchievementTagset** | **String**| Filter for achievements with specified tags (separated by comma) | [optional] 
 **filterAchievementName** | **String**| Filter for achievements whose name contains a string | [optional] 
 **filterAchievementHidden** | **bool**| Filter for achievements that are hidden or not | [optional] 
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]

### Return type

[**Page«UserAchievementGroupResource»**](Page«UserAchievementGroupResource».md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAvailableTriggersUsingGET**
> List<BreTriggerResource> getAvailableTriggersUsingGET()

Get the list of triggers that can be used to trigger an achievement progress update

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new GamificationAchievementsApi();

try { 
    var result = api_instance.getAvailableTriggersUsingGET();
    print(result);
} catch (e) {
    print("Exception when calling GamificationAchievementsApi->getAvailableTriggersUsingGET: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<BreTriggerResource>**](BreTriggerResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUserProgressForAchievementUsingGET**
> UserAchievementGroupResource getUserProgressForAchievementUsingGET(userId, achievementName)

Retrieve progress on a given achievement for a given user

Assets will not be filled in on the resources returned. Use 'Get a single poll' to retrieve the full resource with assets for a given item as needed.

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new GamificationAchievementsApi();
var userId = 56; // int | The user's id
var achievementName = achievementName_example; // String | The achievement's name

try { 
    var result = api_instance.getUserProgressForAchievementUsingGET(userId, achievementName);
    print(result);
} catch (e) {
    print("Exception when calling GamificationAchievementsApi->getUserProgressForAchievementUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **int**| The user&#39;s id | 
 **achievementName** | **String**| The achievement&#39;s name | 

### Return type

[**UserAchievementGroupResource**](UserAchievementGroupResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUserProgressUsingGET**
> Page«UserAchievementGroupResource» getUserProgressUsingGET(userId, filterAchievementDerived, filterAchievementTagset, filterAchievementName, filterAchievementHidden, size, page)

Retrieve progress on achievements for a given user

Assets will not be filled in on the resources returned. Use 'Get a single poll' to retrieve the full resource with assets for a given item as needed.

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new GamificationAchievementsApi();
var userId = 56; // int | The user's id
var filterAchievementDerived = true; // bool | Filter for achievements that are derived from other services
var filterAchievementTagset = filterAchievementTagset_example; // String | Filter for achievements with specified tags (separated by comma)
var filterAchievementName = filterAchievementName_example; // String | Filter for achievements whose name contains a string
var filterAchievementHidden = true; // bool | Filter for achievements that are hidden or not
var size = 56; // int | The number of objects returned per page
var page = 56; // int | The number of the page returned, starting with 1

try { 
    var result = api_instance.getUserProgressUsingGET(userId, filterAchievementDerived, filterAchievementTagset, filterAchievementName, filterAchievementHidden, size, page);
    print(result);
} catch (e) {
    print("Exception when calling GamificationAchievementsApi->getUserProgressUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **int**| The user&#39;s id | 
 **filterAchievementDerived** | **bool**| Filter for achievements that are derived from other services | [optional] 
 **filterAchievementTagset** | **String**| Filter for achievements with specified tags (separated by comma) | [optional] 
 **filterAchievementName** | **String**| Filter for achievements whose name contains a string | [optional] 
 **filterAchievementHidden** | **bool**| Filter for achievements that are hidden or not | [optional] 
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]

### Return type

[**Page«UserAchievementGroupResource»**](Page«UserAchievementGroupResource».md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateAchievementUsingPUT**
> updateAchievementUsingPUT(name, achievement)

Update an achievement definition

The existing generated rule, if any, will be deleted. A new rule will be created if a trigger event name is specified in the new version.

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new GamificationAchievementsApi();
var name = name_example; // String | The name of the achievement
var achievement = new AchievementDefinitionResource(); // AchievementDefinitionResource | The achievement definition

try { 
    api_instance.updateAchievementUsingPUT(name, achievement);
} catch (e) {
    print("Exception when calling GamificationAchievementsApi->updateAchievementUsingPUT: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The name of the achievement | 
 **achievement** | [**AchievementDefinitionResource**](AchievementDefinitionResource.md)| The achievement definition | [optional] 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateProgressUsingPUT**
> UserAchievementGroupResource updateProgressUsingPUT(userId, achievementName, request)

Update or create an achievement progress record for a user

If no progress record yet exists for the user, it will be created. Otherwise it will be updated. If progress meets or exceeds the achievement's max_value it will be marked as earned and a BRE event will be triggered for the <code>BreAchievementEarnedTrigger</code>.

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new GamificationAchievementsApi();
var userId = 56; // int | The user's id
var achievementName = achievementName_example; // String | The achievement's name
var request = new AchievementProgressUpdateRequest(); // AchievementProgressUpdateRequest | The progress update details

try { 
    var result = api_instance.updateProgressUsingPUT(userId, achievementName, request);
    print(result);
} catch (e) {
    print("Exception when calling GamificationAchievementsApi->updateProgressUsingPUT: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **int**| The user&#39;s id | 
 **achievementName** | **String**| The achievement&#39;s name | 
 **request** | [**AchievementProgressUpdateRequest**](AchievementProgressUpdateRequest.md)| The progress update details | [optional] 

### Return type

[**UserAchievementGroupResource**](UserAchievementGroupResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateTemplateUsingPUT**
> updateTemplateUsingPUT(id, template)

Update an achievement template

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new GamificationAchievementsApi();
var id = id_example; // String | The id of the template
var template = new TemplateResource(); // TemplateResource | The updated template

try { 
    api_instance.updateTemplateUsingPUT(id, template);
} catch (e) {
    print("Exception when calling GamificationAchievementsApi->updateTemplateUsingPUT: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the template | 
 **template** | [**TemplateResource**](TemplateResource.md)| The updated template | [optional] 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

