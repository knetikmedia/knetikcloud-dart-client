# swagger.api.GamificationLevelingApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://localhost:8080/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**changeUserLevelExperienceUsingPUT**](GamificationLevelingApi.md#changeUserLevelExperienceUsingPUT) | **PUT** /users/{user_id}/leveling/{name} | Update or create a leveling progress record for a user
[**createLevelUsingPOST**](GamificationLevelingApi.md#createLevelUsingPOST) | **POST** /leveling | Create a level schema
[**deleteLevelUsingDELETE**](GamificationLevelingApi.md#deleteLevelUsingDELETE) | **DELETE** /leveling/{name} | Delete a level
[**getAvailableTriggersUsingGET1**](GamificationLevelingApi.md#getAvailableTriggersUsingGET1) | **GET** /leveling/triggers | Get the list of triggers that can be used to trigger a leveling progress update
[**getLevelUsingGET**](GamificationLevelingApi.md#getLevelUsingGET) | **GET** /leveling/{name} | Retrieve a particular level
[**getLevelsUsingGET**](GamificationLevelingApi.md#getLevelsUsingGET) | **GET** /leveling | List and search levels
[**getUserLevelUsingGET**](GamificationLevelingApi.md#getUserLevelUsingGET) | **GET** /users/{user_id}/leveling/{name} | Get a user&#39;s progress for a given level schema
[**getUserLevelsUsingGET**](GamificationLevelingApi.md#getUserLevelsUsingGET) | **GET** /users/{user_id}/leveling | Get a user&#39;s progress for all level schemas
[**updateLevelUsingPUT**](GamificationLevelingApi.md#updateLevelUsingPUT) | **PUT** /leveling/{name} | Update a level


# **changeUserLevelExperienceUsingPUT**
> changeUserLevelExperienceUsingPUT(userId, name, progress)

Update or create a leveling progress record for a user

If no progress record yet exists for the user, it will be created. Otherwise it will be updated. If progress meets or exceeds the level's max_value it will be marked as earned and a BRE event will be triggered for the <code>BreAchievementEarnedTrigger</code>.

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: knetik_oauth
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new GamificationLevelingApi();
var userId = 56; // int | The id of the user
var name = name_example; // String | The level schema name
var progress = new int(); // int | The current progress amount

try { 
    api_instance.changeUserLevelExperienceUsingPUT(userId, name, progress);
} catch (e) {
    print("Exception when calling GamificationLevelingApi->changeUserLevelExperienceUsingPUT: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **int**| The id of the user | 
 **name** | **String**| The level schema name | 
 **progress** | **int**| The current progress amount | [optional] 

### Return type

void (empty response body)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createLevelUsingPOST**
> LevelingResource createLevelUsingPOST(level)

Create a level schema

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: knetik_oauth
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new GamificationLevelingApi();
var level = new LevelingResource(); // LevelingResource | The level schema definition

try { 
    var result = api_instance.createLevelUsingPOST(level);
    print(result);
} catch (e) {
    print("Exception when calling GamificationLevelingApi->createLevelUsingPOST: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **level** | [**LevelingResource**](LevelingResource.md)| The level schema definition | [optional] 

### Return type

[**LevelingResource**](LevelingResource.md)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteLevelUsingDELETE**
> deleteLevelUsingDELETE(name)

Delete a level

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: knetik_oauth
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new GamificationLevelingApi();
var name = name_example; // String | The level schema name

try { 
    api_instance.deleteLevelUsingDELETE(name);
} catch (e) {
    print("Exception when calling GamificationLevelingApi->deleteLevelUsingDELETE: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The level schema name | 

### Return type

void (empty response body)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAvailableTriggersUsingGET1**
> List<BreTriggerResource> getAvailableTriggersUsingGET1()

Get the list of triggers that can be used to trigger a leveling progress update

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: knetik_oauth
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new GamificationLevelingApi();

try { 
    var result = api_instance.getAvailableTriggersUsingGET1();
    print(result);
} catch (e) {
    print("Exception when calling GamificationLevelingApi->getAvailableTriggersUsingGET1: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<BreTriggerResource>**](BreTriggerResource.md)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getLevelUsingGET**
> LevelingResource getLevelUsingGET(name)

Retrieve a particular level

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: knetik_oauth
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new GamificationLevelingApi();
var name = name_example; // String | The level schema name

try { 
    var result = api_instance.getLevelUsingGET(name);
    print(result);
} catch (e) {
    print("Exception when calling GamificationLevelingApi->getLevelUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The level schema name | 

### Return type

[**LevelingResource**](LevelingResource.md)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getLevelsUsingGET**
> PageResource«LevelingResource» getLevelsUsingGET(filterName, size, page, order)

List and search levels

Get a list of levels schemas with optional filtering

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: knetik_oauth
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new GamificationLevelingApi();
var filterName = filterName_example; // String | Filter for level schemas whose name contains a given string
var size = 56; // int | The number of objects returned per page
var page = 56; // int | The number of the page returned, starting with 1
var order = order_example; // String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]

try { 
    var result = api_instance.getLevelsUsingGET(filterName, size, page, order);
    print(result);
} catch (e) {
    print("Exception when calling GamificationLevelingApi->getLevelsUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterName** | **String**| Filter for level schemas whose name contains a given string | [optional] 
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **String**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to name:ASC]

### Return type

[**PageResource«LevelingResource»**](PageResource«LevelingResource».md)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUserLevelUsingGET**
> UserLevelingResource getUserLevelUsingGET(userId, name)

Get a user's progress for a given level schema

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: knetik_oauth
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new GamificationLevelingApi();
var userId = 56; // int | The id of the user
var name = name_example; // String | The level schema name

try { 
    var result = api_instance.getUserLevelUsingGET(userId, name);
    print(result);
} catch (e) {
    print("Exception when calling GamificationLevelingApi->getUserLevelUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **int**| The id of the user | 
 **name** | **String**| The level schema name | 

### Return type

[**UserLevelingResource**](UserLevelingResource.md)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUserLevelsUsingGET**
> PageResource«UserLevelingResource» getUserLevelsUsingGET(userId)

Get a user's progress for all level schemas

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: knetik_oauth
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new GamificationLevelingApi();
var userId = 56; // int | The id of the user

try { 
    var result = api_instance.getUserLevelsUsingGET(userId);
    print(result);
} catch (e) {
    print("Exception when calling GamificationLevelingApi->getUserLevelsUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **int**| The id of the user | 

### Return type

[**PageResource«UserLevelingResource»**](PageResource«UserLevelingResource».md)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateLevelUsingPUT**
> updateLevelUsingPUT(name, newLevel)

Update a level

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: knetik_oauth
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new GamificationLevelingApi();
var name = name_example; // String | The level schema name
var newLevel = new LevelingResource(); // LevelingResource | The level schema definition

try { 
    api_instance.updateLevelUsingPUT(name, newLevel);
} catch (e) {
    print("Exception when calling GamificationLevelingApi->updateLevelUsingPUT: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The level schema name | 
 **newLevel** | [**LevelingResource**](LevelingResource.md)| The level schema definition | [optional] 

### Return type

void (empty response body)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

