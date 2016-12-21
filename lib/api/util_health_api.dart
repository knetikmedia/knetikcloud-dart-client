part of swagger.api;



class UtilHealthApi {
  final ApiClient apiClient;

  UtilHealthApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Get health info
  ///
  /// 
  Future<Object> getHealthInfoUsingGET() async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/health".replaceAll("{format}","json");

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
      return apiClient.deserialize(response.body, 'Object') as Object ;
    } else {
      return null;
    }
  }
}
