part of swagger.api;



class Util_SecurityApi {
  final ApiClient apiClient;

  Util_SecurityApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Returns the authentication log for a user
  ///
  /// A log entry is recorded everytime a user requests a new token. Standard pagination available. &lt;br&gt;&lt;br&gt;&lt;b&gt;Permissions Needed:&lt;/b&gt; SECURITY_ADMIN
  Future<PageResource«LocationLogResource»> getUserLocationLog({ int userId, int size, int page, String order }) async {
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
      return apiClient.deserialize(response.body, 'PageResource«LocationLogResource»') as PageResource«LocationLogResource» ;
    } else {
      return null;
    }
  }
  /// Returns the authentication token details. Use /users endpoint for detailed user&#39;s info
  ///
  /// &lt;b&gt;Permissions Needed:&lt;/b&gt; SECURITY_ADMIN
  Future<TokenDetailsResource> getUserTokenDetails() async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/me".replaceAll("{format}","json");

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
      return apiClient.deserialize(response.body, 'TokenDetailsResource') as TokenDetailsResource ;
    } else {
      return null;
    }
  }
}
