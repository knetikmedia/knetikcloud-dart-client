part of swagger.api;



class Util_VersionApi {
  final ApiClient apiClient;

  Util_VersionApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Get current version info
  ///
  /// &lt;b&gt;Permissions Needed:&lt;/b&gt; ANY
  Future<Version> getVersion() async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/version".replaceAll("{format}","json");

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
      return apiClient.deserialize(response.body, 'Version') as Version ;
    } else {
      return null;
    }
  }
}
