part of swagger.api;



class UtilBatchApi {
  final ApiClient apiClient;

  UtilBatchApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Get batch result with token
  ///
  /// Tokens expire in 24 hours
  Future<List<BatchReturn>> getBatch(String token) async {
    Object postBody = null;

    // verify required params are set
    if(token == null) {
     throw new ApiException(400, "Missing required param: token");
    }

    // create path and map variables
    String path = "/batch/{token}".replaceAll("{format}","json").replaceAll("{" + "token" + "}", token.toString());

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
      return apiClient.deserialize(response.body, 'List<BatchReturn>') as List<BatchReturn> ;
    } else {
      return null;
    }
  }
  /// Request to run API call given the method, content type, path url, and body of request
  ///
  /// Should the request take longer than one of the alloted timeout parameters, a token will be returned instead, which can be used on the token endpoint in this service
  Future<List<BatchReturn>> sendBatch({ Batch batch }) async {
    Object postBody = batch;

    // verify required params are set

    // create path and map variables
    String path = "/batch".replaceAll("{format}","json");

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
      return apiClient.deserialize(response.body, 'List<BatchReturn>') as List<BatchReturn> ;
    } else {
      return null;
    }
  }
}
