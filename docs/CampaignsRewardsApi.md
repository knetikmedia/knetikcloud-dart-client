# swagger.api.CampaignsRewardsApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://localhost:8080/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createRewardSetUsingPOST**](CampaignsRewardsApi.md#createRewardSetUsingPOST) | **POST** /rewards | Create a reward set
[**deleteRewardSetUsingDELETE**](CampaignsRewardsApi.md#deleteRewardSetUsingDELETE) | **DELETE** /rewards/{id} | Delete a reward set
[**getRewardSetUsingGET**](CampaignsRewardsApi.md#getRewardSetUsingGET) | **GET** /rewards/{id} | Get a single reward set
[**getRewardSetsUsingGET**](CampaignsRewardsApi.md#getRewardSetsUsingGET) | **GET** /rewards | List and search reward sets
[**updateRewardSetUsingPUT**](CampaignsRewardsApi.md#updateRewardSetUsingPUT) | **PUT** /rewards/{id} | Update a reward set


# **createRewardSetUsingPOST**
> RewardSetResource createRewardSetUsingPOST(rewardSetResource)

Create a reward set

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new CampaignsRewardsApi();
var rewardSetResource = new RewardSetResource(); // RewardSetResource | The reward set resource object

try { 
    var result = api_instance.createRewardSetUsingPOST(rewardSetResource);
    print(result);
} catch (e) {
    print("Exception when calling CampaignsRewardsApi->createRewardSetUsingPOST: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **rewardSetResource** | [**RewardSetResource**](RewardSetResource.md)| The reward set resource object | [optional] 

### Return type

[**RewardSetResource**](RewardSetResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteRewardSetUsingDELETE**
> deleteRewardSetUsingDELETE(id)

Delete a reward set

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new CampaignsRewardsApi();
var id = 56; // int | The reward id

try { 
    api_instance.deleteRewardSetUsingDELETE(id);
} catch (e) {
    print("Exception when calling CampaignsRewardsApi->deleteRewardSetUsingDELETE: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The reward id | 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getRewardSetUsingGET**
> RewardSetResource getRewardSetUsingGET(id)

Get a single reward set

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new CampaignsRewardsApi();
var id = 56; // int | The reward id

try { 
    var result = api_instance.getRewardSetUsingGET(id);
    print(result);
} catch (e) {
    print("Exception when calling CampaignsRewardsApi->getRewardSetUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The reward id | 

### Return type

[**RewardSetResource**](RewardSetResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getRewardSetsUsingGET**
> PageResource«RewardSetResource» getRewardSetsUsingGET(size, page, order)

List and search reward sets

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new CampaignsRewardsApi();
var size = 56; // int | The number of objects returned per page
var page = 56; // int | The number of the page returned, starting with 1
var order = order_example; // String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]

try { 
    var result = api_instance.getRewardSetsUsingGET(size, page, order);
    print(result);
} catch (e) {
    print("Exception when calling CampaignsRewardsApi->getRewardSetsUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **String**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to id:ASC]

### Return type

[**PageResource«RewardSetResource»**](PageResource«RewardSetResource».md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateRewardSetUsingPUT**
> updateRewardSetUsingPUT(id, rewardSetResource)

Update a reward set

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new CampaignsRewardsApi();
var id = 56; // int | The reward id
var rewardSetResource = new RewardSetResource(); // RewardSetResource | The reward set resource object

try { 
    api_instance.updateRewardSetUsingPUT(id, rewardSetResource);
} catch (e) {
    print("Exception when calling CampaignsRewardsApi->updateRewardSetUsingPUT: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The reward id | 
 **rewardSetResource** | [**RewardSetResource**](RewardSetResource.md)| The reward set resource object | [optional] 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

