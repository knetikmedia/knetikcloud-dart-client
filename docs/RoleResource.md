# swagger.model.RoleResource

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**clientCount** | **int** | The number of clients this role is assigned to | [optional] [default to null]
**createdDate** | **int** | The date the role was added. Unix timestamp in seconds | [optional] [default to null]
**locked** | **bool** | Whether a role is locked from being deleted | [optional] [default to null]
**name** | **String** | The name of the role used for display purposes | [optional] [default to null]
**role** | **String** | The keyword that defines the role | [optional] [default to null]
**rolePermission** | [**List&lt;PermissionResource&gt;**](PermissionResource.md) | The list of permissions this role has | [optional] [default to []]
**userCount** | **int** | The number of users this role is assigned to | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


