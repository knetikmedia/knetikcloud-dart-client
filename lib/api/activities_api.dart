part of swagger.api;



class ActivitiesApi {
  final ApiClient apiClient;

  ActivitiesApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Add a user to an occurrence
  ///
  /// If called with no body, defaults to the user making the call.
  Future<ActivityOccurrenceResource> addUser(int activityOccurrenceId, { bool test, bool bypassRestrictions, IntWrapper userId }) async {
    Object postBody = userId;

    // verify required params are set
    if(activityOccurrenceId == null) {
     throw new ApiException(400, "Missing required param: activityOccurrenceId");
    }

    // create path and map variables
    String path = "/activity-occurrences/{activity_occurrence_id}/users".replaceAll("{format}","json").replaceAll("{" + "activity_occurrence_id" + "}", activityOccurrenceId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(test != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "test", test));
    }
    if(bypassRestrictions != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "bypass_restrictions", bypassRestrictions));
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
      return apiClient.deserialize(response.body, 'ActivityOccurrenceResource') as ActivityOccurrenceResource ;
    } else {
      return null;
    }
  }
  /// Create an activity
  ///
  /// &lt;b&gt;Permissions Needed:&lt;/b&gt; ACTIVITIES_ADMIN
  Future<ActivityResource> createActivity({ ActivityResource activityResource }) async {
    Object postBody = activityResource;

    // verify required params are set

    // create path and map variables
    String path = "/activities".replaceAll("{format}","json");

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
      return apiClient.deserialize(response.body, 'ActivityResource') as ActivityResource ;
    } else {
      return null;
    }
  }
  /// Create a new activity occurrence. Ex: start a game
  ///
  /// Has to enforce extra rules if not used as an admin. &lt;br&gt;&lt;br&gt;&lt;b&gt;Permissions Needed:&lt;/b&gt; ACTIVITIES_USER or ACTIVITIES_ADMIN
  Future<ActivityOccurrenceResource> createActivityOccurrence({ bool test, CreateActivityOccurrenceRequest activityOccurrenceResource }) async {
    Object postBody = activityOccurrenceResource;

    // verify required params are set

    // create path and map variables
    String path = "/activity-occurrences".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(test != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "test", test));
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
      return apiClient.deserialize(response.body, 'ActivityOccurrenceResource') as ActivityOccurrenceResource ;
    } else {
      return null;
    }
  }
  /// Create a activity template
  ///
  /// Activity Templates define a type of activity and the properties they have. &lt;br&gt;&lt;br&gt;&lt;b&gt;Permissions Needed:&lt;/b&gt; TEMPLATE_ADMIN
  Future<TemplateResource> createActivityTemplate({ TemplateResource activityTemplateResource }) async {
    Object postBody = activityTemplateResource;

    // verify required params are set

    // create path and map variables
    String path = "/activities/templates".replaceAll("{format}","json");

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
      return apiClient.deserialize(response.body, 'TemplateResource') as TemplateResource ;
    } else {
      return null;
    }
  }
  /// Delete an activity
  ///
  /// &lt;b&gt;Permissions Needed:&lt;/b&gt; ACTIVITIES_ADMIN
  Future deleteActivity(int id) async {
    Object postBody = null;

    // verify required params are set
    if(id == null) {
     throw new ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/activities/{id}".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

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
  /// Delete a activity template
  ///
  /// If cascade &#x3D; &#39;detach&#39;, it will force delete the template even if it&#39;s attached to other objects. &lt;br&gt;&lt;br&gt;&lt;b&gt;Permissions Needed:&lt;/b&gt; TEMPLATE_ADMIN
  Future deleteActivityTemplate(String id, { String cascade }) async {
    Object postBody = null;

    // verify required params are set
    if(id == null) {
     throw new ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/activities/templates/{id}".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(cascade != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "cascade", cascade));
    }
    
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
  /// List activity definitions
  ///
  /// &lt;b&gt;Permissions Needed:&lt;/b&gt; ANY
  Future<PageResource«BareActivityResource»> getActivities({ bool filterTemplate, String filterName, String filterId, int size, int page, String order }) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/activities".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(filterTemplate != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "filter_template", filterTemplate));
    }
    if(filterName != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "filter_name", filterName));
    }
    if(filterId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "filter_id", filterId));
    }
    if(size != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "size", size));
    }
    if(page != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "page", page));
    }
    if(order != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "order", order));
    }
    
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
      return apiClient.deserialize(response.body, 'PageResource«BareActivityResource»') as PageResource«BareActivityResource» ;
    } else {
      return null;
    }
  }
  /// Get a single activity
  ///
  /// &lt;b&gt;Permissions Needed:&lt;/b&gt; ANY
  Future<ActivityResource> getActivity(int id) async {
    Object postBody = null;

    // verify required params are set
    if(id == null) {
     throw new ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/activities/{id}".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

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
      return apiClient.deserialize(response.body, 'ActivityResource') as ActivityResource ;
    } else {
      return null;
    }
  }
  /// Load a single activity occurrence details
  ///
  /// &lt;b&gt;Permissions Needed:&lt;/b&gt; ACTIVITIES_USER or ACTIVITIES_ADMIN
  Future<ActivityOccurrenceResource> getActivityOccurrenceDetails(int activityOccurrenceId) async {
    Object postBody = null;

    // verify required params are set
    if(activityOccurrenceId == null) {
     throw new ApiException(400, "Missing required param: activityOccurrenceId");
    }

    // create path and map variables
    String path = "/activity-occurrences/{activity_occurrence_id}".replaceAll("{format}","json").replaceAll("{" + "activity_occurrence_id" + "}", activityOccurrenceId.toString());

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
      return apiClient.deserialize(response.body, 'ActivityOccurrenceResource') as ActivityOccurrenceResource ;
    } else {
      return null;
    }
  }
  /// Get a single activity template
  ///
  /// &lt;b&gt;Permissions Needed:&lt;/b&gt; TEMPLATE_ADMIN or ACTIVITIES_ADMIN
  Future<TemplateResource> getActivityTemplate(String id) async {
    Object postBody = null;

    // verify required params are set
    if(id == null) {
     throw new ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/activities/templates/{id}".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

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
      return apiClient.deserialize(response.body, 'TemplateResource') as TemplateResource ;
    } else {
      return null;
    }
  }
  /// List and search activity templates
  ///
  /// &lt;b&gt;Permissions Needed:&lt;/b&gt; TEMPLATE_ADMIN or ACTIVITIES_ADMIN
  Future<PageResource«TemplateResource»> getActivityTemplates({ int size, int page, String order }) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/activities/templates".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(size != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "size", size));
    }
    if(page != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "page", page));
    }
    if(order != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "order", order));
    }
    
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
      return apiClient.deserialize(response.body, 'PageResource«TemplateResource»') as PageResource«TemplateResource» ;
    } else {
      return null;
    }
  }
  /// List activity occurrences
  ///
  /// &lt;b&gt;Permissions Needed:&lt;/b&gt; ACTIVITIES_USER or ACTIVITIES_ADMIN
  Future<PageResource«ActivityOccurrenceResource»> listActivityOccurrences({ String filterActivity, String filterStatus, int filterEvent, int filterChallenge, int size, int page, String order }) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/activity-occurrences".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(filterActivity != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "filter_activity", filterActivity));
    }
    if(filterStatus != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "filter_status", filterStatus));
    }
    if(filterEvent != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "filter_event", filterEvent));
    }
    if(filterChallenge != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "filter_challenge", filterChallenge));
    }
    if(size != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "size", size));
    }
    if(page != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "page", page));
    }
    if(order != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "order", order));
    }
    
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
      return apiClient.deserialize(response.body, 'PageResource«ActivityOccurrenceResource»') as PageResource«ActivityOccurrenceResource» ;
    } else {
      return null;
    }
  }
  /// Remove a user from an occurrence
  ///
  /// 
  Future removeUser(int activityOccurrenceId, String userId, { bool ban, bool bypassRestrictions }) async {
    Object postBody = null;

    // verify required params are set
    if(activityOccurrenceId == null) {
     throw new ApiException(400, "Missing required param: activityOccurrenceId");
    }
    if(userId == null) {
     throw new ApiException(400, "Missing required param: userId");
    }

    // create path and map variables
    String path = "/activity-occurrences/{activity_occurrence_id}/users/{user_id}".replaceAll("{format}","json").replaceAll("{" + "activity_occurrence_id" + "}", activityOccurrenceId.toString()).replaceAll("{" + "user_id" + "}", userId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(ban != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "ban", ban));
    }
    if(bypassRestrictions != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "bypass_restrictions", bypassRestrictions));
    }
    
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
  /// Sets the status of an activity occurrence to FINISHED and logs metrics
  ///
  /// In addition to user permissions requirements there is security based on the core_settings.results_trust setting. &lt;br&gt;&lt;br&gt;&lt;b&gt;Permissions Needed:&lt;/b&gt; ACTIVITIES_USER or ACTIVITIES_ADMIN
  Future<ActivityOccurrenceResults> setActivityOccurrenceResults(int activityOccurrenceId, { ActivityOccurrenceResultsResource activityOccurrenceResults }) async {
    Object postBody = activityOccurrenceResults;

    // verify required params are set
    if(activityOccurrenceId == null) {
     throw new ApiException(400, "Missing required param: activityOccurrenceId");
    }

    // create path and map variables
    String path = "/activity-occurrences/{activity_occurrence_id}/results".replaceAll("{format}","json").replaceAll("{" + "activity_occurrence_id" + "}", activityOccurrenceId.toString());

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
      return apiClient.deserialize(response.body, 'ActivityOccurrenceResults') as ActivityOccurrenceResults ;
    } else {
      return null;
    }
  }
  /// Sets the settings of an activity occurrence
  ///
  /// &lt;b&gt;Permissions Needed:&lt;/b&gt; ACTIVITIES_USER and host or ACTIVITIES_ADMIN
  Future<ActivityOccurrenceResource> setActivityOccurrenceSettings(int activityOccurrenceId, { ActivityOccurrenceSettingsResource settings }) async {
    Object postBody = settings;

    // verify required params are set
    if(activityOccurrenceId == null) {
     throw new ApiException(400, "Missing required param: activityOccurrenceId");
    }

    // create path and map variables
    String path = "/activity-occurrences/{activity_occurrence_id}/settings".replaceAll("{format}","json").replaceAll("{" + "activity_occurrence_id" + "}", activityOccurrenceId.toString());

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
      return apiClient.deserialize(response.body, 'ActivityOccurrenceResource') as ActivityOccurrenceResource ;
    } else {
      return null;
    }
  }
  /// Set a user&#39;s status within an occurrence
  ///
  /// 
  Future<ActivityUserResource> setUserStatus(int activityOccurrenceId, String userId, { ActivityUserStatusWrapper status }) async {
    Object postBody = status;

    // verify required params are set
    if(activityOccurrenceId == null) {
     throw new ApiException(400, "Missing required param: activityOccurrenceId");
    }
    if(userId == null) {
     throw new ApiException(400, "Missing required param: userId");
    }

    // create path and map variables
    String path = "/activity-occurrences/{activity_occurrence_id}/users/{user_id}/status".replaceAll("{format}","json").replaceAll("{" + "activity_occurrence_id" + "}", activityOccurrenceId.toString()).replaceAll("{" + "user_id" + "}", userId.toString());

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
      return apiClient.deserialize(response.body, 'ActivityUserResource') as ActivityUserResource ;
    } else {
      return null;
    }
  }
  /// Update an activity
  ///
  /// &lt;b&gt;Permissions Needed:&lt;/b&gt; ACTIVITIES_ADMIN
  Future<ActivityResource> updateActivity(int id, { ActivityResource activityResource }) async {
    Object postBody = activityResource;

    // verify required params are set
    if(id == null) {
     throw new ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/activities/{id}".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

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
      return apiClient.deserialize(response.body, 'ActivityResource') as ActivityResource ;
    } else {
      return null;
    }
  }
  /// Update the status of an activity occurrence
  ///
  /// If setting to &#39;FINISHED&#39; reward will be run based on current metrics that have been recorded already. Alternatively, see results endpoint to finish and record all metrics at once. Can be called by non-host participants if non_host_status_control is true. &lt;br&gt;&lt;br&gt;&lt;b&gt;Permissions Needed:&lt;/b&gt; ACTIVITIES_USER and host or ACTIVITIES_ADMIN
  Future updateActivityOccurrenceStatus(int activityOccurrenceId, { ActivityOccurrenceStatusWrapper activityOccurrenceStatus }) async {
    Object postBody = activityOccurrenceStatus;

    // verify required params are set
    if(activityOccurrenceId == null) {
     throw new ApiException(400, "Missing required param: activityOccurrenceId");
    }

    // create path and map variables
    String path = "/activity-occurrences/{activity_occurrence_id}/status".replaceAll("{format}","json").replaceAll("{" + "activity_occurrence_id" + "}", activityOccurrenceId.toString());

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
  /// Update an activity template
  ///
  /// &lt;b&gt;Permissions Needed:&lt;/b&gt; TEMPLATE_ADMIN
  Future<TemplateResource> updateActivityTemplate(String id, { TemplateResource activityTemplateResource }) async {
    Object postBody = activityTemplateResource;

    // verify required params are set
    if(id == null) {
     throw new ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/activities/templates/{id}".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

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
      return apiClient.deserialize(response.body, 'TemplateResource') as TemplateResource ;
    } else {
      return null;
    }
  }
}
