# swagger.api.Gamification_LevelingApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://jsapi-integration.us-east-1.elasticbeanstalk.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createLevel**](Gamification_LevelingApi.md#createLevel) | **POST** /leveling | Create a level schema
[**deleteLevel**](Gamification_LevelingApi.md#deleteLevel) | **DELETE** /leveling/{name} | Delete a level
[**getLevel**](Gamification_LevelingApi.md#getLevel) | **GET** /leveling/{name} | Retrieve a level
[**getLevelTriggers**](Gamification_LevelingApi.md#getLevelTriggers) | **GET** /leveling/triggers | Get the list of triggers that can be used to trigger a leveling progress update
[**getLevels**](Gamification_LevelingApi.md#getLevels) | **GET** /leveling | List and search levels
[**getUserLevel**](Gamification_LevelingApi.md#getUserLevel) | **GET** /users/{user_id}/leveling/{name} | Get a user&#39;s progress for a given level schema
[**getUserLevels**](Gamification_LevelingApi.md#getUserLevels) | **GET** /users/{user_id}/leveling | Get a user&#39;s progress for all level schemas
[**incrementProgress**](Gamification_LevelingApi.md#incrementProgress) | **POST** /users/{user_id}/leveling/{name}/progress | Update or create a leveling progress record for a user
[**setProgress**](Gamification_LevelingApi.md#setProgress) | **PUT** /users/{user_id}/leveling/{name}/progress | Set leveling progress for a user
[**updateLevel**](Gamification_LevelingApi.md#updateLevel) | **PUT** /leveling/{name} | Update a level


# **createLevel**
> LevelingResource createLevel(level)

Create a level schema

<b>Permissions Needed:</b> LEVELING_ADMIN

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new Gamification_LevelingApi();
var level = new LevelingResource(); // LevelingResource | The level schema definition

try { 
    var result = api_instance.createLevel(level);
    print(result);
} catch (e) {
    print("Exception when calling Gamification_LevelingApi->createLevel: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **level** | [**LevelingResource**](LevelingResource.md)| The level schema definition | [optional] 

### Return type

[**LevelingResource**](LevelingResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteLevel**
> deleteLevel(name)

Delete a level

<b>Permissions Needed:</b> LEVELING_ADMIN

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new Gamification_LevelingApi();
var name = name_example; // String | The level schema name

try { 
    api_instance.deleteLevel(name);
} catch (e) {
    print("Exception when calling Gamification_LevelingApi->deleteLevel: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The level schema name | 

### Return type

void (empty response body)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getLevel**
> LevelingResource getLevel(name)

Retrieve a level

<b>Permissions Needed:</b> LEVELING_USER

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new Gamification_LevelingApi();
var name = name_example; // String | The level schema name

try { 
    var result = api_instance.getLevel(name);
    print(result);
} catch (e) {
    print("Exception when calling Gamification_LevelingApi->getLevel: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The level schema name | 

### Return type

[**LevelingResource**](LevelingResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getLevelTriggers**
> List<BreTriggerResource> getLevelTriggers()

Get the list of triggers that can be used to trigger a leveling progress update

<b>Permissions Needed:</b> LEVELING_ADMIN

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new Gamification_LevelingApi();

try { 
    var result = api_instance.getLevelTriggers();
    print(result);
} catch (e) {
    print("Exception when calling Gamification_LevelingApi->getLevelTriggers: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<BreTriggerResource>**](BreTriggerResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getLevels**
> PageResource«LevelingResource» getLevels(filterName, size, page, order)

List and search levels

Get a list of levels schemas with optional filtering. <br><br><b>Permissions Needed:</b> LEVELING_USER

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new Gamification_LevelingApi();
var filterName = filterName_example; // String | Filter for level schemas whose name contains a given string
var size = 56; // int | The number of objects returned per page
var page = 56; // int | The number of the page returned, starting with 1
var order = order_example; // String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]

try { 
    var result = api_instance.getLevels(filterName, size, page, order);
    print(result);
} catch (e) {
    print("Exception when calling Gamification_LevelingApi->getLevels: $e\n");
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

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUserLevel**
> UserLevelingResource getUserLevel(userId, name)

Get a user's progress for a given level schema

<b>Permissions Needed:</b> LEVELING_USER or self

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new Gamification_LevelingApi();
var userId = userId_example; // String | The id of the user or 'me'
var name = name_example; // String | The level schema name

try { 
    var result = api_instance.getUserLevel(userId, name);
    print(result);
} catch (e) {
    print("Exception when calling Gamification_LevelingApi->getUserLevel: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**| The id of the user or &#39;me&#39; | 
 **name** | **String**| The level schema name | 

### Return type

[**UserLevelingResource**](UserLevelingResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUserLevels**
> PageResource«UserLevelingResource» getUserLevels(userId, filterName, size, page, order)

Get a user's progress for all level schemas

Filtering and sorting is based on the LevelingResource object, not the UserLevelingResource that is returned here. <br><br><b>Permissions Needed:</b> LEVELING_USER or self

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new Gamification_LevelingApi();
var userId = userId_example; // String | The id of the user or 'me'
var filterName = filterName_example; // String | Filter for level schemas whose name contains a given string
var size = 56; // int | The number of objects returned per page
var page = 56; // int | The number of the page returned, starting with 1
var order = order_example; // String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]

try { 
    var result = api_instance.getUserLevels(userId, filterName, size, page, order);
    print(result);
} catch (e) {
    print("Exception when calling Gamification_LevelingApi->getUserLevels: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**| The id of the user or &#39;me&#39; | 
 **filterName** | **String**| Filter for level schemas whose name contains a given string | [optional] 
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **String**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] 

### Return type

[**PageResource«UserLevelingResource»**](PageResource«UserLevelingResource».md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **incrementProgress**
> incrementProgress(userId, name, progress)

Update or create a leveling progress record for a user

If no progress record yet exists for the user, it will be created. Otherwise the provided value will be added to it. May be negative. If progress meets or exceeds the level's max_value it will be marked as earned and a BRE event will be triggered for the <code>BreAchievementEarnedTrigger</code>. <br><br><b>Permissions Needed:</b> LEVELING_ADMIN

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new Gamification_LevelingApi();
var userId = 56; // int | The id of the user
var name = name_example; // String | The level schema name
var progress = new IntWrapper(); // IntWrapper | The amount of progress to add

try { 
    api_instance.incrementProgress(userId, name, progress);
} catch (e) {
    print("Exception when calling Gamification_LevelingApi->incrementProgress: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **int**| The id of the user | 
 **name** | **String**| The level schema name | 
 **progress** | [**IntWrapper**](IntWrapper.md)| The amount of progress to add | [optional] 

### Return type

void (empty response body)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **setProgress**
> setProgress(userId, name, progress)

Set leveling progress for a user

If no progress record yet exists for the user, it will be created. Otherwise it will be updated to the provided value. If progress meets or exceeds the level's max_value it will be marked as earned and a BRE event will be triggered for the <code>BreAchievementEarnedTrigger</code>. <br><br><b>Permissions Needed:</b> LEVELING_ADMIN

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new Gamification_LevelingApi();
var userId = 56; // int | The id of the user
var name = name_example; // String | The level schema name
var progress = new IntWrapper(); // IntWrapper | The new progress amount

try { 
    api_instance.setProgress(userId, name, progress);
} catch (e) {
    print("Exception when calling Gamification_LevelingApi->setProgress: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **int**| The id of the user | 
 **name** | **String**| The level schema name | 
 **progress** | [**IntWrapper**](IntWrapper.md)| The new progress amount | [optional] 

### Return type

void (empty response body)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateLevel**
> LevelingResource updateLevel(name, newLevel)

Update a level

<b>Permissions Needed:</b> LEVELING_ADMIN

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new Gamification_LevelingApi();
var name = name_example; // String | The level schema name
var newLevel = new LevelingResource(); // LevelingResource | The level schema definition

try { 
    var result = api_instance.updateLevel(name, newLevel);
    print(result);
} catch (e) {
    print("Exception when calling Gamification_LevelingApi->updateLevel: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The level schema name | 
 **newLevel** | [**LevelingResource**](LevelingResource.md)| The level schema definition | [optional] 

### Return type

[**LevelingResource**](LevelingResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

