# swagger.model.VendorResource

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**active** | **bool** | Whether the vendor is active.  Default &#x3D; true | [optional] [default to null]
**additionalProperties** | [**Map&lt;String, Property&gt;**](Property.md) | A map of additional properties, keyed on the property name (private). Must match the names and types defined in the template for this user type, or be an extra not from the template | [optional] [default to {}]
**createDate** | **int** | The date the vendor was added. Unix timestamp in seconds | [optional] [default to null]
**description** | **String** | A description of the vendor | [optional] [default to null]
**id** | **int** | The id of the vendor | [optional] [default to null]
**imageUrl** | **String** | The url of an image for the vendor | [optional] [default to null]
**manualApproval** | **bool** | Whether the vendor needs to manually approve invoices before they are paid.  A separate checkout flow is required in this case.  Default: false | [optional] [default to null]
**name** | **String** | The name of the vendor | [default to null]
**primaryContactEmail** | **String** | The primary email address for the vendor | [optional] [default to null]
**primaryContactName** | **String** | The name of the primary contact for the vendor | [optional] [default to null]
**primaryContactPhone** | **String** | The primary phone number for the vendor | [optional] [default to null]
**salesEmail** | **String** | The email address for sale inquiries for the vendor | [optional] [default to null]
**supportEmail** | **String** | The email address for support inquiries for the vendor | [optional] [default to null]
**template** | **String** | A user template this user is validated against (private). May be null and no validation of properties will be done | [optional] [default to null]
**updateDate** | **int** | The date the vendor was last updated. Unix timestamp in seconds | [optional] [default to null]
**url** | **String** | The url for the vendor&#39;s site | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


