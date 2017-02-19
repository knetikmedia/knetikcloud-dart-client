# swagger.api.CampaignsApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://localhost:8080/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addChallengeToCampaign**](CampaignsApi.md#addChallengeToCampaign) | **POST** /campaigns/{id}/challenges | Add a challenge to a campaign
[**createCampaign**](CampaignsApi.md#createCampaign) | **POST** /campaigns | Create a campaign
[**createCampaignTemplate**](CampaignsApi.md#createCampaignTemplate) | **POST** /campaigns/templates | Create a campaign template
[**deleteCampaign**](CampaignsApi.md#deleteCampaign) | **DELETE** /campaigns/{id} | Delete a campaign
[**deleteCampaignTemplate**](CampaignsApi.md#deleteCampaignTemplate) | **DELETE** /campaigns/templates/{id} | Delete a campaign template
[**getCampaign**](CampaignsApi.md#getCampaign) | **GET** /campaigns/{id} | Returns a single campaign
[**getCampaignChallenges**](CampaignsApi.md#getCampaignChallenges) | **GET** /campaigns/{id}/challenges | List the challenges associated with a campaign
[**getCampaignTemplate**](CampaignsApi.md#getCampaignTemplate) | **GET** /campaigns/templates/{id} | Get a single campaign template
[**getCampaignTemplates**](CampaignsApi.md#getCampaignTemplates) | **GET** /campaigns/templates | List and search campaign templates
[**getCampaigns**](CampaignsApi.md#getCampaigns) | **GET** /campaigns | List and search campaigns
[**removeChallengeFromCampaign**](CampaignsApi.md#removeChallengeFromCampaign) | **DELETE** /campaigns/{campaign_id}/challenges/{id} | Remove a challenge from a campaign
[**updateCampaign**](CampaignsApi.md#updateCampaign) | **PUT** /campaigns/{id} | Update a campaign
[**updateCampaignTemplate**](CampaignsApi.md#updateCampaignTemplate) | **PUT** /campaigns/templates/{id} | Update an campaign template


# **addChallengeToCampaign**
> addChallengeToCampaign(id, challengeId)

Add a challenge to a campaign

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new CampaignsApi();
var id = 789; // int | The id of the campaign
var challengeId = new int(); // int | The id of the challenge

try { 
    api_instance.addChallengeToCampaign(id, challengeId);
} catch (e) {
    print("Exception when calling CampaignsApi->addChallengeToCampaign: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The id of the campaign | 
 **challengeId** | **int**| The id of the challenge | [optional] 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createCampaign**
> CampaignResource createCampaign(campaignResource)

Create a campaign

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new CampaignsApi();
var campaignResource = new CampaignResource(); // CampaignResource | The campaign resource object

try { 
    var result = api_instance.createCampaign(campaignResource);
    print(result);
} catch (e) {
    print("Exception when calling CampaignsApi->createCampaign: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **campaignResource** | [**CampaignResource**](CampaignResource.md)| The campaign resource object | [optional] 

### Return type

[**CampaignResource**](CampaignResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createCampaignTemplate**
> TemplateResource createCampaignTemplate(campaignTemplateResource)

Create a campaign template

Campaign Templates define a type of campaign and the properties they have

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new CampaignsApi();
var campaignTemplateResource = new TemplateResource(); // TemplateResource | The campaign template resource object

try { 
    var result = api_instance.createCampaignTemplate(campaignTemplateResource);
    print(result);
} catch (e) {
    print("Exception when calling CampaignsApi->createCampaignTemplate: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **campaignTemplateResource** | [**TemplateResource**](TemplateResource.md)| The campaign template resource object | [optional] 

### Return type

[**TemplateResource**](TemplateResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteCampaign**
> deleteCampaign(id)

Delete a campaign

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new CampaignsApi();
var id = 789; // int | The campaign id

try { 
    api_instance.deleteCampaign(id);
} catch (e) {
    print("Exception when calling CampaignsApi->deleteCampaign: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The campaign id | 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteCampaignTemplate**
> deleteCampaignTemplate(id, cascade)

Delete a campaign template

If cascade = 'detach', it will force delete the template even if it's attached to other objects

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new CampaignsApi();
var id = id_example; // String | The id of the template
var cascade = cascade_example; // String | The value needed to delete used templates

try { 
    api_instance.deleteCampaignTemplate(id, cascade);
} catch (e) {
    print("Exception when calling CampaignsApi->deleteCampaignTemplate: $e\n");
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

# **getCampaign**
> CampaignResource getCampaign(id)

Returns a single campaign

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new CampaignsApi();
var id = 789; // int | The campaign id

try { 
    var result = api_instance.getCampaign(id);
    print(result);
} catch (e) {
    print("Exception when calling CampaignsApi->getCampaign: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The campaign id | 

### Return type

[**CampaignResource**](CampaignResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCampaignChallenges**
> PageResource«ChallengeResource» getCampaignChallenges(id)

List the challenges associated with a campaign

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new CampaignsApi();
var id = 789; // int | The campaign id

try { 
    var result = api_instance.getCampaignChallenges(id);
    print(result);
} catch (e) {
    print("Exception when calling CampaignsApi->getCampaignChallenges: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The campaign id | 

### Return type

[**PageResource«ChallengeResource»**](PageResource«ChallengeResource».md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCampaignTemplate**
> TemplateResource getCampaignTemplate(id)

Get a single campaign template

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new CampaignsApi();
var id = id_example; // String | The id of the template

try { 
    var result = api_instance.getCampaignTemplate(id);
    print(result);
} catch (e) {
    print("Exception when calling CampaignsApi->getCampaignTemplate: $e\n");
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

# **getCampaignTemplates**
> PageResource«TemplateResource» getCampaignTemplates(size, page, order)

List and search campaign templates

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new CampaignsApi();
var size = 56; // int | The number of objects returned per page
var page = 56; // int | The number of the page returned, starting with 1
var order = order_example; // String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]

try { 
    var result = api_instance.getCampaignTemplates(size, page, order);
    print(result);
} catch (e) {
    print("Exception when calling CampaignsApi->getCampaignTemplates: $e\n");
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

# **getCampaigns**
> PageResource«CampaignResource» getCampaigns(filterActive, size, page, order)

List and search campaigns

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new CampaignsApi();
var filterActive = true; // bool | Filter for campaigns that are active
var size = 56; // int | The number of objects returned per page
var page = 56; // int | The number of the page returned, starting with 1
var order = order_example; // String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]

try { 
    var result = api_instance.getCampaigns(filterActive, size, page, order);
    print(result);
} catch (e) {
    print("Exception when calling CampaignsApi->getCampaigns: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterActive** | **bool**| Filter for campaigns that are active | [optional] 
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **String**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to id:ASC]

### Return type

[**PageResource«CampaignResource»**](PageResource«CampaignResource».md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **removeChallengeFromCampaign**
> removeChallengeFromCampaign(campaignId, id)

Remove a challenge from a campaign

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new CampaignsApi();
var campaignId = 789; // int | The campaign id
var id = 789; // int | The challenge id

try { 
    api_instance.removeChallengeFromCampaign(campaignId, id);
} catch (e) {
    print("Exception when calling CampaignsApi->removeChallengeFromCampaign: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **campaignId** | **int**| The campaign id | 
 **id** | **int**| The challenge id | 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateCampaign**
> CampaignResource updateCampaign(id, campaignResource)

Update a campaign

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new CampaignsApi();
var id = 789; // int | The campaign id
var campaignResource = new CampaignResource(); // CampaignResource | The campaign resource object

try { 
    var result = api_instance.updateCampaign(id, campaignResource);
    print(result);
} catch (e) {
    print("Exception when calling CampaignsApi->updateCampaign: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The campaign id | 
 **campaignResource** | [**CampaignResource**](CampaignResource.md)| The campaign resource object | [optional] 

### Return type

[**CampaignResource**](CampaignResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateCampaignTemplate**
> TemplateResource updateCampaignTemplate(id, campaignTemplateResource)

Update an campaign template

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new CampaignsApi();
var id = id_example; // String | The id of the template
var campaignTemplateResource = new TemplateResource(); // TemplateResource | The campaign template resource object

try { 
    var result = api_instance.updateCampaignTemplate(id, campaignTemplateResource);
    print(result);
} catch (e) {
    print("Exception when calling CampaignsApi->updateCampaignTemplate: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the template | 
 **campaignTemplateResource** | [**TemplateResource**](TemplateResource.md)| The campaign template resource object | [optional] 

### Return type

[**TemplateResource**](TemplateResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

