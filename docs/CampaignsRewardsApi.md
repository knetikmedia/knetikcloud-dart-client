# swagger.api.CampaignsRewardsApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://devsandbox.knetikcloud.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createRewardSet**](CampaignsRewardsApi.md#createRewardSet) | **POST** /rewards | Create a reward set
[**deleteRewardSet**](CampaignsRewardsApi.md#deleteRewardSet) | **DELETE** /rewards/{id} | Delete a reward set
[**getRewardSet**](CampaignsRewardsApi.md#getRewardSet) | **GET** /rewards/{id} | Get a single reward set
[**getRewardSets**](CampaignsRewardsApi.md#getRewardSets) | **GET** /rewards | List and search reward sets
[**updateRewardSet**](CampaignsRewardsApi.md#updateRewardSet) | **PUT** /rewards/{id} | Update a reward set


# **createRewardSet**
> RewardSetResource createRewardSet(rewardSetResource)

Create a reward set

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new CampaignsRewardsApi();
var rewardSetResource = new RewardSetResource(); // RewardSetResource | The reward set resource object

try { 
    var result = api_instance.createRewardSet(rewardSetResource);
    print(result);
} catch (e) {
    print("Exception when calling CampaignsRewardsApi->createRewardSet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **rewardSetResource** | [**RewardSetResource**](RewardSetResource.md)| The reward set resource object | [optional] 

### Return type

[**RewardSetResource**](RewardSetResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteRewardSet**
> deleteRewardSet(id)

Delete a reward set

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new CampaignsRewardsApi();
var id = 56; // int | The reward id

try { 
    api_instance.deleteRewardSet(id);
} catch (e) {
    print("Exception when calling CampaignsRewardsApi->deleteRewardSet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The reward id | 

### Return type

void (empty response body)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getRewardSet**
> RewardSetResource getRewardSet(id)

Get a single reward set

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new CampaignsRewardsApi();
var id = 56; // int | The reward id

try { 
    var result = api_instance.getRewardSet(id);
    print(result);
} catch (e) {
    print("Exception when calling CampaignsRewardsApi->getRewardSet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The reward id | 

### Return type

[**RewardSetResource**](RewardSetResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getRewardSets**
> PageResource«RewardSetResource» getRewardSets(size, page, order)

List and search reward sets

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new CampaignsRewardsApi();
var size = 56; // int | The number of objects returned per page
var page = 56; // int | The number of the page returned, starting with 1
var order = order_example; // String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]

try { 
    var result = api_instance.getRewardSets(size, page, order);
    print(result);
} catch (e) {
    print("Exception when calling CampaignsRewardsApi->getRewardSets: $e\n");
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

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateRewardSet**
> RewardSetResource updateRewardSet(id, rewardSetResource)

Update a reward set

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new CampaignsRewardsApi();
var id = 56; // int | The reward id
var rewardSetResource = new RewardSetResource(); // RewardSetResource | The reward set resource object

try { 
    var result = api_instance.updateRewardSet(id, rewardSetResource);
    print(result);
} catch (e) {
    print("Exception when calling CampaignsRewardsApi->updateRewardSet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The reward id | 
 **rewardSetResource** | [**RewardSetResource**](RewardSetResource.md)| The reward set resource object | [optional] 

### Return type

[**RewardSetResource**](RewardSetResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

