part of swagger.api;



class Payments_OptimalApi {
  final ApiClient apiClient;

  Payments_OptimalApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Initiate silent post with Optimal
  ///
  /// Will return the url for a hosted payment endpoint to post to. See Optimal documentation for details. &lt;br&gt;&lt;br&gt;&lt;b&gt;Permissions Needed:&lt;/b&gt; OPTIMAL_ADMIN or owner
  Future<String> silentPostOptimal({ OptimalPaymentRequest request }) async {
    Object postBody = request;

    // verify required params are set

    // create path and map variables
    String path = "/payment/provider/optimal/silent".replaceAll("{format}","json");

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
      return apiClient.deserialize(response.body, 'String') as String ;
    } else {
      return null;
    }
  }
}
