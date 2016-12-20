# swagger.api.UsersApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://localhost:8080/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addTagUsingPOST1**](UsersApi.md#addTagUsingPOST1) | **POST** /users/{user_id}/tags | Add a tag to a user
[**createUserTemplateUsingPOST**](UsersApi.md#createUserTemplateUsingPOST) | **POST** /users/templates | Create a user template
[**deleteUserTemplateUsingDELETE**](UsersApi.md#deleteUserTemplateUsingDELETE) | **DELETE** /users/templates/{id} | Delete a user template
[**doPasswordResetUsingPUT**](UsersApi.md#doPasswordResetUsingPUT) | **PUT** /users/{id}/password-reset | Choose a new password after a reset
[**getTagsUsingGET3**](UsersApi.md#getTagsUsingGET3) | **GET** /users/{user_id}/tags | List tags for a user
[**getUserTemplateUsingGET**](UsersApi.md#getUserTemplateUsingGET) | **GET** /users/templates/{id} | Get a single user template
[**getUserTemplatesUsingGET**](UsersApi.md#getUserTemplatesUsingGET) | **GET** /users/templates | List and search user templates
[**getUserUsingGET**](UsersApi.md#getUserUsingGET) | **GET** /users/{id} | Get a single user
[**getUsersUsingGET**](UsersApi.md#getUsersUsingGET) | **GET** /users | List and search users
[**initiatePasswordResetUsingPOST**](UsersApi.md#initiatePasswordResetUsingPOST) | **POST** /users/{id}/password-reset | Reset a user&#39;s password
[**registerUserUsingPOST**](UsersApi.md#registerUserUsingPOST) | **POST** /users | Register a new user
[**removeTagUsingDELETE1**](UsersApi.md#removeTagUsingDELETE1) | **DELETE** /users/{user_id}/tags/{tag} | Remove a tag from a user
[**setPasswordUsingPUT**](UsersApi.md#setPasswordUsingPUT) | **PUT** /users/{id}/password | Set a user&#39;s password
[**updateUserTemplateUsingPUT**](UsersApi.md#updateUserTemplateUsingPUT) | **PUT** /users/templates/{id} | Update a user template
[**updateUserUsingPUT**](UsersApi.md#updateUserUsingPUT) | **PUT** /users/{id} | Update a user&#39;s info


# **addTagUsingPOST1**
> addTagUsingPOST1(userId, tag)

Add a tag to a user

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new UsersApi();
var userId = 56; // int | The id of the user
var tag = new String(); // String | tag

try { 
    api_instance.addTagUsingPOST1(userId, tag);
} catch (e) {
    print("Exception when calling UsersApi->addTagUsingPOST1: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **int**| The id of the user | 
 **tag** | **String**| tag | 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createUserTemplateUsingPOST**
> TemplateResource createUserTemplateUsingPOST(userTemplateResource)

Create a user template

User Templates define a type of user and the properties they have

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new UsersApi();
var userTemplateResource = new TemplateResource(); // TemplateResource | The user template resource object

try { 
    var result = api_instance.createUserTemplateUsingPOST(userTemplateResource);
    print(result);
} catch (e) {
    print("Exception when calling UsersApi->createUserTemplateUsingPOST: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userTemplateResource** | [**TemplateResource**](TemplateResource.md)| The user template resource object | [optional] 

### Return type

[**TemplateResource**](TemplateResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteUserTemplateUsingDELETE**
> deleteUserTemplateUsingDELETE(id, cascade)

Delete a user template

If cascade = 'detach', it will force delete the template even if it's attached to other objects

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new UsersApi();
var id = id_example; // String | The id of the template
var cascade = cascade_example; // String | The value needed to delete used templates

try { 
    api_instance.deleteUserTemplateUsingDELETE(id, cascade);
} catch (e) {
    print("Exception when calling UsersApi->deleteUserTemplateUsingDELETE: $e\n");
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
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **doPasswordResetUsingPUT**
> doPasswordResetUsingPUT(id, newPasswordRequest)

Choose a new password after a reset

Finish resetting a user's password using the secret provided from the password-reset endpoint.  Password should be in plain text and will be encrypted on receipt. Use SSL for security.

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new UsersApi();
var id = 56; // int | The id of the user
var newPasswordRequest = new NewPasswordRequest(); // NewPasswordRequest | The new password request object

try { 
    api_instance.doPasswordResetUsingPUT(id, newPasswordRequest);
} catch (e) {
    print("Exception when calling UsersApi->doPasswordResetUsingPUT: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The id of the user | 
 **newPasswordRequest** | [**NewPasswordRequest**](NewPasswordRequest.md)| The new password request object | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTagsUsingGET3**
> List<String> getTagsUsingGET3(userId)

List tags for a user

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new UsersApi();
var userId = 56; // int | The id of the user

try { 
    var result = api_instance.getTagsUsingGET3(userId);
    print(result);
} catch (e) {
    print("Exception when calling UsersApi->getTagsUsingGET3: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **int**| The id of the user | 

### Return type

**List<String>**

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUserTemplateUsingGET**
> TemplateResource getUserTemplateUsingGET(id)

Get a single user template

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new UsersApi();
var id = id_example; // String | The id of the template

try { 
    var result = api_instance.getUserTemplateUsingGET(id);
    print(result);
} catch (e) {
    print("Exception when calling UsersApi->getUserTemplateUsingGET: $e\n");
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
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUserTemplatesUsingGET**
> Page«TemplateResource» getUserTemplatesUsingGET(size, page, order)

List and search user templates

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new UsersApi();
var size = 56; // int | The number of objects returned per page
var page = 56; // int | The number of the page returned, starting with 1
var order = order_example; // String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]

try { 
    var result = api_instance.getUserTemplatesUsingGET(size, page, order);
    print(result);
} catch (e) {
    print("Exception when calling UsersApi->getUserTemplatesUsingGET: $e\n");
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
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUserUsingGET**
> UserResource getUserUsingGET(id)

Get a single user

Additional private info is included as USERS_ADMIN

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new UsersApi();
var id = id_example; // String | The id of the user or 'me'

try { 
    var result = api_instance.getUserUsingGET(id);
    print(result);
} catch (e) {
    print("Exception when calling UsersApi->getUserUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the user or &#39;me&#39; | 

### Return type

[**UserResource**](UserResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUsersUsingGET**
> Page«UserBaseResource» getUsersUsingGET(filterRole, filterDisplayname, filterEmail, filterFirstname, filterFullname, filterLastname, filterUsername, filterTag, filterGroup, size, page, order)

List and search users

Additional private info is included as USERS_ADMIN

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new UsersApi();
var filterRole = filterRole_example; // String | Filter for users whose roles has the provided role
var filterDisplayname = filterDisplayname_example; // String | Filter for users whose display name starts with provided string.
var filterEmail = filterEmail_example; // String | Filter for users whose email starts with provided string. Requires USERS_ADMIN permission
var filterFirstname = filterFirstname_example; // String | Filter for users whose first name starts with provided string. Requires USERS_ADMIN permission
var filterFullname = filterFullname_example; // String | Filter for users whose full name starts with provided string. Requires USERS_ADMIN permission
var filterLastname = filterLastname_example; // String | Filter for users whose last name starts with provided string. Requires USERS_ADMIN permission
var filterUsername = filterUsername_example; // String | Filter for users whose username starts with the provided string. Requires USERS_ADMIN permission
var filterTag = filterTag_example; // String | Filter for users who have a given tag
var filterGroup = filterGroup_example; // String | Filter for users in a given group, by unique name
var size = 56; // int | The number of objects returned per page
var page = 56; // int | The number of the page returned, starting with 1
var order = order_example; // String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]

try { 
    var result = api_instance.getUsersUsingGET(filterRole, filterDisplayname, filterEmail, filterFirstname, filterFullname, filterLastname, filterUsername, filterTag, filterGroup, size, page, order);
    print(result);
} catch (e) {
    print("Exception when calling UsersApi->getUsersUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterRole** | **String**| Filter for users whose roles has the provided role | [optional] 
 **filterDisplayname** | **String**| Filter for users whose display name starts with provided string. | [optional] 
 **filterEmail** | **String**| Filter for users whose email starts with provided string. Requires USERS_ADMIN permission | [optional] 
 **filterFirstname** | **String**| Filter for users whose first name starts with provided string. Requires USERS_ADMIN permission | [optional] 
 **filterFullname** | **String**| Filter for users whose full name starts with provided string. Requires USERS_ADMIN permission | [optional] 
 **filterLastname** | **String**| Filter for users whose last name starts with provided string. Requires USERS_ADMIN permission | [optional] 
 **filterUsername** | **String**| Filter for users whose username starts with the provided string. Requires USERS_ADMIN permission | [optional] 
 **filterTag** | **String**| Filter for users who have a given tag | [optional] 
 **filterGroup** | **String**| Filter for users in a given group, by unique name | [optional] 
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **String**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to id:ASC]

### Return type

[**Page«UserBaseResource»**](Page«UserBaseResource».md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **initiatePasswordResetUsingPOST**
> initiatePasswordResetUsingPOST(id)

Reset a user's password

A reset code will be generated and a 'forgot_password' BRE event will be fired with that code; this can be routed to the user as needed and submitted to the 'choose a new password' endpoint.

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new UsersApi();
var id = 56; // int | The id of the user

try { 
    api_instance.initiatePasswordResetUsingPOST(id);
} catch (e) {
    print("Exception when calling UsersApi->initiatePasswordResetUsingPOST: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The id of the user | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **registerUserUsingPOST**
> UserResource registerUserUsingPOST(userResource)

Register a new user

Password should be in plain text and will be encrypted on receipt. Use SSL for security

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new UsersApi();
var userResource = new UserResource(); // UserResource | The user resource object

try { 
    var result = api_instance.registerUserUsingPOST(userResource);
    print(result);
} catch (e) {
    print("Exception when calling UsersApi->registerUserUsingPOST: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userResource** | [**UserResource**](UserResource.md)| The user resource object | [optional] 

### Return type

[**UserResource**](UserResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **removeTagUsingDELETE1**
> removeTagUsingDELETE1(userId, tag)

Remove a tag from a user

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new UsersApi();
var userId = 56; // int | The id of the user
var tag = tag_example; // String | The tag to remove

try { 
    api_instance.removeTagUsingDELETE1(userId, tag);
} catch (e) {
    print("Exception when calling UsersApi->removeTagUsingDELETE1: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **int**| The id of the user | 
 **tag** | **String**| The tag to remove | 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **setPasswordUsingPUT**
> setPasswordUsingPUT(id, password)

Set a user's password

Password should be in plain text and will be encrypted on receipt. Use SSL for security.

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new UsersApi();
var id = 56; // int | The id of the user
var password = new String(); // String | The new plain text password

try { 
    api_instance.setPasswordUsingPUT(id, password);
} catch (e) {
    print("Exception when calling UsersApi->setPasswordUsingPUT: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The id of the user | 
 **password** | **String**| The new plain text password | [optional] 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateUserTemplateUsingPUT**
> updateUserTemplateUsingPUT(id, userTemplateResource)

Update a user template

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new UsersApi();
var id = id_example; // String | The id of the template
var userTemplateResource = new TemplateResource(); // TemplateResource | The user template resource object

try { 
    api_instance.updateUserTemplateUsingPUT(id, userTemplateResource);
} catch (e) {
    print("Exception when calling UsersApi->updateUserTemplateUsingPUT: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the template | 
 **userTemplateResource** | [**TemplateResource**](TemplateResource.md)| The user template resource object | [optional] 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateUserUsingPUT**
> updateUserUsingPUT(id, userResource)

Update a user's info

Password will not be edited on this endpoint, use password specific endpoints.

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new UsersApi();
var id = id_example; // String | The id of the user or 'me'
var userResource = new UserResource(); // UserResource | The user resource object

try { 
    api_instance.updateUserUsingPUT(id, userResource);
} catch (e) {
    print("Exception when calling UsersApi->updateUserUsingPUT: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the user or &#39;me&#39; | 
 **userResource** | [**UserResource**](UserResource.md)| The user resource object | [optional] 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

