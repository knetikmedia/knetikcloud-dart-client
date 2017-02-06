part of swagger.api;



class BRERuleEngineEventsApi {
  final ApiClient apiClient;

  BRERuleEngineEventsApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Fire a new event, based on an existing trigger
  ///
  /// Parameters within the event must match names and types from the trigger. Actual rule execution is asynchornous.
  Future sendBREEvent({ BreEvent breEvent }) async {
    Object postBody = breEvent;

    // verify required params are set

    // create path and map variables
    String path = "/bre/events".replaceAll("{format}","json");

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
