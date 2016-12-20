part of swagger.api;



class GamificationAchievementsApi {
  final ApiClient apiClient;

  GamificationAchievementsApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Create a new achievement definition
  ///
  /// If the definition contains a trigger event name, a BRE rule is created, so that tracking logic is executed when the triggering event occurs. If no trigger event name is specified, the user&#39;s achievement status must manually be updated via the API.
  Future<AchievementDefinitionResource> createAchievementUsingPOST({ AchievementDefinitionResource achievement }) async {
    Object postBody = achievement;

    // verify required params are set

    // create path and map variables
    String path = "/achievements".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = ["application/json"];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["OAuth2"];

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
      return apiClient.deserialize(response.body, 'AchievementDefinitionResource') as AchievementDefinitionResource ;
    } else {
      return null;
    }
  }
  /// Create an achievement template
  ///
  /// Achievement templates define a type of achievement and the properties they have
  Future<TemplateResource> createTemplateUsingPOST({ TemplateResource template }) async {
    Object postBody = template;

    // verify required params are set

    // create path and map variables
    String path = "/achievements/templates".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = ["application/json"];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["OAuth2"];

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
  /// Delete an achievement template
  ///
  /// If cascade &#x3D; &#39;detach&#39;, it will force delete the template even if it&#39;s attached to other objects
  Future deleteAchievementTemplateUsingDELETE(String id, { String cascade }) async {
    Object postBody = null;

    // verify required params are set
    if(id == null) {
     throw new ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/achievements/templates/{id}".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(cascade != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "cascade", cascade));
    }
    
    List<String> contentTypes = ["application/json"];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["OAuth2"];

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
  /// Delete an achievement definition
  ///
  /// Will also disable the associated generated rule, if any.
  Future deleteAchievementUsingDELETE(String name) async {
    Object postBody = null;

    // verify required params are set
    if(name == null) {
     throw new ApiException(400, "Missing required param: name");
    }

    // create path and map variables
    String path = "/achievements/{name}".replaceAll("{format}","json").replaceAll("{" + "name" + "}", name.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = ["application/json"];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["OAuth2"];

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
  /// Get a list of derived achievements
  ///
  /// Used by other services that depend on achievements
  Future<List<AchievementDefinitionResource>> findAllByGroupNameUsingGET(String name) async {
    Object postBody = null;

    // verify required params are set
    if(name == null) {
     throw new ApiException(400, "Missing required param: name");
    }

    // create path and map variables
    String path = "/achievements/derived/{name}".replaceAll("{format}","json").replaceAll("{" + "name" + "}", name.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = ["application/json"];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["OAuth2"];

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
      return apiClient.deserialize(response.body, 'List<AchievementDefinitionResource>') as List<AchievementDefinitionResource> ;
    } else {
      return null;
    }
  }
  /// Get a single achievement template
  ///
  /// 
  Future<TemplateResource> getAchievementTemplateUsingGET(String id) async {
    Object postBody = null;

    // verify required params are set
    if(id == null) {
     throw new ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/achievements/templates/{id}".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = ["application/json"];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["OAuth2"];

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
  /// List and search achievement templates
  ///
  /// 
  Future<PageResource«TemplateResource»> getAchievementTemplatesUsingGET({ int size, int page, String order }) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/achievements/templates".replaceAll("{format}","json");

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
    
    List<String> contentTypes = ["application/json"];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["OAuth2"];

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
  /// Get a single achievement definition
  ///
  /// 
  Future<AchievementDefinitionResource> getAchievementUsingGET(String name) async {
    Object postBody = null;

    // verify required params are set
    if(name == null) {
     throw new ApiException(400, "Missing required param: name");
    }

    // create path and map variables
    String path = "/achievements/{name}".replaceAll("{format}","json").replaceAll("{" + "name" + "}", name.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = ["application/json"];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["OAuth2"];

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
      return apiClient.deserialize(response.body, 'AchievementDefinitionResource') as AchievementDefinitionResource ;
    } else {
      return null;
    }
  }
  /// Get all achievement definitions in the system
  ///
  /// 
  Future<PageResource«AchievementDefinitionResource»> getAchievementsUsingGET({ String filterTagset, String filterName, bool filterHidden, bool filterDerived, int size, int page, String order }) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/achievements".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(filterTagset != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "filter_tagset", filterTagset));
    }
    if(filterName != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "filter_name", filterName));
    }
    if(filterHidden != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "filter_hidden", filterHidden));
    }
    if(filterDerived != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "filter_derived", filterDerived));
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
    
    List<String> contentTypes = ["application/json"];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["OAuth2"];

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
      return apiClient.deserialize(response.body, 'PageResource«AchievementDefinitionResource»') as PageResource«AchievementDefinitionResource» ;
    } else {
      return null;
    }
  }
  /// Retrieve progress on a given achievement for all users
  ///
  /// Assets will not be filled in on the resources returned. Use &#39;Get single achievement progress for user&#39; to retrieve the full resource with assets for a given user as needed.
  Future<PageResource«UserAchievementGroupResource»> getAllUserProgressForAchievementUsingGET(String achievementName, { bool filterAchievementDerived, String filterAchievementTagset, bool filterAchievementHidden, int size, int page }) async {
    Object postBody = null;

    // verify required params are set
    if(achievementName == null) {
     throw new ApiException(400, "Missing required param: achievementName");
    }

    // create path and map variables
    String path = "/users/achievements/{achievement_name}".replaceAll("{format}","json").replaceAll("{" + "achievementName" + "}", achievementName.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(filterAchievementDerived != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "filter_achievement_derived", filterAchievementDerived));
    }
    if(filterAchievementTagset != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "filter_achievement_tagset", filterAchievementTagset));
    }
    if(filterAchievementHidden != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "filter_achievement_hidden", filterAchievementHidden));
    }
    if(size != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "size", size));
    }
    if(page != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "page", page));
    }
    
    List<String> contentTypes = ["application/json"];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["OAuth2"];

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
      return apiClient.deserialize(response.body, 'PageResource«UserAchievementGroupResource»') as PageResource«UserAchievementGroupResource» ;
    } else {
      return null;
    }
  }
  /// Retrieve progress on achievements for all users
  ///
  /// Assets will not be filled in on the resources returned. Use &#39;Get single achievement progress for user&#39; to retrieve the full resource with assets for a given user as needed.
  Future<PageResource«UserAchievementGroupResource»> getAllUserProgressUsingGET({ bool filterAchievementDerived, String filterAchievementTagset, String filterAchievementName, bool filterAchievementHidden, int size, int page }) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/users/achievements".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(filterAchievementDerived != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "filter_achievement_derived", filterAchievementDerived));
    }
    if(filterAchievementTagset != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "filter_achievement_tagset", filterAchievementTagset));
    }
    if(filterAchievementName != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "filter_achievement_name", filterAchievementName));
    }
    if(filterAchievementHidden != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "filter_achievement_hidden", filterAchievementHidden));
    }
    if(size != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "size", size));
    }
    if(page != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "page", page));
    }
    
    List<String> contentTypes = ["application/json"];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["OAuth2"];

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
      return apiClient.deserialize(response.body, 'PageResource«UserAchievementGroupResource»') as PageResource«UserAchievementGroupResource» ;
    } else {
      return null;
    }
  }
  /// Get the list of triggers that can be used to trigger an achievement progress update
  ///
  /// 
  Future<List<BreTriggerResource>> getAvailableTriggersUsingGET() async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/achievements/triggers".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = ["application/json"];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["OAuth2"];

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
      return apiClient.deserialize(response.body, 'List<BreTriggerResource>') as List<BreTriggerResource> ;
    } else {
      return null;
    }
  }
  /// Retrieve progress on a given achievement for a given user
  ///
  /// Assets will not be filled in on the resources returned. Use &#39;Get a single poll&#39; to retrieve the full resource with assets for a given item as needed.
  Future<UserAchievementGroupResource> getUserProgressForAchievementUsingGET(int userId, String achievementName) async {
    Object postBody = null;

    // verify required params are set
    if(userId == null) {
     throw new ApiException(400, "Missing required param: userId");
    }
    if(achievementName == null) {
     throw new ApiException(400, "Missing required param: achievementName");
    }

    // create path and map variables
    String path = "/users/{user_id}/achievements/{achievement_name}".replaceAll("{format}","json").replaceAll("{" + "userId" + "}", userId.toString()).replaceAll("{" + "achievementName" + "}", achievementName.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = ["application/json"];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["OAuth2"];

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
      return apiClient.deserialize(response.body, 'UserAchievementGroupResource') as UserAchievementGroupResource ;
    } else {
      return null;
    }
  }
  /// Retrieve progress on achievements for a given user
  ///
  /// Assets will not be filled in on the resources returned. Use &#39;Get a single poll&#39; to retrieve the full resource with assets for a given item as needed.
  Future<PageResource«UserAchievementGroupResource»> getUserProgressUsingGET(int userId, { bool filterAchievementDerived, String filterAchievementTagset, String filterAchievementName, bool filterAchievementHidden, int size, int page }) async {
    Object postBody = null;

    // verify required params are set
    if(userId == null) {
     throw new ApiException(400, "Missing required param: userId");
    }

    // create path and map variables
    String path = "/users/{user_id}/achievements".replaceAll("{format}","json").replaceAll("{" + "userId" + "}", userId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(filterAchievementDerived != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "filter_achievement_derived", filterAchievementDerived));
    }
    if(filterAchievementTagset != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "filter_achievement_tagset", filterAchievementTagset));
    }
    if(filterAchievementName != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "filter_achievement_name", filterAchievementName));
    }
    if(filterAchievementHidden != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "filter_achievement_hidden", filterAchievementHidden));
    }
    if(size != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "size", size));
    }
    if(page != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "page", page));
    }
    
    List<String> contentTypes = ["application/json"];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["OAuth2"];

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
      return apiClient.deserialize(response.body, 'PageResource«UserAchievementGroupResource»') as PageResource«UserAchievementGroupResource» ;
    } else {
      return null;
    }
  }
  /// Update an achievement definition
  ///
  /// The existing generated rule, if any, will be deleted. A new rule will be created if a trigger event name is specified in the new version.
  Future updateAchievementUsingPUT(String name, { AchievementDefinitionResource achievement }) async {
    Object postBody = achievement;

    // verify required params are set
    if(name == null) {
     throw new ApiException(400, "Missing required param: name");
    }

    // create path and map variables
    String path = "/achievements/{name}".replaceAll("{format}","json").replaceAll("{" + "name" + "}", name.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = ["application/json"];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["OAuth2"];

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
  /// Update or create an achievement progress record for a user
  ///
  /// If no progress record yet exists for the user, it will be created. Otherwise it will be updated. If progress meets or exceeds the achievement&#39;s max_value it will be marked as earned and a BRE event will be triggered for the &lt;code&gt;BreAchievementEarnedTrigger&lt;/code&gt;.
  Future<UserAchievementGroupResource> updateProgressUsingPUT(int userId, String achievementName, { AchievementProgressUpdateRequest request }) async {
    Object postBody = request;

    // verify required params are set
    if(userId == null) {
     throw new ApiException(400, "Missing required param: userId");
    }
    if(achievementName == null) {
     throw new ApiException(400, "Missing required param: achievementName");
    }

    // create path and map variables
    String path = "/users/{user_id}/achievements/{achievement_name}".replaceAll("{format}","json").replaceAll("{" + "userId" + "}", userId.toString()).replaceAll("{" + "achievementName" + "}", achievementName.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = ["application/json"];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["OAuth2"];

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
      return apiClient.deserialize(response.body, 'UserAchievementGroupResource') as UserAchievementGroupResource ;
    } else {
      return null;
    }
  }
  /// Update an achievement template
  ///
  /// 
  Future updateTemplateUsingPUT(String id, { TemplateResource template }) async {
    Object postBody = template;

    // verify required params are set
    if(id == null) {
     throw new ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/achievements/templates/{id}".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = ["application/json"];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["OAuth2"];

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
