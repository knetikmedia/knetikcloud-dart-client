part of swagger.api;



class MediaModerationApi {
  final ApiClient apiClient;

  MediaModerationApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Add a flag
  ///
  /// 
  Future<FlagResource> addFlag({ FlagResource flagResource }) async {
    Object postBody = flagResource;

    // verify required params are set

    // create path and map variables
    String path = "/moderation/flags".replaceAll("{format}","json");

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
      return apiClient.deserialize(response.body, 'FlagResource') as FlagResource ;
    } else {
      return null;
    }
  }
  /// Delete a flag
  ///
  /// 
  Future deleteFlag({ String contextName, String contextId, int userId }) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/moderation/flags".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(contextName != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "context_name", contextName));
    }
    if(contextId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "context_id", contextId));
    }
    if(userId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "user_id", userId));
    }
    
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
  /// Returns a page of flags
  ///
  /// 
  Future<PageResource«FlagResource»> getFlags({ String filterContext, String filterContextId, int filterUserId, int size, int page }) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/moderation/flags".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(filterContext != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "filter_context", filterContext));
    }
    if(filterContextId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "filter_context_id", filterContextId));
    }
    if(filterUserId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "filter_user_id", filterUserId));
    }
    if(size != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "size", size));
    }
    if(page != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "page", page));
    }
    
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
      return apiClient.deserialize(response.body, 'PageResource«FlagResource»') as PageResource«FlagResource» ;
    } else {
      return null;
    }
  }
  /// Get a flag report
  ///
  /// 
  Future<FlagReportResource> getModerationReport(int id) async {
    Object postBody = null;

    // verify required params are set
    if(id == null) {
     throw new ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/moderation/reports/{id}".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

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
      return apiClient.deserialize(response.body, 'FlagReportResource') as FlagReportResource ;
    } else {
      return null;
    }
  }
  /// Returns a page of flag reports
  ///
  /// Context can be either a free-form string or a pre-defined context name
  Future<PageResource«FlagReportResource»> getModerationReports({ bool excludeResolved, String filterContext, String filterContextId, int size, int page }) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/moderation/reports".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(excludeResolved != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "exclude_resolved", excludeResolved));
    }
    if(filterContext != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "filter_context", filterContext));
    }
    if(filterContextId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "filter_context_id", filterContextId));
    }
    if(size != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "size", size));
    }
    if(page != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "page", page));
    }
    
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
      return apiClient.deserialize(response.body, 'PageResource«FlagReportResource»') as PageResource«FlagReportResource» ;
    } else {
      return null;
    }
  }
  /// Update a flag report
  ///
  /// Lets you set the resolution of a report. Resolution types is {banned,ignore} in case of &#39;banned&#39; you will need to pass the reason.
  Future updateModerationReport(int id, { FlagReportResource flagReportResource }) async {
    Object postBody = flagReportResource;

    // verify required params are set
    if(id == null) {
     throw new ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/moderation/reports/{id}".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

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
