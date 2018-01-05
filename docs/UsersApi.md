# swagger.api.UsersApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://devsandbox.knetikcloud.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addUserTag**](UsersApi.md#addUserTag) | **POST** /users/{user_id}/tags | Add a tag to a user
[**createUserTemplate**](UsersApi.md#createUserTemplate) | **POST** /users/templates | Create a user template
[**deleteUserTemplate**](UsersApi.md#deleteUserTemplate) | **DELETE** /users/templates/{id} | Delete a user template
[**getUser**](UsersApi.md#getUser) | **GET** /users/{id} | Get a single user
[**getUserTags**](UsersApi.md#getUserTags) | **GET** /users/{user_id}/tags | List tags for a user
[**getUserTemplate**](UsersApi.md#getUserTemplate) | **GET** /users/templates/{id} | Get a single user template
[**getUserTemplates**](UsersApi.md#getUserTemplates) | **GET** /users/templates | List and search user templates
[**getUsers**](UsersApi.md#getUsers) | **GET** /users | List and search users
[**passwordReset**](UsersApi.md#passwordReset) | **PUT** /users/{id}/password-reset | Choose a new password after a reset
[**registerUser**](UsersApi.md#registerUser) | **POST** /users | Register a new user
[**removeUserTag**](UsersApi.md#removeUserTag) | **DELETE** /users/{user_id}/tags/{tag} | Remove a tag from a user
[**setPassword**](UsersApi.md#setPassword) | **PUT** /users/{id}/password | Set a user&#39;s password
[**startPasswordReset**](UsersApi.md#startPasswordReset) | **POST** /users/{id}/password-reset | Reset a user&#39;s password
[**submitPasswordReset**](UsersApi.md#submitPasswordReset) | **POST** /users/password-reset | Reset a user&#39;s password without user id
[**updateUser**](UsersApi.md#updateUser) | **PUT** /users/{id} | Update a user
[**updateUserTemplate**](UsersApi.md#updateUserTemplate) | **PUT** /users/templates/{id} | Update a user template


# **addUserTag**
> addUserTag(userId, tag)

Add a tag to a user

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new UsersApi();
var userId = 56; // int | The id of the user
var tag = new StringWrapper(); // StringWrapper | tag

try { 
    api_instance.addUserTag(userId, tag);
} catch (e) {
    print("Exception when calling UsersApi->addUserTag: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **int**| The id of the user | 
 **tag** | [**StringWrapper**](StringWrapper.md)| tag | 

### Return type

void (empty response body)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createUserTemplate**
> TemplateResource createUserTemplate(userTemplateResource)

Create a user template

User Templates define a type of user and the properties they have

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new UsersApi();
var userTemplateResource = new TemplateResource(); // TemplateResource | The user template resource object

try { 
    var result = api_instance.createUserTemplate(userTemplateResource);
    print(result);
} catch (e) {
    print("Exception when calling UsersApi->createUserTemplate: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userTemplateResource** | [**TemplateResource**](TemplateResource.md)| The user template resource object | [optional] 

### Return type

[**TemplateResource**](TemplateResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteUserTemplate**
> deleteUserTemplate(id, cascade)

Delete a user template

If cascade = 'detach', it will force delete the template even if it's attached to other objects

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new UsersApi();
var id = id_example; // String | The id of the template
var cascade = cascade_example; // String | The value needed to delete used templates

try { 
    api_instance.deleteUserTemplate(id, cascade);
} catch (e) {
    print("Exception when calling UsersApi->deleteUserTemplate: $e\n");
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

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUser**
> UserResource getUser(id)

Get a single user

Additional private info is included as USERS_ADMIN

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new UsersApi();
var id = id_example; // String | The id of the user or 'me'

try { 
    var result = api_instance.getUser(id);
    print(result);
} catch (e) {
    print("Exception when calling UsersApi->getUser: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the user or &#39;me&#39; | 

### Return type

[**UserResource**](UserResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUserTags**
> List<String> getUserTags(userId)

List tags for a user

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new UsersApi();
var userId = 56; // int | The id of the user

try { 
    var result = api_instance.getUserTags(userId);
    print(result);
} catch (e) {
    print("Exception when calling UsersApi->getUserTags: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **int**| The id of the user | 

### Return type

**List<String>**

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUserTemplate**
> TemplateResource getUserTemplate(id)

Get a single user template

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new UsersApi();
var id = id_example; // String | The id of the template

try { 
    var result = api_instance.getUserTemplate(id);
    print(result);
} catch (e) {
    print("Exception when calling UsersApi->getUserTemplate: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the template | 

### Return type

[**TemplateResource**](TemplateResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUserTemplates**
> PageResource«TemplateResource» getUserTemplates(size, page, order)

List and search user templates

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new UsersApi();
var size = 56; // int | The number of objects returned per page
var page = 56; // int | The number of the page returned, starting with 1
var order = order_example; // String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]

try { 
    var result = api_instance.getUserTemplates(size, page, order);
    print(result);
} catch (e) {
    print("Exception when calling UsersApi->getUserTemplates: $e\n");
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

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUsers**
> PageResource«UserBaseResource» getUsers(filterDisplayname, filterEmail, filterFirstname, filterFullname, filterLastname, filterUsername, filterTag, filterGroup, filterRole, filterLastActivity, filterIdList, filterSearch, size, page, order)

List and search users

Additional private info is included as USERS_ADMIN

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new UsersApi();
var filterDisplayname = filterDisplayname_example; // String | Filter for users whose display name starts with provided string.
var filterEmail = filterEmail_example; // String | Filter for users whose email starts with provided string. Requires USERS_ADMIN permission
var filterFirstname = filterFirstname_example; // String | Filter for users whose first name starts with provided string. Requires USERS_ADMIN permission
var filterFullname = filterFullname_example; // String | Filter for users whose full name starts with provided string. Requires USERS_ADMIN permission
var filterLastname = filterLastname_example; // String | Filter for users whose last name starts with provided string. Requires USERS_ADMIN permission
var filterUsername = filterUsername_example; // String | Filter for users whose username starts with the provided string. Requires USERS_ADMIN permission
var filterTag = filterTag_example; // String | Filter for users who have a given tag
var filterGroup = filterGroup_example; // String | Filter for users in a given group, by unique name
var filterRole = filterRole_example; // String | Filter for users with a given role
var filterLastActivity = filterLastActivity_example; // String | A comma separated string without spaces.  First value is the operator to search on, second value is the date, a unix timestamp in seconds.  Allowed operators: (GT, LT, EQ, GOE, LOE).
var filterIdList = filterIdList_example; // String | A comma separated list of ids.
var filterSearch = filterSearch_example; // String | Filter for users whose display_name starts with the provided string, or username if display_name is null
var size = 56; // int | The number of objects returned per page
var page = 56; // int | The number of the page returned, starting with 1
var order = order_example; // String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]

try { 
    var result = api_instance.getUsers(filterDisplayname, filterEmail, filterFirstname, filterFullname, filterLastname, filterUsername, filterTag, filterGroup, filterRole, filterLastActivity, filterIdList, filterSearch, size, page, order);
    print(result);
} catch (e) {
    print("Exception when calling UsersApi->getUsers: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterDisplayname** | **String**| Filter for users whose display name starts with provided string. | [optional] 
 **filterEmail** | **String**| Filter for users whose email starts with provided string. Requires USERS_ADMIN permission | [optional] 
 **filterFirstname** | **String**| Filter for users whose first name starts with provided string. Requires USERS_ADMIN permission | [optional] 
 **filterFullname** | **String**| Filter for users whose full name starts with provided string. Requires USERS_ADMIN permission | [optional] 
 **filterLastname** | **String**| Filter for users whose last name starts with provided string. Requires USERS_ADMIN permission | [optional] 
 **filterUsername** | **String**| Filter for users whose username starts with the provided string. Requires USERS_ADMIN permission | [optional] 
 **filterTag** | **String**| Filter for users who have a given tag | [optional] 
 **filterGroup** | **String**| Filter for users in a given group, by unique name | [optional] 
 **filterRole** | **String**| Filter for users with a given role | [optional] 
 **filterLastActivity** | **String**| A comma separated string without spaces.  First value is the operator to search on, second value is the date, a unix timestamp in seconds.  Allowed operators: (GT, LT, EQ, GOE, LOE). | [optional] 
 **filterIdList** | **String**| A comma separated list of ids. | [optional] 
 **filterSearch** | **String**| Filter for users whose display_name starts with the provided string, or username if display_name is null | [optional] 
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **String**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to id:ASC]

### Return type

[**PageResource«UserBaseResource»**](PageResource«UserBaseResource».md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **passwordReset**
> passwordReset(id, newPasswordRequest)

Choose a new password after a reset

Finish resetting a user's password using the secret provided from the password-reset endpoint.  Password should be in plain text and will be encrypted on receipt. Use SSL for security.

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new UsersApi();
var id = 56; // int | The id of the user
var newPasswordRequest = new NewPasswordRequest(); // NewPasswordRequest | The new password request object

try { 
    api_instance.passwordReset(id, newPasswordRequest);
} catch (e) {
    print("Exception when calling UsersApi->passwordReset: $e\n");
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

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **registerUser**
> UserResource registerUser(userResource)

Register a new user

Password should be in plain text and will be encrypted on receipt. Use SSL for security

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new UsersApi();
var userResource = new UserResource(); // UserResource | The user resource object

try { 
    var result = api_instance.registerUser(userResource);
    print(result);
} catch (e) {
    print("Exception when calling UsersApi->registerUser: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userResource** | [**UserResource**](UserResource.md)| The user resource object | [optional] 

### Return type

[**UserResource**](UserResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **removeUserTag**
> removeUserTag(userId, tag)

Remove a tag from a user

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new UsersApi();
var userId = 56; // int | The id of the user
var tag = tag_example; // String | The tag to remove

try { 
    api_instance.removeUserTag(userId, tag);
} catch (e) {
    print("Exception when calling UsersApi->removeUserTag: $e\n");
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

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **setPassword**
> setPassword(id, password)

Set a user's password

Password should be in plain text and will be encrypted on receipt. Use SSL for security.

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new UsersApi();
var id = 56; // int | The id of the user
var password = new StringWrapper(); // StringWrapper | The new plain text password

try { 
    api_instance.setPassword(id, password);
} catch (e) {
    print("Exception when calling UsersApi->setPassword: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The id of the user | 
 **password** | [**StringWrapper**](StringWrapper.md)| The new plain text password | [optional] 

### Return type

void (empty response body)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **startPasswordReset**
> startPasswordReset(id)

Reset a user's password

A reset code will be generated and a 'forgot_password' BRE event will be fired with that code.  The default system rule will send an email to the selected user if an email service has been setup. You can modify that rule in BRE to send an SMS instead or any other type of notification as you see fit

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new UsersApi();
var id = 56; // int | The id of the user

try { 
    api_instance.startPasswordReset(id);
} catch (e) {
    print("Exception when calling UsersApi->startPasswordReset: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The id of the user | 

### Return type

void (empty response body)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **submitPasswordReset**
> submitPasswordReset(passwordReset)

Reset a user's password without user id

A reset code will be generated and a 'forgot_password' BRE event will be fired with that code.  The default system rule will send an email to the selected user if an email service has been setup. You can modify that rule in BRE to send an SMS instead or any other type of notification as you see fit.  Must submit their email, username, or mobile phone number

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new UsersApi();
var passwordReset = new PasswordResetRequest(); // PasswordResetRequest | An object containing one of three methods to look up a user

try { 
    api_instance.submitPasswordReset(passwordReset);
} catch (e) {
    print("Exception when calling UsersApi->submitPasswordReset: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **passwordReset** | [**PasswordResetRequest**](PasswordResetRequest.md)| An object containing one of three methods to look up a user | [optional] 

### Return type

void (empty response body)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateUser**
> updateUser(id, userResource)

Update a user

Password will not be edited on this endpoint, use password specific endpoints.

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new UsersApi();
var id = id_example; // String | The id of the user or 'me'
var userResource = new UserResource(); // UserResource | The user resource object

try { 
    api_instance.updateUser(id, userResource);
} catch (e) {
    print("Exception when calling UsersApi->updateUser: $e\n");
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

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateUserTemplate**
> TemplateResource updateUserTemplate(id, userTemplateResource)

Update a user template

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: oauth2_password_grant
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new UsersApi();
var id = id_example; // String | The id of the template
var userTemplateResource = new TemplateResource(); // TemplateResource | The user template resource object

try { 
    var result = api_instance.updateUserTemplate(id, userTemplateResource);
    print(result);
} catch (e) {
    print("Exception when calling UsersApi->updateUserTemplate: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the template | 
 **userTemplateResource** | [**TemplateResource**](TemplateResource.md)| The user template resource object | [optional] 

### Return type

[**TemplateResource**](TemplateResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

