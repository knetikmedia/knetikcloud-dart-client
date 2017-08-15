part of swagger.api;



class SocialGoogleApi {
  final ApiClient apiClient;

  SocialGoogleApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Link google account
  ///
  /// Links the current user account to a google account, using the acccess token from google. Can also be used to update the access token after it has expired.
  Future linkAccounts1({ GoogleToken googleToken }) async {
    Object postBody = googleToken;

    // verify required params are set

    // create path and map variables
    String path = "/social/google/users".replaceAll("{format}","json");

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
