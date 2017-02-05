# swagger.api.CampaignsApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://integration.knetikcloud.com/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addChallengesUsingPOST**](CampaignsApi.md#addChallengesUsingPOST) | **POST** /campaigns/{id}/challenges | Add a challenge to a campaign
[**createCampaignTemplateUsingPOST**](CampaignsApi.md#createCampaignTemplateUsingPOST) | **POST** /campaigns/templates | Create a campaign template
[**createCampaignUsingPOST**](CampaignsApi.md#createCampaignUsingPOST) | **POST** /campaigns | Create a campaign
[**deleteCampaignTemplateUsingDELETE**](CampaignsApi.md#deleteCampaignTemplateUsingDELETE) | **DELETE** /campaigns/templates/{id} | Delete a campaign template
[**deleteCampaignUsingDELETE**](CampaignsApi.md#deleteCampaignUsingDELETE) | **DELETE** /campaigns/{id} | Delete a campaign
[**getCampaignTemplateUsingGET**](CampaignsApi.md#getCampaignTemplateUsingGET) | **GET** /campaigns/templates/{id} | Get a single campaign template
[**getCampaignTemplatesUsingGET**](CampaignsApi.md#getCampaignTemplatesUsingGET) | **GET** /campaigns/templates | List and search campaign templates
[**getCampaignUsingGET**](CampaignsApi.md#getCampaignUsingGET) | **GET** /campaigns/{id} | Returns a single campaign
[**getCampaignsUsingGET**](CampaignsApi.md#getCampaignsUsingGET) | **GET** /campaigns | List and search campaigns
[**getChallengesUsingGET**](CampaignsApi.md#getChallengesUsingGET) | **GET** /campaigns/{id}/challenges | List the challenges associated with a campaign
[**removeChallengeUsingDELETE**](CampaignsApi.md#removeChallengeUsingDELETE) | **DELETE** /campaigns/{campaign_id}/challenges/{id} | Remove a challenge from a campaign
[**updateCampaignTemplateUsingPUT**](CampaignsApi.md#updateCampaignTemplateUsingPUT) | **PUT** /campaigns/templates/{id} | Update an campaign template
[**updateCampaignUsingPUT**](CampaignsApi.md#updateCampaignUsingPUT) | **PUT** /campaigns/{id} | Update a campaign


# **addChallengesUsingPOST**
> addChallengesUsingPOST(id, challengeId)

Add a challenge to a campaign

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: knetik_oauth
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new CampaignsApi();
var id = 789; // int | The id of the campaign
var challengeId = new int(); // int | The id of the challenge

try { 
    api_instance.addChallengesUsingPOST(id, challengeId);
} catch (e) {
    print("Exception when calling CampaignsApi->addChallengesUsingPOST: $e\n");
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

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createCampaignTemplateUsingPOST**
> TemplateResource createCampaignTemplateUsingPOST(campaignTemplateResource)

Create a campaign template

Campaign Templates define a type of campaign and the properties they have

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: knetik_oauth
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new CampaignsApi();
var campaignTemplateResource = new TemplateResource(); // TemplateResource | The campaign template resource object

try { 
    var result = api_instance.createCampaignTemplateUsingPOST(campaignTemplateResource);
    print(result);
} catch (e) {
    print("Exception when calling CampaignsApi->createCampaignTemplateUsingPOST: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **campaignTemplateResource** | [**TemplateResource**](TemplateResource.md)| The campaign template resource object | [optional] 

### Return type

[**TemplateResource**](TemplateResource.md)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createCampaignUsingPOST**
> CampaignResource createCampaignUsingPOST(campaignResource)

Create a campaign

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: knetik_oauth
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new CampaignsApi();
var campaignResource = new CampaignResource(); // CampaignResource | The campaign resource object

try { 
    var result = api_instance.createCampaignUsingPOST(campaignResource);
    print(result);
} catch (e) {
    print("Exception when calling CampaignsApi->createCampaignUsingPOST: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **campaignResource** | [**CampaignResource**](CampaignResource.md)| The campaign resource object | [optional] 

### Return type

[**CampaignResource**](CampaignResource.md)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteCampaignTemplateUsingDELETE**
> deleteCampaignTemplateUsingDELETE(id, cascade)

Delete a campaign template

If cascade = 'detach', it will force delete the template even if it's attached to other objects

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: knetik_oauth
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new CampaignsApi();
var id = id_example; // String | The id of the template
var cascade = cascade_example; // String | The value needed to delete used templates

try { 
    api_instance.deleteCampaignTemplateUsingDELETE(id, cascade);
} catch (e) {
    print("Exception when calling CampaignsApi->deleteCampaignTemplateUsingDELETE: $e\n");
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

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteCampaignUsingDELETE**
> deleteCampaignUsingDELETE(id)

Delete a campaign

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: knetik_oauth
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new CampaignsApi();
var id = 789; // int | The campaign id

try { 
    api_instance.deleteCampaignUsingDELETE(id);
} catch (e) {
    print("Exception when calling CampaignsApi->deleteCampaignUsingDELETE: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The campaign id | 

### Return type

void (empty response body)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCampaignTemplateUsingGET**
> TemplateResource getCampaignTemplateUsingGET(id)

Get a single campaign template

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: knetik_oauth
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new CampaignsApi();
var id = id_example; // String | The id of the template

try { 
    var result = api_instance.getCampaignTemplateUsingGET(id);
    print(result);
} catch (e) {
    print("Exception when calling CampaignsApi->getCampaignTemplateUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the template | 

### Return type

[**TemplateResource**](TemplateResource.md)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCampaignTemplatesUsingGET**
> PageResource«TemplateResource» getCampaignTemplatesUsingGET(size, page, order)

List and search campaign templates

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: knetik_oauth
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new CampaignsApi();
var size = 56; // int | The number of objects returned per page
var page = 56; // int | The number of the page returned, starting with 1
var order = order_example; // String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]

try { 
    var result = api_instance.getCampaignTemplatesUsingGET(size, page, order);
    print(result);
} catch (e) {
    print("Exception when calling CampaignsApi->getCampaignTemplatesUsingGET: $e\n");
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

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCampaignUsingGET**
> CampaignResource getCampaignUsingGET(id)

Returns a single campaign

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new CampaignsApi();
var id = 789; // int | The campaign id

try { 
    var result = api_instance.getCampaignUsingGET(id);
    print(result);
} catch (e) {
    print("Exception when calling CampaignsApi->getCampaignUsingGET: $e\n");
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

# **getCampaignsUsingGET**
> PageResource«CampaignResource» getCampaignsUsingGET(filterActive, size, page, order)

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
    var result = api_instance.getCampaignsUsingGET(filterActive, size, page, order);
    print(result);
} catch (e) {
    print("Exception when calling CampaignsApi->getCampaignsUsingGET: $e\n");
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

# **getChallengesUsingGET**
> PageResource«ChallengeResource» getChallengesUsingGET(id)

List the challenges associated with a campaign

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new CampaignsApi();
var id = 789; // int | The campaign id

try { 
    var result = api_instance.getChallengesUsingGET(id);
    print(result);
} catch (e) {
    print("Exception when calling CampaignsApi->getChallengesUsingGET: $e\n");
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

# **removeChallengeUsingDELETE**
> removeChallengeUsingDELETE(campaignId, id)

Remove a challenge from a campaign

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: knetik_oauth
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new CampaignsApi();
var campaignId = 789; // int | The campaign id
var id = 789; // int | The challenge id

try { 
    api_instance.removeChallengeUsingDELETE(campaignId, id);
} catch (e) {
    print("Exception when calling CampaignsApi->removeChallengeUsingDELETE: $e\n");
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

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateCampaignTemplateUsingPUT**
> updateCampaignTemplateUsingPUT(id, campaignTemplateResource)

Update an campaign template

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: knetik_oauth
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new CampaignsApi();
var id = id_example; // String | The id of the template
var campaignTemplateResource = new TemplateResource(); // TemplateResource | The campaign template resource object

try { 
    api_instance.updateCampaignTemplateUsingPUT(id, campaignTemplateResource);
} catch (e) {
    print("Exception when calling CampaignsApi->updateCampaignTemplateUsingPUT: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the template | 
 **campaignTemplateResource** | [**TemplateResource**](TemplateResource.md)| The campaign template resource object | [optional] 

### Return type

void (empty response body)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateCampaignUsingPUT**
> updateCampaignUsingPUT(id, campaignResource)

Update a campaign

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: knetik_oauth
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new CampaignsApi();
var id = 789; // int | The campaign id
var campaignResource = new CampaignResource(); // CampaignResource | The campaign resource object

try { 
    api_instance.updateCampaignUsingPUT(id, campaignResource);
} catch (e) {
    print("Exception when calling CampaignsApi->updateCampaignUsingPUT: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The campaign id | 
 **campaignResource** | [**CampaignResource**](CampaignResource.md)| The campaign resource object | [optional] 

### Return type

void (empty response body)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

