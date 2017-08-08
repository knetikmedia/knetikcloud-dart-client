# swagger.api.GamificationAchievementsApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://sandbox.knetikcloud.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createAchievement**](GamificationAchievementsApi.md#createAchievement) | **POST** /achievements | Create a new achievement definition
[**createAchievementTemplate**](GamificationAchievementsApi.md#createAchievementTemplate) | **POST** /achievements/templates | Create an achievement template
[**deleteAchievement**](GamificationAchievementsApi.md#deleteAchievement) | **DELETE** /achievements/{name} | Delete an achievement definition
[**deleteAchievementTemplate**](GamificationAchievementsApi.md#deleteAchievementTemplate) | **DELETE** /achievements/templates/{id} | Delete an achievement template
[**getAchievement**](GamificationAchievementsApi.md#getAchievement) | **GET** /achievements/{name} | Get a single achievement definition
[**getAchievementTemplate**](GamificationAchievementsApi.md#getAchievementTemplate) | **GET** /achievements/templates/{id} | Get a single achievement template
[**getAchievementTemplates**](GamificationAchievementsApi.md#getAchievementTemplates) | **GET** /achievements/templates | List and search achievement templates
[**getAchievementTriggers**](GamificationAchievementsApi.md#getAchievementTriggers) | **GET** /achievements/triggers | Get the list of triggers that can be used to trigger an achievement progress update
[**getAchievements**](GamificationAchievementsApi.md#getAchievements) | **GET** /achievements | Get all achievement definitions in the system
[**getDerivedAchievements**](GamificationAchievementsApi.md#getDerivedAchievements) | **GET** /achievements/derived/{name} | Get a list of derived achievements
[**getUserAchievementProgress**](GamificationAchievementsApi.md#getUserAchievementProgress) | **GET** /users/{user_id}/achievements/{achievement_name} | Retrieve progress on a given achievement for a given user
[**getUserAchievementsProgress**](GamificationAchievementsApi.md#getUserAchievementsProgress) | **GET** /users/{user_id}/achievements | Retrieve progress on achievements for a given user
[**getUsersAchievementProgress**](GamificationAchievementsApi.md#getUsersAchievementProgress) | **GET** /users/achievements/{achievement_name} | Retrieve progress on a given achievement for all users
[**getUsersAchievementsProgress**](GamificationAchievementsApi.md#getUsersAchievementsProgress) | **GET** /users/achievements | Retrieve progress on achievements for all users
[**incrementAchievementProgress**](GamificationAchievementsApi.md#incrementAchievementProgress) | **POST** /users/{user_id}/achievements/{achievement_name}/progress | Increment an achievement progress record for a user
[**setAchievementProgress**](GamificationAchievementsApi.md#setAchievementProgress) | **PUT** /users/{user_id}/achievements/{achievement_name}/progress | Set an achievement progress record for a user
[**updateAchievement**](GamificationAchievementsApi.md#updateAchievement) | **PUT** /achievements/{name} | Update an achievement definition
[**updateAchievementTemplate**](GamificationAchievementsApi.md#updateAchievementTemplate) | **PUT** /achievements/templates/{id} | Update an achievement template


# **createAchievement**
> AchievementDefinitionResource createAchievement(achievement)

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
    var result = api_instance.createAchievement(achievement);
    print(result);
} catch (e) {
    print("Exception when calling GamificationAchievementsApi->createAchievement: $e\n");
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

# **createAchievementTemplate**
> TemplateResource createAchievementTemplate(template)

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
    var result = api_instance.createAchievementTemplate(template);
    print(result);
} catch (e) {
    print("Exception when calling GamificationAchievementsApi->createAchievementTemplate: $e\n");
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

# **deleteAchievement**
> deleteAchievement(name)

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
    api_instance.deleteAchievement(name);
} catch (e) {
    print("Exception when calling GamificationAchievementsApi->deleteAchievement: $e\n");
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

# **deleteAchievementTemplate**
> deleteAchievementTemplate(id, cascade)

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
    api_instance.deleteAchievementTemplate(id, cascade);
} catch (e) {
    print("Exception when calling GamificationAchievementsApi->deleteAchievementTemplate: $e\n");
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

# **getAchievement**
> AchievementDefinitionResource getAchievement(name)

Get a single achievement definition

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new GamificationAchievementsApi();
var name = name_example; // String | The name of the achievement

try { 
    var result = api_instance.getAchievement(name);
    print(result);
} catch (e) {
    print("Exception when calling GamificationAchievementsApi->getAchievement: $e\n");
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

# **getAchievementTemplate**
> TemplateResource getAchievementTemplate(id)

Get a single achievement template

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new GamificationAchievementsApi();
var id = id_example; // String | The id of the template

try { 
    var result = api_instance.getAchievementTemplate(id);
    print(result);
} catch (e) {
    print("Exception when calling GamificationAchievementsApi->getAchievementTemplate: $e\n");
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

# **getAchievementTemplates**
> PageResource«TemplateResource» getAchievementTemplates(size, page, order)

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
    var result = api_instance.getAchievementTemplates(size, page, order);
    print(result);
} catch (e) {
    print("Exception when calling GamificationAchievementsApi->getAchievementTemplates: $e\n");
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

# **getAchievementTriggers**
> List<BreTriggerResource> getAchievementTriggers()

Get the list of triggers that can be used to trigger an achievement progress update

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new GamificationAchievementsApi();

try { 
    var result = api_instance.getAchievementTriggers();
    print(result);
} catch (e) {
    print("Exception when calling GamificationAchievementsApi->getAchievementTriggers: $e\n");
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

# **getAchievements**
> PageResource«AchievementDefinitionResource» getAchievements(filterTagset, filterName, filterHidden, size, page, order, filterDerived)

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
var size = 56; // int | The number of objects returned per page
var page = 56; // int | The number of the page returned, starting with 1
var order = order_example; // String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
var filterDerived = true; // bool | Filter for achievements that are derived from other services

try { 
    var result = api_instance.getAchievements(filterTagset, filterName, filterHidden, size, page, order, filterDerived);
    print(result);
} catch (e) {
    print("Exception when calling GamificationAchievementsApi->getAchievements: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterTagset** | **String**| Filter for achievements with specified tags (separated by comma) | [optional] 
 **filterName** | **String**| Filter for achievements whose name contains a string | [optional] 
 **filterHidden** | **bool**| Filter for achievements that are hidden or not | [optional] 
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **String**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to name:ASC]
 **filterDerived** | **bool**| Filter for achievements that are derived from other services | [optional] [default to false]

### Return type

[**PageResource«AchievementDefinitionResource»**](PageResource«AchievementDefinitionResource».md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDerivedAchievements**
> List<AchievementDefinitionResource> getDerivedAchievements(name)

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
    var result = api_instance.getDerivedAchievements(name);
    print(result);
} catch (e) {
    print("Exception when calling GamificationAchievementsApi->getDerivedAchievements: $e\n");
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

# **getUserAchievementProgress**
> UserAchievementGroupResource getUserAchievementProgress(userId, achievementName)

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
    var result = api_instance.getUserAchievementProgress(userId, achievementName);
    print(result);
} catch (e) {
    print("Exception when calling GamificationAchievementsApi->getUserAchievementProgress: $e\n");
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

# **getUserAchievementsProgress**
> PageResource«UserAchievementGroupResource» getUserAchievementsProgress(userId, filterAchievementDerived, filterAchievementTagset, filterAchievementName, size, page)

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
var size = 56; // int | The number of objects returned per page
var page = 56; // int | The number of the page returned, starting with 1

try { 
    var result = api_instance.getUserAchievementsProgress(userId, filterAchievementDerived, filterAchievementTagset, filterAchievementName, size, page);
    print(result);
} catch (e) {
    print("Exception when calling GamificationAchievementsApi->getUserAchievementsProgress: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **int**| The user&#39;s id | 
 **filterAchievementDerived** | **bool**| Filter for achievements that are derived from other services | [optional] 
 **filterAchievementTagset** | **String**| Filter for achievements with specified tags (separated by comma) | [optional] 
 **filterAchievementName** | **String**| Filter for achievements whose name contains a string | [optional] 
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]

### Return type

[**PageResource«UserAchievementGroupResource»**](PageResource«UserAchievementGroupResource».md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUsersAchievementProgress**
> PageResource«UserAchievementGroupResource» getUsersAchievementProgress(achievementName, filterAchievementDerived, filterAchievementTagset, filterAchievementName, size, page)

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
var filterAchievementName = filterAchievementName_example; // String | Filter for achievements whose name contains a string
var size = 56; // int | The number of objects returned per page
var page = 56; // int | The number of the page returned, starting with 1

try { 
    var result = api_instance.getUsersAchievementProgress(achievementName, filterAchievementDerived, filterAchievementTagset, filterAchievementName, size, page);
    print(result);
} catch (e) {
    print("Exception when calling GamificationAchievementsApi->getUsersAchievementProgress: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **achievementName** | **String**| The achievement&#39;s name | 
 **filterAchievementDerived** | **bool**| Filter for achievements that are derived from other services | [optional] 
 **filterAchievementTagset** | **String**| Filter for achievements with specified tags (separated by comma) | [optional] 
 **filterAchievementName** | **String**| Filter for achievements whose name contains a string | [optional] 
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]

### Return type

[**PageResource«UserAchievementGroupResource»**](PageResource«UserAchievementGroupResource».md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUsersAchievementsProgress**
> PageResource«UserAchievementGroupResource» getUsersAchievementsProgress(filterAchievementDerived, filterAchievementTagset, filterAchievementName, size, page)

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
var size = 56; // int | The number of objects returned per page
var page = 56; // int | The number of the page returned, starting with 1

try { 
    var result = api_instance.getUsersAchievementsProgress(filterAchievementDerived, filterAchievementTagset, filterAchievementName, size, page);
    print(result);
} catch (e) {
    print("Exception when calling GamificationAchievementsApi->getUsersAchievementsProgress: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterAchievementDerived** | **bool**| Filter for achievements that are derived from other services | [optional] 
 **filterAchievementTagset** | **String**| Filter for achievements with specified tags (separated by comma) | [optional] 
 **filterAchievementName** | **String**| Filter for achievements whose name contains a string | [optional] 
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]

### Return type

[**PageResource«UserAchievementGroupResource»**](PageResource«UserAchievementGroupResource».md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **incrementAchievementProgress**
> UserAchievementGroupResource incrementAchievementProgress(userId, achievementName, progress)

Increment an achievement progress record for a user

If no progress record yet exists for the user, it will be created. Otherwise it will be updated and the provided value added to the existing progress. May be negative. If progress meets or exceeds the achievement's max_value it will be marked as earned and a BRE event will be triggered for the <code>BreAchievementEarnedTrigger</code>.

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new GamificationAchievementsApi();
var userId = 56; // int | The user's id
var achievementName = achievementName_example; // String | The achievement's name
var progress = new IntWrapper(); // IntWrapper | The amount to add to the progress value

try { 
    var result = api_instance.incrementAchievementProgress(userId, achievementName, progress);
    print(result);
} catch (e) {
    print("Exception when calling GamificationAchievementsApi->incrementAchievementProgress: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **int**| The user&#39;s id | 
 **achievementName** | **String**| The achievement&#39;s name | 
 **progress** | [**IntWrapper**](IntWrapper.md)| The amount to add to the progress value | [optional] 

### Return type

[**UserAchievementGroupResource**](UserAchievementGroupResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **setAchievementProgress**
> UserAchievementGroupResource setAchievementProgress(userId, achievementName, progress)

Set an achievement progress record for a user

If no progress record yet exists for the user, it will be created. Otherwise it will be updated and progress set to the provided value. If progress meets or exceeds the achievement's max_value it will be marked as earned and a BRE event will be triggered for the <code>BreAchievementEarnedTrigger</code>.

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new GamificationAchievementsApi();
var userId = 56; // int | The user's id
var achievementName = achievementName_example; // String | The achievement's name
var progress = new IntWrapper(); // IntWrapper | The new progress value

try { 
    var result = api_instance.setAchievementProgress(userId, achievementName, progress);
    print(result);
} catch (e) {
    print("Exception when calling GamificationAchievementsApi->setAchievementProgress: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **int**| The user&#39;s id | 
 **achievementName** | **String**| The achievement&#39;s name | 
 **progress** | [**IntWrapper**](IntWrapper.md)| The new progress value | [optional] 

### Return type

[**UserAchievementGroupResource**](UserAchievementGroupResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateAchievement**
> AchievementDefinitionResource updateAchievement(name, achievement)

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
    var result = api_instance.updateAchievement(name, achievement);
    print(result);
} catch (e) {
    print("Exception when calling GamificationAchievementsApi->updateAchievement: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The name of the achievement | 
 **achievement** | [**AchievementDefinitionResource**](AchievementDefinitionResource.md)| The achievement definition | [optional] 

### Return type

[**AchievementDefinitionResource**](AchievementDefinitionResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateAchievementTemplate**
> TemplateResource updateAchievementTemplate(id, template)

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
    var result = api_instance.updateAchievementTemplate(id, template);
    print(result);
} catch (e) {
    print("Exception when calling GamificationAchievementsApi->updateAchievementTemplate: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the template | 
 **template** | [**TemplateResource**](TemplateResource.md)| The updated template | [optional] 

### Return type

[**TemplateResource**](TemplateResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

