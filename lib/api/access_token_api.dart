part of swagger.api;



class Access_TokenApi {
  final ApiClient apiClient;

  Access_TokenApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Get access token
  ///
  /// 
  Future<OAuth2Resource> getOAuthToken(String grantType, String clientId, { String clientSecret, String username, String password, String token, String refreshToken }) async {
    Object postBody = null;

    // verify required params are set
    if(grantType == null) {
     throw new ApiException(400, "Missing required param: grantType");
    }
    if(clientId == null) {
     throw new ApiException(400, "Missing required param: clientId");
    }

    // create path and map variables
    String path = "/oauth/token".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = ["application/x-www-form-urlencoded"];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      
      if (grantType != null) {
        hasFields = true;
        mp.fields['grant_type'] = apiClient.parameterToString(grantType);
      }
      
      if (clientId != null) {
        hasFields = true;
        mp.fields['client_id'] = apiClient.parameterToString(clientId);
      }
      
      if (clientSecret != null) {
        hasFields = true;
        mp.fields['client_secret'] = apiClient.parameterToString(clientSecret);
      }
      
      if (username != null) {
        hasFields = true;
        mp.fields['username'] = apiClient.parameterToString(username);
      }
      
      if (password != null) {
        hasFields = true;
        mp.fields['password'] = apiClient.parameterToString(password);
      }
      
      if (token != null) {
        hasFields = true;
        mp.fields['token'] = apiClient.parameterToString(token);
      }
      
      if (refreshToken != null) {
        hasFields = true;
        mp.fields['refresh_token'] = apiClient.parameterToString(refreshToken);
      }
      
      if(hasFields)
        postBody = mp;
    }
    else {
      if (grantType != null)
        formParams['grant_type'] = apiClient.parameterToString(grantType);
if (clientId != null)
        formParams['client_id'] = apiClient.parameterToString(clientId);
if (clientSecret != null)
        formParams['client_secret'] = apiClient.parameterToString(clientSecret);
if (username != null)
        formParams['username'] = apiClient.parameterToString(username);
if (password != null)
        formParams['password'] = apiClient.parameterToString(password);
if (token != null)
        formParams['token'] = apiClient.parameterToString(token);
if (refreshToken != null)
        formParams['refresh_token'] = apiClient.parameterToString(refreshToken);
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
      return apiClient.deserialize(response.body, 'OAuth2Resource') as OAuth2Resource ;
    } else {
      return null;
    }
  }
}
