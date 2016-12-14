part of swagger.api;



class BRERuleEngineTriggersApi {
  final ApiClient apiClient;

  BRERuleEngineTriggersApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Create a trigger
  ///
  /// Customer added triggers will not be fired automatically or have rules associated with them by default. Custom rules must be added to get use from the trigger and it must then be fired from the outside. See the Bre Event services
  Future<BreTriggerResource> createTriggerUsingPOST({ BreTriggerResource breTriggerResource }) async {
    Object postBody = breTriggerResource;

    // verify required params are set

    // create path and map variables
    String path = "/bre/triggers".replaceAll("{format}","json");

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
      return apiClient.deserialize(response.body, 'BreTriggerResource') as BreTriggerResource ;
    } else {
      return null;
    }
  }
  /// Delete a trigger
  ///
  /// May fail if there are existing rules against it. Cannot delete core triggers
  Future deleteTriggerUsingDELETE(String eventName) async {
    Object postBody = null;

    // verify required params are set
    if(eventName == null) {
     throw new ApiException(400, "Missing required param: eventName");
    }

    // create path and map variables
    String path = "/bre/triggers/{event_name}".replaceAll("{format}","json").replaceAll("{" + "eventName" + "}", eventName.toString());

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
                                             'DELETE',
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
  /// Get a single trigger
  ///
  /// 
  Future<BreTriggerResource> getTriggerUsingGET(String eventName) async {
    Object postBody = null;

    // verify required params are set
    if(eventName == null) {
     throw new ApiException(400, "Missing required param: eventName");
    }

    // create path and map variables
    String path = "/bre/triggers/{event_name}".replaceAll("{format}","json").replaceAll("{" + "eventName" + "}", eventName.toString());

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
      return apiClient.deserialize(response.body, 'BreTriggerResource') as BreTriggerResource ;
    } else {
      return null;
    }
  }
  /// List triggers
  ///
  /// 
  Future<Page«BreTriggerResource»> getTriggersUsingGET({ bool filterSystem, String filterCategory, String filterName, int size, int page }) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/bre/triggers".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(filterSystem != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "filter_system", filterSystem));
    }
    if(filterCategory != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "filter_category", filterCategory));
    }
    if(filterName != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "filter_name", filterName));
    }
    if(size != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "size", size));
    }
    if(page != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "page", page));
    }
    
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
      return apiClient.deserialize(response.body, 'Page«BreTriggerResource»') as Page«BreTriggerResource» ;
    } else {
      return null;
    }
  }
  /// Update a trigger
  ///
  /// May fail if new parameters mismatch requirements of existing rules. Cannot update core triggers
  Future updateTriggerUsingPUT(String eventName, { BreTriggerResource breTriggerResource }) async {
    Object postBody = breTriggerResource;

    // verify required params are set
    if(eventName == null) {
     throw new ApiException(400, "Missing required param: eventName");
    }

    // create path and map variables
    String path = "/bre/triggers/{event_name}".replaceAll("{format}","json").replaceAll("{" + "eventName" + "}", eventName.toString());

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
                                             'PUT',
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
