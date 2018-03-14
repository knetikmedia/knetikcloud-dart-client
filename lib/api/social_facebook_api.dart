part of swagger.api;



class Social_FacebookApi {
  final ApiClient apiClient;

  Social_FacebookApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Link facebook account
  ///
  /// Links the current user account to a facebook account, using the acccess token from facebook. Can also be used to update the access token after it has expired. &lt;br&gt;&lt;br&gt;&lt;b&gt;Permissions Needed:&lt;/b&gt; Non-facebook user token
  Future linkAccounts({ FacebookToken facebookToken }) async {
    Object postBody = facebookToken;

    // verify required params are set

    // create path and map variables
    String path = "/social/facebook/users".replaceAll("{format}","json");

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
      return ;
    } else {
      return ;
    }
  }
}
