# swagger.api.UsersRelationshipsApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://localhost:8080/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addRelationshipUsingPOST**](UsersRelationshipsApi.md#addRelationshipUsingPOST) | **POST** /users/relationships | Create a user relationship
[**deleteRelationshipUsingDELETE**](UsersRelationshipsApi.md#deleteRelationshipUsingDELETE) | **DELETE** /users/relationships/{id} | Delete a user relationship
[**getRelationshipUsingGET**](UsersRelationshipsApi.md#getRelationshipUsingGET) | **GET** /users/relationships/{id} | Get a user relationship
[**getRelationshipsUsingGET**](UsersRelationshipsApi.md#getRelationshipsUsingGET) | **GET** /users/relationships | Get a list of user relationships
[**updateRelationshipUsingPUT**](UsersRelationshipsApi.md#updateRelationshipUsingPUT) | **PUT** /users/relationships/{id} | Update a user relationship


# **addRelationshipUsingPOST**
> UserRelationshipResource addRelationshipUsingPOST(relationship)

Create a user relationship

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new UsersRelationshipsApi();
var relationship = new UserRelationshipResource(); // UserRelationshipResource | The new relationship

try { 
    var result = api_instance.addRelationshipUsingPOST(relationship);
    print(result);
} catch (e) {
    print("Exception when calling UsersRelationshipsApi->addRelationshipUsingPOST: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **relationship** | [**UserRelationshipResource**](UserRelationshipResource.md)| The new relationship | [optional] 

### Return type

[**UserRelationshipResource**](UserRelationshipResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteRelationshipUsingDELETE**
> deleteRelationshipUsingDELETE(id)

Delete a user relationship

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new UsersRelationshipsApi();
var id = 789; // int | The id of the relationship

try { 
    api_instance.deleteRelationshipUsingDELETE(id);
} catch (e) {
    print("Exception when calling UsersRelationshipsApi->deleteRelationshipUsingDELETE: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The id of the relationship | 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getRelationshipUsingGET**
> UserRelationshipResource getRelationshipUsingGET(id)

Get a user relationship

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new UsersRelationshipsApi();
var id = 789; // int | The id of the relationship

try { 
    var result = api_instance.getRelationshipUsingGET(id);
    print(result);
} catch (e) {
    print("Exception when calling UsersRelationshipsApi->getRelationshipUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The id of the relationship | 

### Return type

[**UserRelationshipResource**](UserRelationshipResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getRelationshipsUsingGET**
> Page«UserRelationshipResource» getRelationshipsUsingGET()

Get a list of user relationships

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new UsersRelationshipsApi();

try { 
    var result = api_instance.getRelationshipsUsingGET();
    print(result);
} catch (e) {
    print("Exception when calling UsersRelationshipsApi->getRelationshipsUsingGET: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Page«UserRelationshipResource»**](Page«UserRelationshipResource».md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateRelationshipUsingPUT**
> UserRelationshipResource updateRelationshipUsingPUT(id, relationship)

Update a user relationship

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new UsersRelationshipsApi();
var id = 789; // int | The id of the relationship
var relationship = new UserRelationshipResource(); // UserRelationshipResource | The new relationship

try { 
    var result = api_instance.updateRelationshipUsingPUT(id, relationship);
    print(result);
} catch (e) {
    print("Exception when calling UsersRelationshipsApi->updateRelationshipUsingPUT: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The id of the relationship | 
 **relationship** | [**UserRelationshipResource**](UserRelationshipResource.md)| The new relationship | [optional] 

### Return type

[**UserRelationshipResource**](UserRelationshipResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

