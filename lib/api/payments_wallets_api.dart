part of swagger.api;



class PaymentsWalletsApi {
  final ApiClient apiClient;

  PaymentsWalletsApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Returns the user&#39;s wallet for the given currency code
  ///
  /// 
  Future<SimpleWallet> getUserWallet(int userId, String currencyCode) async {
    Object postBody = null;

    // verify required params are set
    if(userId == null) {
     throw new ApiException(400, "Missing required param: userId");
    }
    if(currencyCode == null) {
     throw new ApiException(400, "Missing required param: currencyCode");
    }

    // create path and map variables
    String path = "/users/{user_id}/wallets/{currency_code}".replaceAll("{format}","json").replaceAll("{" + "userId" + "}", userId.toString()).replaceAll("{" + "currencyCode" + "}", currencyCode.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = ["application/json"];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["OAuth2"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return apiClient.deserialize(response.body, 'SimpleWallet') as SimpleWallet ;
    } else {
      return null;
    }
  }
  /// Retrieve a user&#39;s wallet transactions
  ///
  /// 
  Future<PageResource«WalletTransactionResource»> getUserWalletTransactions(int userId, String currencyCode, { String filterType, int filterMaxDate, int filterMinDate, String filterSign, int size, int page, String order }) async {
    Object postBody = null;

    // verify required params are set
    if(userId == null) {
     throw new ApiException(400, "Missing required param: userId");
    }
    if(currencyCode == null) {
     throw new ApiException(400, "Missing required param: currencyCode");
    }

    // create path and map variables
    String path = "/users/{user_id}/wallets/{currency_code}/transactions".replaceAll("{format}","json").replaceAll("{" + "userId" + "}", userId.toString()).replaceAll("{" + "currencyCode" + "}", currencyCode.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(filterType != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "filter_type", filterType));
    }
    if(filterMaxDate != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "filter_max_date", filterMaxDate));
    }
    if(filterMinDate != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "filter_min_date", filterMinDate));
    }
    if(filterSign != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "filter_sign", filterSign));
    }
    if(size != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "size", size));
    }
    if(page != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "page", page));
    }
    if(order != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "order", order));
    }
    
    List<String> contentTypes = ["application/json"];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["OAuth2"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return apiClient.deserialize(response.body, 'PageResource«WalletTransactionResource»') as PageResource«WalletTransactionResource» ;
    } else {
      return null;
    }
  }
  /// List all of a user&#39;s wallets
  ///
  /// 
  Future<List<SimpleWallet>> getUserWallets(int userId) async {
    Object postBody = null;

    // verify required params are set
    if(userId == null) {
     throw new ApiException(400, "Missing required param: userId");
    }

    // create path and map variables
    String path = "/users/{user_id}/wallets".replaceAll("{format}","json").replaceAll("{" + "userId" + "}", userId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = ["application/json"];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["OAuth2"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return apiClient.deserialize(response.body, 'List<SimpleWallet>') as List<SimpleWallet> ;
    } else {
      return null;
    }
  }
  /// Retrieves a summation of wallet balances by currency code
  ///
  /// 
  Future<PageResource«WalletTotalResponse»> getWalletBalances() async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/wallets/totals".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = ["application/json"];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["OAuth2"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return apiClient.deserialize(response.body, 'PageResource«WalletTotalResponse»') as PageResource«WalletTotalResponse» ;
    } else {
      return null;
    }
  }
  /// Retrieve wallet transactions across the system
  ///
  /// 
  Future<PageResource«WalletTransactionResource»> getWalletTransactions({ int filterInvoice, String filterType, String filterDate, String filterSign, int filterUserId, String filterUsername, String filterDetails, String filterCurrencyCode, int size, int page, String order }) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/wallets/transactions".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(filterInvoice != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "filter_invoice", filterInvoice));
    }
    if(filterType != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "filter_type", filterType));
    }
    if(filterDate != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "filter_date", filterDate));
    }
    if(filterSign != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "filter_sign", filterSign));
    }
    if(filterUserId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "filter_user_id", filterUserId));
    }
    if(filterUsername != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "filter_username", filterUsername));
    }
    if(filterDetails != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "filter_details", filterDetails));
    }
    if(filterCurrencyCode != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "filter_currency_code", filterCurrencyCode));
    }
    if(size != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "size", size));
    }
    if(page != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "page", page));
    }
    if(order != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "order", order));
    }
    
    List<String> contentTypes = ["application/json"];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["OAuth2"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return apiClient.deserialize(response.body, 'PageResource«WalletTransactionResource»') as PageResource«WalletTransactionResource» ;
    } else {
      return null;
    }
  }
  /// Retrieve a list of wallets across the system
  ///
  /// 
  Future<PageResource«SimpleWallet»> getWallets({ int size, int page, String order }) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/wallets".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(size != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "size", size));
    }
    if(page != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "page", page));
    }
    if(order != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "order", order));
    }
    
    List<String> contentTypes = ["application/json"];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["OAuth2"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return apiClient.deserialize(response.body, 'PageResource«SimpleWallet»') as PageResource«SimpleWallet» ;
    } else {
      return null;
    }
  }
  /// Updates the balance for a user&#39;s wallet
  ///
  /// 
  Future<WalletTransactionResource> updateWalletBalance(int userId, String currencyCode, { WalletAlterRequest request }) async {
    Object postBody = request;

    // verify required params are set
    if(userId == null) {
     throw new ApiException(400, "Missing required param: userId");
    }
    if(currencyCode == null) {
     throw new ApiException(400, "Missing required param: currencyCode");
    }

    // create path and map variables
    String path = "/users/{user_id}/wallets/{currency_code}/balance".replaceAll("{format}","json").replaceAll("{" + "userId" + "}", userId.toString()).replaceAll("{" + "currencyCode" + "}", currencyCode.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = ["application/json"];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["OAuth2"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'PUT',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return apiClient.deserialize(response.body, 'WalletTransactionResource') as WalletTransactionResource ;
    } else {
      return null;
    }
  }
}
