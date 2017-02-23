# swagger.model.ArtistResource

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**additionalProperties** | [**Map&lt;String, Property&gt;**](Property.md) | A map of additional properties, keyed on the property name.  Must match the names and types defined in the template for this item type | [optional] [default to {}]
**born** | **String** | YYYY/MM/DD when this artist was born | [optional] [default to null]
**contributionCount** | **int** | The current number of contributions the artist has made | [optional] [default to null]
**contributions** | [**List&lt;ContributionResource&gt;**](ContributionResource.md) | The list of media this artist has contributed to as well as role(s) during contribution.  Use media endpoint to add contributions | [optional] [default to []]
**createdDate** | **int** | The date/time this resource was created in seconds since unix epoch | [optional] [default to null]
**died** | **String** | YYYY/MM/DD when this artist died | [optional] [default to null]
**id** | **int** | The unique ID for that resource | [optional] [default to null]
**longDescription** | **String** | The user friendly name of that resource. Defaults to blank string | [optional] [default to null]
**name** | **String** | The user friendly name of that resource | [default to null]
**priority** | **int** | The sort order priority ofr the artist.  Default 100 | [optional] [default to null]
**shortDescription** | **String** | The user friendly name of that resource. Defaults to blank string | [optional] [default to null]
**template** | **String** | An artist template this artist is validated against (private). May be null and no validation of additional_properties will be done | [optional] [default to null]
**updatedDate** | **int** | The date/time this resource was last updated in seconds since unix epoch | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


