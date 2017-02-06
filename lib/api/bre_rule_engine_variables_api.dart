part of swagger.api;



class BRERuleEngineVariablesApi {
  final ApiClient apiClient;

  BRERuleEngineVariablesApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Get a list of variable types available
  ///
  /// Types include integer, string, user and invoice. These are used to qualify trigger parameters and action variables with strong typing.
  Future<List<VariableTypeResource>> getBREVariableTypes() async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/bre/variable-types".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
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
      return apiClient.deserialize(response.body, 'List<VariableTypeResource>') as List<VariableTypeResource> ;
    } else {
      return null;
    }
  }
}
