# swagger.model.UserResource

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**additionalProperties** | [**Map&lt;String, Property&gt;**](Property.md) | A map of additional properties, keyed on the property name (private). Must match the names and types defined in the template for this user type, or be an extra not from the template | [optional] [default to {}]
**address** | **String** | The first line of the user&#39;s address (private) | [optional] [default to null]
**address2** | **String** | The second line of user&#39;s address (private) | [optional] [default to null]
**avatarUrl** | **String** | The url of the user&#39;s avatar image | [optional] [default to null]
**children** | [**List&lt;UserRelationshipReferenceResource&gt;**](UserRelationshipReferenceResource.md) | Relationships where this user is the parent. Read-Only, manage through separate endpoints | [optional] [default to []]
**city** | **String** | The user&#39;s city (private) | [optional] [default to null]
**countryCode** | **String** | The ISO3 code for the country from the user&#39;s address (private). Will be filled in based on GeoIP country at registration if not provided. | [optional] [default to null]
**currencyCode** | **String** | The code for the user&#39;s real money currency (private) | [optional] [default to null]
**dateOfBirth** | **int** | The user&#39;s date of birth (private) as a unix timestamp | [optional] [default to null]
**description** | **String** | The user&#39;s self description (private) | [optional] [default to null]
**displayName** | **String** | The chosen display name of the user, defaults to username if not present | [optional] [default to null]
**email** | **String** | The user&#39;s email address (private). May be required and/or unique depending on system configuration (both on by default). Must match standard email requirements if provided (RFC 2822) | [default to null]
**firstName** | **String** | The user&#39;s first name (private) | [optional] [default to null]
**fullname** | **String** | The user&#39;s full name (private) | [optional] [default to null]
**gender** | **String** | The user&#39;s gender (private) | [optional] [default to null]
**id** | **int** | The id of the user | [optional] [default to null]
**languageCode** | **String** | The ISO3 code for the user&#39;s currency (private) | [optional] [default to null]
**lastActivity** | **int** | The date the user last interacted with the API (private) | [optional] [default to null]
**lastName** | **String** | The user&#39;s last name (private) | [optional] [default to null]
**lastUpdated** | **int** | The date the user&#39;s info was last updated as a unix timestamp | [optional] [default to null]
**memberSince** | **int** | The user&#39;s date of registration as a unix timestamp | [optional] [default to null]
**mobileNumber** | **String** | The user&#39;s mobile phone number (private) | [optional] [default to null]
**parents** | [**List&lt;UserRelationshipReferenceResource&gt;**](UserRelationshipReferenceResource.md) | Relationships where this user is the child. Read-Only, manage through separate endpoints | [optional] [default to []]
**password** | **String** | The plain text password for the new user account. Required for registration; ignored on profile update.  Use password specific endpoints for editing | [optional] [default to null]
**postalCode** | **String** | The user&#39;s postal code (private) | [optional] [default to null]
**state** | **String** | The user&#39;s state (private) | [optional] [default to null]
**tags** | **List&lt;String&gt;** | Tags on the user. Can only be set by admin. Max length per tag is 64 characters | [optional] [default to []]
**template** | **String** | A user template this user is validated against (private). May be null and no validation of properties will be done | [optional] [default to null]
**timezoneCode** | **String** | The code for the user&#39;s timezone (private) | [optional] [default to null]
**username** | **String** | The login username for the user (private). May be set to match email if system does not require usernames separately. | [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


