part of swagger.api;



class AuthTokensApi {
  final ApiClient apiClient;

  AuthTokensApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Delete tokens by username, client id, or both
  ///
  /// 
  Future deleteTokens({ String username, String clientId }) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/auth/tokens".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(username != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "username", username));
    }
    if(clientId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "client_id", clientId));
    }
    
    List<String> contentTypes = ["application/json"];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

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
  /// Get a single token by username and client id
  ///
  /// 
  Future<OauthAccessTokenResource> getToken(String username, String clientId) async {
    Object postBody = null;

    // verify required params are set
    if(username == null) {
     throw new ApiException(400, "Missing required param: username");
    }
    if(clientId == null) {
     throw new ApiException(400, "Missing required param: clientId");
    }

    // create path and map variables
    String path = "/auth/tokens/{username}/{client_id}".replaceAll("{format}","json").replaceAll("{" + "username" + "}", username.toString()).replaceAll("{" + "client_id" + "}", clientId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = ["application/json"];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

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
      return apiClient.deserialize(response.body, 'OauthAccessTokenResource') as OauthAccessTokenResource ;
    } else {
      return null;
    }
  }
  /// List usernames and client ids
  ///
  /// Token value not shown
  Future<PageResource«OauthAccessTokenResource»> getTokens({ String filterClientId, String filterUsername, int size, int page, String order }) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/auth/tokens".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(filterClientId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "filter_client_id", filterClientId));
    }
    if(filterUsername != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "filter_username", filterUsername));
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
    List<String> authNames = [];

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
      return apiClient.deserialize(response.body, 'PageResource«OauthAccessTokenResource»') as PageResource«OauthAccessTokenResource» ;
    } else {
      return null;
    }
  }
}
