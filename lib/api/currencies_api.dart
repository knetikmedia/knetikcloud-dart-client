part of swagger.api;



class CurrenciesApi {
  final ApiClient apiClient;

  CurrenciesApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Create a currency
  ///
  /// &lt;b&gt;Permissions Needed:&lt;/b&gt; CURRENCIES_ADMIN
  Future<CurrencyResource> createCurrency({ CurrencyResource currency }) async {
    Object postBody = currency;

    // verify required params are set

    // create path and map variables
    String path = "/currencies".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = ["application/json"];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["oauth2_client_credentials_grant", "oauth2_password_grant"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'POST',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return apiClient.deserialize(response.body, 'CurrencyResource') as CurrencyResource ;
    } else {
      return null;
    }
  }
  /// Delete a currency
  ///
  /// &lt;b&gt;Permissions Needed:&lt;/b&gt; CURRENCIES_ADMIN
  Future deleteCurrency(String code) async {
    Object postBody = null;

    // verify required params are set
    if(code == null) {
     throw new ApiException(400, "Missing required param: code");
    }

    // create path and map variables
    String path = "/currencies/{code}".replaceAll("{format}","json").replaceAll("{" + "code" + "}", code.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["oauth2_client_credentials_grant", "oauth2_password_grant"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'DELETE',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return ;
    } else {
      return ;
    }
  }
  /// List and search currencies
  ///
  /// &lt;b&gt;Permissions Needed:&lt;/b&gt; ANY
  Future<PageResource«CurrencyResource»> getCurrencies({ bool filterDefault, bool filterEnabledCurrencies, String filterType, int size, int page, String order }) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/currencies".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(filterDefault != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "filter_default", filterDefault));
    }
    if(filterEnabledCurrencies != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "filter_enabled_currencies", filterEnabledCurrencies));
    }
    if(filterType != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "filter_type", filterType));
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
    
    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["oauth2_client_credentials_grant", "oauth2_password_grant"];

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
      return apiClient.deserialize(response.body, 'PageResource«CurrencyResource»') as PageResource«CurrencyResource» ;
    } else {
      return null;
    }
  }
  /// Get a single currency
  ///
  /// &lt;b&gt;Permissions Needed:&lt;/b&gt; ANY
  Future<CurrencyResource> getCurrency(String code) async {
    Object postBody = null;

    // verify required params are set
    if(code == null) {
     throw new ApiException(400, "Missing required param: code");
    }

    // create path and map variables
    String path = "/currencies/{code}".replaceAll("{format}","json").replaceAll("{" + "code" + "}", code.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["oauth2_client_credentials_grant", "oauth2_password_grant"];

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
      return apiClient.deserialize(response.body, 'CurrencyResource') as CurrencyResource ;
    } else {
      return null;
    }
  }
  /// Update a currency
  ///
  /// &lt;b&gt;Permissions Needed:&lt;/b&gt; CURRENCIES_ADMIN
  Future updateCurrency(String code, { CurrencyResource currency }) async {
    Object postBody = currency;

    // verify required params are set
    if(code == null) {
     throw new ApiException(400, "Missing required param: code");
    }

    // create path and map variables
    String path = "/currencies/{code}".replaceAll("{format}","json").replaceAll("{" + "code" + "}", code.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = ["application/json"];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["oauth2_client_credentials_grant", "oauth2_password_grant"];

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
      return ;
    } else {
      return ;
    }
  }
}
