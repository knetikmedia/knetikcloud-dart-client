part of swagger.api;



class BRERuleEngineActionsApi {
  final ApiClient apiClient;

  BRERuleEngineActionsApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Get a list of available actions
  ///
  /// 
  Future<List<ActionResource>> getActionsUsingGET({ String filterCategory, String filterName }) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/bre/actions".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(filterCategory != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "filter_category", filterCategory));
    }
    if(filterName != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "filter_name", filterName));
    }
    
    List<String> contentTypes = ["application/json"];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["knetik_oauth"];

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
      return apiClient.deserialize(response.body, 'List<ActionResource>') as List<ActionResource> ;
    } else {
      return null;
    }
  }
}
