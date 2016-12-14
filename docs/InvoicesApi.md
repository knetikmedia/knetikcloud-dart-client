# swagger.api.InvoicesApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://devsandbox.knetikcloud.com/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createInvoiceUsingPOST**](InvoicesApi.md#createInvoiceUsingPOST) | **POST** /invoices | Create an invoice
[**getInvoiceHistoryUsingGET**](InvoicesApi.md#getInvoiceHistoryUsingGET) | **GET** /invoices | Retrieve invoices
[**getInvoiceUsingGET**](InvoicesApi.md#getInvoiceUsingGET) | **GET** /invoices/{id} | Retrieve an invoice
[**getLogsUsingGET**](InvoicesApi.md#getLogsUsingGET) | **GET** /invoices/{id}/logs | List invoice logs
[**listFulFillmentStatusesUsingGET**](InvoicesApi.md#listFulFillmentStatusesUsingGET) | **GET** /invoices/fulfillment-statuses | Lists available fulfillment statuses
[**listPaymentStatusesUsingGET**](InvoicesApi.md#listPaymentStatusesUsingGET) | **GET** /invoices/payment-statuses | Lists available payment statuses
[**payInvoiceUsingPOST**](InvoicesApi.md#payInvoiceUsingPOST) | **POST** /invoices/{id}/payments | Trigger payment of an invoice
[**setItemFulfillmentStatusUsingPUT**](InvoicesApi.md#setItemFulfillmentStatusUsingPUT) | **PUT** /invoices/{id}/items/{sku}/fulfillment-status | Set the fulfillment status of an invoice item
[**setPaymentStatusUsingPUT**](InvoicesApi.md#setPaymentStatusUsingPUT) | **PUT** /invoices/{id}/payment-status | Set the payment status of an invoice
[**updateBillingInfoUsingPUT**](InvoicesApi.md#updateBillingInfoUsingPUT) | **PUT** /invoices/{id}/billing-address | Set or update billing info


# **createInvoiceUsingPOST**
> List<InvoiceResource> createInvoiceUsingPOST(req)

Create an invoice

Create an invoice(s) by providing a cart GUID. Note that there may be multiple invoices created, one per vendor.

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new InvoicesApi();
var req = new InvoiceCreateRequest(); // InvoiceCreateRequest | Invoice to be created

try { 
    var result = api_instance.createInvoiceUsingPOST(req);
    print(result);
} catch (e) {
    print("Exception when calling InvoicesApi->createInvoiceUsingPOST: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **req** | [**InvoiceCreateRequest**](InvoiceCreateRequest.md)| Invoice to be created | [optional] 

### Return type

[**List<InvoiceResource>**](InvoiceResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getInvoiceHistoryUsingGET**
> Page«InvoiceResource» getInvoiceHistoryUsingGET(filterUser, filterEmail, filterFulfillmentStatus, filterPaymentStatus, filterItemName, filterCreatedDate, size, page, order)

Retrieve invoices

Without INVOICES_ADMIN permission the results are automatically filtered for only the logged in user's invoices. It is recomended however that filter_user be added to avoid issues for admin users accidentally getting additional invoices.

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new InvoicesApi();
var filterUser = 56; // int | The id of a user to get invoices for. Automtically added if not being called with admin permissions.
var filterEmail = filterEmail_example; // String | Filters invoices by customer's email. Admins only.
var filterFulfillmentStatus = filterFulfillmentStatus_example; // String | Filters invoices by fulfillment status type. Can be a comma separated list of statuses
var filterPaymentStatus = filterPaymentStatus_example; // String | Filters invoices by payment status type. Can be a comma separated list of statuses
var filterItemName = filterItemName_example; // String | Filters invoices by item name containing the given string
var filterCreatedDate = filterCreatedDate_example; // String | Filters invoices by creation date. Multiple values possible for range search. Format: filter_date_created=OP,ts&... where OP in (GT, LT, GOE, LOE, EQ) and ts is a unix timestamp in seconds. Ex: filter_date_created=GT,1452154258&filter_date_created=LT,1554254874
var size = 56; // int | The number of objects returned per page
var page = 56; // int | The number of the page returned, starting with 1
var order = order_example; // String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]

try { 
    var result = api_instance.getInvoiceHistoryUsingGET(filterUser, filterEmail, filterFulfillmentStatus, filterPaymentStatus, filterItemName, filterCreatedDate, size, page, order);
    print(result);
} catch (e) {
    print("Exception when calling InvoicesApi->getInvoiceHistoryUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterUser** | **int**| The id of a user to get invoices for. Automtically added if not being called with admin permissions. | [optional] 
 **filterEmail** | **String**| Filters invoices by customer&#39;s email. Admins only. | [optional] 
 **filterFulfillmentStatus** | **String**| Filters invoices by fulfillment status type. Can be a comma separated list of statuses | [optional] 
 **filterPaymentStatus** | **String**| Filters invoices by payment status type. Can be a comma separated list of statuses | [optional] 
 **filterItemName** | **String**| Filters invoices by item name containing the given string | [optional] 
 **filterCreatedDate** | **String**| Filters invoices by creation date. Multiple values possible for range search. Format: filter_date_created&#x3D;OP,ts&amp;... where OP in (GT, LT, GOE, LOE, EQ) and ts is a unix timestamp in seconds. Ex: filter_date_created&#x3D;GT,1452154258&amp;filter_date_created&#x3D;LT,1554254874 | [optional] 
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **String**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to 1]

### Return type

[**Page«InvoiceResource»**](Page«InvoiceResource».md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getInvoiceUsingGET**
> InvoiceResource getInvoiceUsingGET(id, postalCode)

Retrieve an invoice

The postal code associated with the invoice may be required for security purposes if the invoice has one set and the config postal_code_required is set to true. Send 'none' if the invoice has no postal code.

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new InvoicesApi();
var id = 56; // int | The id of the invoice
var postalCode = postalCode_example; // String | The postal code of the invoice or 'none'.

try { 
    var result = api_instance.getInvoiceUsingGET(id, postalCode);
    print(result);
} catch (e) {
    print("Exception when calling InvoicesApi->getInvoiceUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The id of the invoice | 
 **postalCode** | **String**| The postal code of the invoice or &#39;none&#39;. | [optional] 

### Return type

[**InvoiceResource**](InvoiceResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getLogsUsingGET**
> Page«InvoiceLogEntry» getLogsUsingGET(id, size, page)

List invoice logs

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new InvoicesApi();
var id = 56; // int | The id of the invoice
var size = 56; // int | The number of objects returned per page
var page = 56; // int | The number of the page returned, starting with 1

try { 
    var result = api_instance.getLogsUsingGET(id, size, page);
    print(result);
} catch (e) {
    print("Exception when calling InvoicesApi->getLogsUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The id of the invoice | 
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]

### Return type

[**Page«InvoiceLogEntry»**](Page«InvoiceLogEntry».md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listFulFillmentStatusesUsingGET**
> List<String> listFulFillmentStatusesUsingGET()

Lists available fulfillment statuses

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new InvoicesApi();

try { 
    var result = api_instance.listFulFillmentStatusesUsingGET();
    print(result);
} catch (e) {
    print("Exception when calling InvoicesApi->listFulFillmentStatusesUsingGET: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**List<String>**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listPaymentStatusesUsingGET**
> List<String> listPaymentStatusesUsingGET()

Lists available payment statuses

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new InvoicesApi();

try { 
    var result = api_instance.listPaymentStatusesUsingGET();
    print(result);
} catch (e) {
    print("Exception when calling InvoicesApi->listPaymentStatusesUsingGET: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**List<String>**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **payInvoiceUsingPOST**
> payInvoiceUsingPOST(id, request)

Trigger payment of an invoice

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new InvoicesApi();
var id = 56; // int | The id of the invoice
var request = new PayBySavedMethodRequest(); // PayBySavedMethodRequest | Payment info

try { 
    api_instance.payInvoiceUsingPOST(id, request);
} catch (e) {
    print("Exception when calling InvoicesApi->payInvoiceUsingPOST: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The id of the invoice | 
 **request** | [**PayBySavedMethodRequest**](PayBySavedMethodRequest.md)| Payment info | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **setItemFulfillmentStatusUsingPUT**
> setItemFulfillmentStatusUsingPUT(id, sku, status)

Set the fulfillment status of an invoice item

This allows external fulfillment systems to report success or failure. Fulfillment status changes are restricted by a specific flow determining which status can lead to which.

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new InvoicesApi();
var id = 56; // int | The id of the invoice
var sku = sku_example; // String | The sku of an item in the invoice
var status = new String(); // String | The new fulfillment status for the item. Additional options may be available based on configuration.  Allowable values:  'unfulfilled', 'fulfilled', 'not fulfillable', 'failed', 'processing', 'failed_permanent', 'delayed'

try { 
    api_instance.setItemFulfillmentStatusUsingPUT(id, sku, status);
} catch (e) {
    print("Exception when calling InvoicesApi->setItemFulfillmentStatusUsingPUT: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The id of the invoice | 
 **sku** | **String**| The sku of an item in the invoice | 
 **status** | **String**| The new fulfillment status for the item. Additional options may be available based on configuration.  Allowable values:  &#39;unfulfilled&#39;, &#39;fulfilled&#39;, &#39;not fulfillable&#39;, &#39;failed&#39;, &#39;processing&#39;, &#39;failed_permanent&#39;, &#39;delayed&#39; | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **setPaymentStatusUsingPUT**
> setPaymentStatusUsingPUT(id, request)

Set the payment status of an invoice

This may trigger fulfillment if setting the status to 'paid'. This is mainly intended to support external payment systems that cannot be incorporated into the payment method system. Payment status changes are restricted by a specific flow determining which status can lead to which.

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new InvoicesApi();
var id = 56; // int | The id of the invoice
var request = new InvoicePaymentStatusRequest(); // InvoicePaymentStatusRequest | Payment status info

try { 
    api_instance.setPaymentStatusUsingPUT(id, request);
} catch (e) {
    print("Exception when calling InvoicesApi->setPaymentStatusUsingPUT: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The id of the invoice | 
 **request** | [**InvoicePaymentStatusRequest**](InvoicePaymentStatusRequest.md)| Payment status info | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateBillingInfoUsingPUT**
> updateBillingInfoUsingPUT(id, billingInfoRequest)

Set or update billing info

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new InvoicesApi();
var id = 56; // int | The id of the invoice
var billingInfoRequest = new AddressResource(); // AddressResource | Address info

try { 
    api_instance.updateBillingInfoUsingPUT(id, billingInfoRequest);
} catch (e) {
    print("Exception when calling InvoicesApi->updateBillingInfoUsingPUT: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The id of the invoice | 
 **billingInfoRequest** | [**AddressResource**](AddressResource.md)| Address info | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

