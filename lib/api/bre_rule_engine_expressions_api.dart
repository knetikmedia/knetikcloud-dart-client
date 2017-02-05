part of swagger.api;



class BRERuleEngineExpressionsApi {
  final ApiClient apiClient;

  BRERuleEngineExpressionsApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Get a list of &#39;lookup&#39; type expressions
  ///
  /// These are expression types that take a second expression as input and produce a value. These can be used in addition to the standard types, like parameter, global and constant (see BRE documentation for details).
  Future<List<LookupTypeResource>> getLookupTypesUsingGET() async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/bre/expressions/lookup".replaceAll("{format}","json");

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
      return apiClient.deserialize(response.body, 'List<LookupTypeResource>') as List<LookupTypeResource> ;
    } else {
      return null;
    }
  }
}
