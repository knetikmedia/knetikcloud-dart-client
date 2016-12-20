# swagger.api.PaymentsWalletsApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://localhost:8080/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getWalletTotalsUsingGET**](PaymentsWalletsApi.md#getWalletTotalsUsingGET) | **GET** /wallets/totals | Retrieves a summation of wallet balances by currency code
[**getWalletUsingGET**](PaymentsWalletsApi.md#getWalletUsingGET) | **GET** /users/{user_id}/wallets/{currency_code} | Returns the user&#39;s wallet for the given currency code
[**getWalletsUsingGET**](PaymentsWalletsApi.md#getWalletsUsingGET) | **GET** /users/{user_id}/wallets | List all of a user&#39;s wallets
[**getWalletsUsingGET1**](PaymentsWalletsApi.md#getWalletsUsingGET1) | **GET** /wallets | Retrieve a list of wallets across the system
[**transactionHistoryUsingGET**](PaymentsWalletsApi.md#transactionHistoryUsingGET) | **GET** /wallets/transactions | Retrieve wallet transactions across the system
[**updateBalanceUsingPUT**](PaymentsWalletsApi.md#updateBalanceUsingPUT) | **PUT** /users/{user_id}/wallets/{currency_code}/balance | Updates the balance for a user&#39;s wallet
[**userTransactionHistoryUsingGET**](PaymentsWalletsApi.md#userTransactionHistoryUsingGET) | **GET** /users/{user_id}/wallets/{currency_code}/transactions | Retrieve a user&#39;s wallet transactions


# **getWalletTotalsUsingGET**
> PageResource«WalletTotalResponse» getWalletTotalsUsingGET()

Retrieves a summation of wallet balances by currency code

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new PaymentsWalletsApi();

try { 
    var result = api_instance.getWalletTotalsUsingGET();
    print(result);
} catch (e) {
    print("Exception when calling PaymentsWalletsApi->getWalletTotalsUsingGET: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**PageResource«WalletTotalResponse»**](PageResource«WalletTotalResponse».md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getWalletUsingGET**
> SimpleWallet getWalletUsingGET(userId, currencyCode)

Returns the user's wallet for the given currency code

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new PaymentsWalletsApi();
var userId = 56; // int | The ID of the user for whom wallet is being retrieved
var currencyCode = currencyCode_example; // String | Currency code of the user's wallet

try { 
    var result = api_instance.getWalletUsingGET(userId, currencyCode);
    print(result);
} catch (e) {
    print("Exception when calling PaymentsWalletsApi->getWalletUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **int**| The ID of the user for whom wallet is being retrieved | 
 **currencyCode** | **String**| Currency code of the user&#39;s wallet | 

### Return type

[**SimpleWallet**](SimpleWallet.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getWalletsUsingGET**
> List<SimpleWallet> getWalletsUsingGET(userId)

List all of a user's wallets

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new PaymentsWalletsApi();
var userId = 56; // int | The ID of the user for whom wallets are being retrieved

try { 
    var result = api_instance.getWalletsUsingGET(userId);
    print(result);
} catch (e) {
    print("Exception when calling PaymentsWalletsApi->getWalletsUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **int**| The ID of the user for whom wallets are being retrieved | 

### Return type

[**List<SimpleWallet>**](SimpleWallet.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getWalletsUsingGET1**
> PageResource«SimpleWallet» getWalletsUsingGET1(size, page, order)

Retrieve a list of wallets across the system

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new PaymentsWalletsApi();
var size = 56; // int | The number of objects returned per page
var page = 56; // int | The number of the page returned, starting with 1
var order = order_example; // String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]

try { 
    var result = api_instance.getWalletsUsingGET1(size, page, order);
    print(result);
} catch (e) {
    print("Exception when calling PaymentsWalletsApi->getWalletsUsingGET1: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **String**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to id:ASC]

### Return type

[**PageResource«SimpleWallet»**](PageResource«SimpleWallet».md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **transactionHistoryUsingGET**
> PageResource«WalletTransactionResource» transactionHistoryUsingGET(filterInvoice, filterType, filterMaxDate, filterMinDate, filterSign, filterUserId, filterUsername, filterDetails, filterCurrencyCode, size, page, order)

Retrieve wallet transactions across the system

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new PaymentsWalletsApi();
var filterInvoice = 56; // int | Filter for transactions from a specific invoice
var filterType = filterType_example; // String | Filter for transactions with specified type
var filterMaxDate = 789; // int | Filter for transactions from no earlier than the specified date as a unix timestamp in seconds
var filterMinDate = 789; // int | Filter for transactions from no later than the specified date as a unix timestamp in seconds
var filterSign = filterSign_example; // String | Filter for transactions with amount with the given sign
var filterUserId = 56; // int | Filter for transactions for specific userId
var filterUsername = filterUsername_example; // String | Filter for transactions for specific username that start with the given string
var filterDetails = filterDetails_example; // String | Filter for transactions for specific details that start with the given string
var filterCurrencyCode = filterCurrencyCode_example; // String | Filter for transactions for specific currency code
var size = 56; // int | The number of objects returned per page
var page = 56; // int | The number of the page returned, starting with 1
var order = order_example; // String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]

try { 
    var result = api_instance.transactionHistoryUsingGET(filterInvoice, filterType, filterMaxDate, filterMinDate, filterSign, filterUserId, filterUsername, filterDetails, filterCurrencyCode, size, page, order);
    print(result);
} catch (e) {
    print("Exception when calling PaymentsWalletsApi->transactionHistoryUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterInvoice** | **int**| Filter for transactions from a specific invoice | [optional] 
 **filterType** | **String**| Filter for transactions with specified type | [optional] 
 **filterMaxDate** | **int**| Filter for transactions from no earlier than the specified date as a unix timestamp in seconds | [optional] 
 **filterMinDate** | **int**| Filter for transactions from no later than the specified date as a unix timestamp in seconds | [optional] 
 **filterSign** | **String**| Filter for transactions with amount with the given sign | [optional] 
 **filterUserId** | **int**| Filter for transactions for specific userId | [optional] 
 **filterUsername** | **String**| Filter for transactions for specific username that start with the given string | [optional] 
 **filterDetails** | **String**| Filter for transactions for specific details that start with the given string | [optional] 
 **filterCurrencyCode** | **String**| Filter for transactions for specific currency code | [optional] 
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **String**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to id:ASC]

### Return type

[**PageResource«WalletTransactionResource»**](PageResource«WalletTransactionResource».md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateBalanceUsingPUT**
> WalletTransactionResource updateBalanceUsingPUT(userId, currencyCode, request)

Updates the balance for a user's wallet

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new PaymentsWalletsApi();
var userId = 56; // int | The ID of the user for whom wallet is being modified
var currencyCode = currencyCode_example; // String | Currency code of the user's wallet
var request = new WalletAlterRequest(); // WalletAlterRequest | The requested balance modification to be made to the user's wallet

try { 
    var result = api_instance.updateBalanceUsingPUT(userId, currencyCode, request);
    print(result);
} catch (e) {
    print("Exception when calling PaymentsWalletsApi->updateBalanceUsingPUT: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **int**| The ID of the user for whom wallet is being modified | 
 **currencyCode** | **String**| Currency code of the user&#39;s wallet | 
 **request** | [**WalletAlterRequest**](WalletAlterRequest.md)| The requested balance modification to be made to the user&#39;s wallet | [optional] 

### Return type

[**WalletTransactionResource**](WalletTransactionResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userTransactionHistoryUsingGET**
> PageResource«WalletTransactionResource» userTransactionHistoryUsingGET(userId, currencyCode, filterType, filterMaxDate, filterMinDate, filterSign, size, page, order)

Retrieve a user's wallet transactions

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new PaymentsWalletsApi();
var userId = 56; // int | The ID of the user for whom wallet transactions are being retrieved
var currencyCode = currencyCode_example; // String | Currency code of the user's wallet
var filterType = filterType_example; // String | Filter for transactions with specified type
var filterMaxDate = 789; // int | Filter for transactions from no earlier than the specified date as a unix timestamp in seconds
var filterMinDate = 789; // int | Filter for transactions from no later than the specified date as a unix timestamp in seconds
var filterSign = filterSign_example; // String | Filter for transactions with amount with the given sign.  Allowable values: ('positive', 'negative')
var size = 56; // int | The number of objects returned per page
var page = 56; // int | The number of the page returned, starting with 1
var order = order_example; // String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]

try { 
    var result = api_instance.userTransactionHistoryUsingGET(userId, currencyCode, filterType, filterMaxDate, filterMinDate, filterSign, size, page, order);
    print(result);
} catch (e) {
    print("Exception when calling PaymentsWalletsApi->userTransactionHistoryUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **int**| The ID of the user for whom wallet transactions are being retrieved | 
 **currencyCode** | **String**| Currency code of the user&#39;s wallet | 
 **filterType** | **String**| Filter for transactions with specified type | [optional] 
 **filterMaxDate** | **int**| Filter for transactions from no earlier than the specified date as a unix timestamp in seconds | [optional] 
 **filterMinDate** | **int**| Filter for transactions from no later than the specified date as a unix timestamp in seconds | [optional] 
 **filterSign** | **String**| Filter for transactions with amount with the given sign.  Allowable values: (&#39;positive&#39;, &#39;negative&#39;) | [optional] 
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **String**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to id:ASC]

### Return type

[**PageResource«WalletTransactionResource»**](PageResource«WalletTransactionResource».md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

