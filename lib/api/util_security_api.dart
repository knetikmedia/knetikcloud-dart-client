part of swagger.api;



class UtilSecurityApi {
  final ApiClient apiClient;

  UtilSecurityApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Returns the authentication log for a user
  ///
  /// A log entry is recorded everytime a user requests a new token. Standard pagination available
  Future<PageResource«LocationLogResource»> getUserLocationLogUsingGET({ int userId }) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/security/country-log".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(userId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "user_id", userId));
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
      return apiClient.deserialize(response.body, 'PageResource«LocationLogResource»') as PageResource«LocationLogResource» ;
    } else {
      return null;
    }
  }
  /// Returns the authentication token details. Use /users endpoint for detailed user&#39;s info
  ///
  /// 
  Future<TokenDetailsResource> userUsingGET() async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/me".replaceAll("{format}","json");

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
      return apiClient.deserialize(response.body, 'TokenDetailsResource') as TokenDetailsResource ;
    } else {
      return null;
    }
  }
}
