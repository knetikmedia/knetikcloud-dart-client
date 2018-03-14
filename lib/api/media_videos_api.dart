part of swagger.api;



class Media_VideosApi {
  final ApiClient apiClient;

  Media_VideosApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Adds a user to a video&#39;s whitelist
  ///
  /// Whitelisted users can view video regardless of privacy setting. &lt;br&gt;&lt;br&gt;&lt;b&gt;Permissions Needed:&lt;/b&gt; VIDEOS_USER or VIDEOS_ADMIN
  Future addUserToVideoWhitelist(int id, { IntWrapper userId }) async {
    Object postBody = userId;

    // verify required params are set
    if(id == null) {
     throw new ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/media/videos/{id}/whitelist".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

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
      return ;
    } else {
      return ;
    }
  }
  /// Adds a new video in the system
  ///
  /// &lt;b&gt;Permissions Needed:&lt;/b&gt; VIDEOS_USER or VIDEOS_ADMIN
  Future<VideoResource> addVideo({ VideoResource videoResource }) async {
    Object postBody = videoResource;

    // verify required params are set

    // create path and map variables
    String path = "/media/videos".replaceAll("{format}","json");

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
      return apiClient.deserialize(response.body, 'VideoResource') as VideoResource ;
    } else {
      return null;
    }
  }
  /// Add a new video comment
  ///
  /// &lt;b&gt;Permissions Needed:&lt;/b&gt; VIDEOS_USER or VIDEOS_ADMIN
  Future<CommentResource> addVideoComment(int videoId, { CommentResource commentResource }) async {
    Object postBody = commentResource;

    // verify required params are set
    if(videoId == null) {
     throw new ApiException(400, "Missing required param: videoId");
    }

    // create path and map variables
    String path = "/media/videos/{video_id}/comments".replaceAll("{format}","json").replaceAll("{" + "video_id" + "}", videoId.toString());

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
      return apiClient.deserialize(response.body, 'CommentResource') as CommentResource ;
    } else {
      return null;
    }
  }
  /// Adds a contributor to a video
  ///
  /// &lt;b&gt;Permissions Needed:&lt;/b&gt; VIDEOS_USER or VIDEOS_ADMIN
  Future addVideoContributor(int videoId, { ContributionResource contributionResource }) async {
    Object postBody = contributionResource;

    // verify required params are set
    if(videoId == null) {
     throw new ApiException(400, "Missing required param: videoId");
    }

    // create path and map variables
    String path = "/media/videos/{video_id}/contributors".replaceAll("{format}","json").replaceAll("{" + "video_id" + "}", videoId.toString());

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
      return ;
    } else {
      return ;
    }
  }
  /// Add a new flag
  ///
  /// &lt;b&gt;Permissions Needed:&lt;/b&gt; VIDEOS_USER or VIDEOS_ADMIN
  Future<FlagResource> addVideoFlag(int videoId, { StringWrapper reason }) async {
    Object postBody = reason;

    // verify required params are set
    if(videoId == null) {
     throw new ApiException(400, "Missing required param: videoId");
    }

    // create path and map variables
    String path = "/media/videos/{video_id}/moderation".replaceAll("{format}","json").replaceAll("{" + "video_id" + "}", videoId.toString());

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
  /// Adds one or more existing videos as related to this one
  ///
  /// &lt;b&gt;Permissions Needed:&lt;/b&gt; VIDEOS_USER or VIDEOS_ADMIN
  Future<VideoRelationshipResource> addVideoRelationships(int videoId, { VideoRelationshipResource videoRelationshipResource }) async {
    Object postBody = videoRelationshipResource;

    // verify required params are set
    if(videoId == null) {
     throw new ApiException(400, "Missing required param: videoId");
    }

    // create path and map variables
    String path = "/media/videos/{video_id}/related".replaceAll("{format}","json").replaceAll("{" + "video_id" + "}", videoId.toString());

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
      return apiClient.deserialize(response.body, 'VideoRelationshipResource') as VideoRelationshipResource ;
    } else {
      return null;
    }
  }
  /// Create a video disposition
  ///
  /// &lt;b&gt;Permissions Needed:&lt;/b&gt; VIDEOS_USER or VIDEOS_ADMIN
  Future<DispositionResource> createVideoDisposition(int videoId, { DispositionResource dispositionResource }) async {
    Object postBody = dispositionResource;

    // verify required params are set
    if(videoId == null) {
     throw new ApiException(400, "Missing required param: videoId");
    }

    // create path and map variables
    String path = "/media/videos/{video_id}/dispositions".replaceAll("{format}","json").replaceAll("{" + "video_id" + "}", videoId.toString());

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
      return apiClient.deserialize(response.body, 'DispositionResource') as DispositionResource ;
    } else {
      return null;
    }
  }
  /// Create a video template
  ///
  /// Video Templates define a type of video and the properties they have. &lt;br&gt;&lt;br&gt;&lt;b&gt;Permissions Needed:&lt;/b&gt; TEMPLATE_ADMIN
  Future<TemplateResource> createVideoTemplate({ TemplateResource videoTemplateResource }) async {
    Object postBody = videoTemplateResource;

    // verify required params are set

    // create path and map variables
    String path = "/media/videos/templates".replaceAll("{format}","json");

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
  /// Deletes a video from the system if no resources are attached to it
  ///
  /// &lt;b&gt;Permissions Needed:&lt;/b&gt; VIDEOS_USER or VIDEOS_ADMIN
  Future deleteVideo(int id) async {
    Object postBody = null;

    // verify required params are set
    if(id == null) {
     throw new ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/media/videos/{id}".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

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
  /// Delete a video comment
  ///
  /// &lt;b&gt;Permissions Needed:&lt;/b&gt; VIDEOS_USER or VIDEOS_ADMIN
  Future deleteVideoComment(int videoId, int id) async {
    Object postBody = null;

    // verify required params are set
    if(videoId == null) {
     throw new ApiException(400, "Missing required param: videoId");
    }
    if(id == null) {
     throw new ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/media/videos/{video_id}/comments/{id}".replaceAll("{format}","json").replaceAll("{" + "video_id" + "}", videoId.toString()).replaceAll("{" + "id" + "}", id.toString());

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
  /// Delete a video disposition
  ///
  /// &lt;b&gt;Permissions Needed:&lt;/b&gt; VIDEOS_USER or VIDEOS_ADMIN
  Future deleteVideoDisposition(int dispositionId) async {
    Object postBody = null;

    // verify required params are set
    if(dispositionId == null) {
     throw new ApiException(400, "Missing required param: dispositionId");
    }

    // create path and map variables
    String path = "/media/videos/{video_id}/dispositions/{disposition_id}".replaceAll("{format}","json").replaceAll("{" + "disposition_id" + "}", dispositionId.toString());

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
  /// Delete a flag
  ///
  /// &lt;b&gt;Permissions Needed:&lt;/b&gt; VIDEOS_USER or VIDEOS_ADMIN
  Future deleteVideoFlag(int videoId) async {
    Object postBody = null;

    // verify required params are set
    if(videoId == null) {
     throw new ApiException(400, "Missing required param: videoId");
    }

    // create path and map variables
    String path = "/media/videos/{video_id}/moderation".replaceAll("{format}","json").replaceAll("{" + "video_id" + "}", videoId.toString());

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
  /// Delete a video&#39;s relationship
  ///
  /// &lt;b&gt;Permissions Needed:&lt;/b&gt; VIDEOS_USER or VIDEOS_ADMIN
  Future deleteVideoRelationship(int videoId, int id) async {
    Object postBody = null;

    // verify required params are set
    if(videoId == null) {
     throw new ApiException(400, "Missing required param: videoId");
    }
    if(id == null) {
     throw new ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/media/videos/{video_id}/related/{id}".replaceAll("{format}","json").replaceAll("{" + "video_id" + "}", videoId.toString()).replaceAll("{" + "id" + "}", id.toString());

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
  /// Delete a video template
  ///
  /// If cascade &#x3D; &#39;detach&#39;, it will force delete the template even if it&#39;s attached to other objects. &lt;br&gt;&lt;br&gt;&lt;b&gt;Permissions Needed:&lt;/b&gt; TEMPLATE_ADMIN
  Future deleteVideoTemplate(String id, { String cascade }) async {
    Object postBody = null;

    // verify required params are set
    if(id == null) {
     throw new ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/media/videos/templates/{id}".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

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
  /// Get user videos
  ///
  /// &lt;b&gt;Permissions Needed:&lt;/b&gt; VIDEOS_USER or VIDEOS_ADMIN
  Future<PageResource«VideoResource»> getUserVideos(int userId, { bool excludeFlagged, int size, int page }) async {
    Object postBody = null;

    // verify required params are set
    if(userId == null) {
     throw new ApiException(400, "Missing required param: userId");
    }

    // create path and map variables
    String path = "/users/{user_id}/videos".replaceAll("{format}","json").replaceAll("{" + "user_id" + "}", userId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(excludeFlagged != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "exclude_flagged", excludeFlagged));
    }
    if(size != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "size", size));
    }
    if(page != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "page", page));
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
      return apiClient.deserialize(response.body, 'PageResource«VideoResource»') as PageResource«VideoResource» ;
    } else {
      return null;
    }
  }
  /// Loads a specific video details
  ///
  /// &lt;b&gt;Permissions Needed:&lt;/b&gt; VIDEOS_USER or VIDEOS_ADMIN
  Future<VideoResource> getVideo(int id) async {
    Object postBody = null;

    // verify required params are set
    if(id == null) {
     throw new ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/media/videos/{id}".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

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
      return apiClient.deserialize(response.body, 'VideoResource') as VideoResource ;
    } else {
      return null;
    }
  }
  /// Returns a page of comments for a video
  ///
  /// &lt;b&gt;Permissions Needed:&lt;/b&gt; ANY
  Future<PageResource«CommentResource»> getVideoComments(int videoId, { int size, int page }) async {
    Object postBody = null;

    // verify required params are set
    if(videoId == null) {
     throw new ApiException(400, "Missing required param: videoId");
    }

    // create path and map variables
    String path = "/media/videos/{video_id}/comments".replaceAll("{format}","json").replaceAll("{" + "video_id" + "}", videoId.toString());

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
      return apiClient.deserialize(response.body, 'PageResource«CommentResource»') as PageResource«CommentResource» ;
    } else {
      return null;
    }
  }
  /// Returns a page of dispositions for a video
  ///
  /// &lt;b&gt;Permissions Needed:&lt;/b&gt; ANY
  Future<PageResource«DispositionResource»> getVideoDispositions(int videoId, { int size, int page }) async {
    Object postBody = null;

    // verify required params are set
    if(videoId == null) {
     throw new ApiException(400, "Missing required param: videoId");
    }

    // create path and map variables
    String path = "/media/videos/{video_id}/dispositions".replaceAll("{format}","json").replaceAll("{" + "video_id" + "}", videoId.toString());

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
      return apiClient.deserialize(response.body, 'PageResource«DispositionResource»') as PageResource«DispositionResource» ;
    } else {
      return null;
    }
  }
  /// Returns a page of video relationships
  ///
  /// &lt;b&gt;Permissions Needed:&lt;/b&gt; ANY
  Future<PageResource«VideoRelationshipResource»> getVideoRelationships(int videoId, { int size, int page }) async {
    Object postBody = null;

    // verify required params are set
    if(videoId == null) {
     throw new ApiException(400, "Missing required param: videoId");
    }

    // create path and map variables
    String path = "/media/videos/{video_id}/related".replaceAll("{format}","json").replaceAll("{" + "video_id" + "}", videoId.toString());

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
      return apiClient.deserialize(response.body, 'PageResource«VideoRelationshipResource»') as PageResource«VideoRelationshipResource» ;
    } else {
      return null;
    }
  }
  /// Get a single video template
  ///
  /// &lt;b&gt;Permissions Needed:&lt;/b&gt; TEMPLATE_ADMIN or VIDEOS_ADMIN
  Future<TemplateResource> getVideoTemplate(String id) async {
    Object postBody = null;

    // verify required params are set
    if(id == null) {
     throw new ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/media/videos/templates/{id}".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

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
  /// List and search video templates
  ///
  /// &lt;b&gt;Permissions Needed:&lt;/b&gt; TEMPLATE_ADMIN or VIDEOS_ADMIN
  Future<PageResource«TemplateResource»> getVideoTemplates({ int size, int page, String order }) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/media/videos/templates".replaceAll("{format}","json");

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
  /// Search videos using the documented filters
  ///
  /// &lt;b&gt;Permissions Needed:&lt;/b&gt; ANY
  Future<PageResource«VideoResource»> getVideos({ bool excludeFlagged, int filterVideosByUploader, String filterCategory, String filterTagset, String filterVideosByName, int filterVideosByContributor, int filterVideosByAuthor, bool filterHasAuthor, bool filterHasUploader, String filterRelatedTo, bool filterFriends, String filterDisposition, int size, int page, String order }) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/media/videos".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(excludeFlagged != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "exclude_flagged", excludeFlagged));
    }
    if(filterVideosByUploader != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "filter_videos_by_uploader", filterVideosByUploader));
    }
    if(filterCategory != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "filter_category", filterCategory));
    }
    if(filterTagset != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "filter_tagset", filterTagset));
    }
    if(filterVideosByName != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "filter_videos_by_name", filterVideosByName));
    }
    if(filterVideosByContributor != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "filter_videos_by_contributor", filterVideosByContributor));
    }
    if(filterVideosByAuthor != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "filter_videos_by_author", filterVideosByAuthor));
    }
    if(filterHasAuthor != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "filter_has_author", filterHasAuthor));
    }
    if(filterHasUploader != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "filter_has_uploader", filterHasUploader));
    }
    if(filterRelatedTo != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "filter_related_to", filterRelatedTo));
    }
    if(filterFriends != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "filter_friends", filterFriends));
    }
    if(filterDisposition != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "filter_disposition", filterDisposition));
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
      return apiClient.deserialize(response.body, 'PageResource«VideoResource»') as PageResource«VideoResource» ;
    } else {
      return null;
    }
  }
  /// Removes a user from a video&#39;s whitelist
  ///
  /// Remove the user with the id given in the path from the whitelist of users that can view this video regardless of privacy setting. &lt;br&gt;&lt;br&gt;&lt;b&gt;Permissions Needed:&lt;/b&gt; VIDEOS_USER or VIDEOS_ADMIN
  Future removeUserFromVideoWhitelist(int videoId, int id) async {
    Object postBody = null;

    // verify required params are set
    if(videoId == null) {
     throw new ApiException(400, "Missing required param: videoId");
    }
    if(id == null) {
     throw new ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/media/videos/{video_id}/whitelist/{id}".replaceAll("{format}","json").replaceAll("{" + "video_id" + "}", videoId.toString()).replaceAll("{" + "id" + "}", id.toString());

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
  /// Removes a contributor from a video
  ///
  /// &lt;b&gt;Permissions Needed:&lt;/b&gt; VIDEOS_USER or VIDEOS_ADMIN
  Future removeVideoContributor(int videoId, int id) async {
    Object postBody = null;

    // verify required params are set
    if(videoId == null) {
     throw new ApiException(400, "Missing required param: videoId");
    }
    if(id == null) {
     throw new ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/media/videos/{video_id}/contributors/{id}".replaceAll("{format}","json").replaceAll("{" + "video_id" + "}", videoId.toString()).replaceAll("{" + "id" + "}", id.toString());

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
  /// Modifies a video&#39;s details
  ///
  /// &lt;b&gt;Permissions Needed:&lt;/b&gt; VIDEOS_USER or VIDEOS_ADMIN
  Future updateVideo(int id, { VideoResource videoResource }) async {
    Object postBody = videoResource;

    // verify required params are set
    if(id == null) {
     throw new ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/media/videos/{id}".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

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
  /// Update a video comment
  ///
  /// &lt;b&gt;Permissions Needed:&lt;/b&gt; VIDEOS_USER or VIDEOS_ADMIN
  Future updateVideoComment(int videoId, int id, { StringWrapper content }) async {
    Object postBody = content;

    // verify required params are set
    if(videoId == null) {
     throw new ApiException(400, "Missing required param: videoId");
    }
    if(id == null) {
     throw new ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/media/videos/{video_id}/comments/{id}/content".replaceAll("{format}","json").replaceAll("{" + "video_id" + "}", videoId.toString()).replaceAll("{" + "id" + "}", id.toString());

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
  /// Update a video&#39;s relationship details
  ///
  /// &lt;b&gt;Permissions Needed:&lt;/b&gt; VIDEOS_USER or VIDEOS_ADMIN
  Future updateVideoRelationship(int videoId, int relationshipId, { StringWrapper details }) async {
    Object postBody = details;

    // verify required params are set
    if(videoId == null) {
     throw new ApiException(400, "Missing required param: videoId");
    }
    if(relationshipId == null) {
     throw new ApiException(400, "Missing required param: relationshipId");
    }

    // create path and map variables
    String path = "/media/videos/{video_id}/related/{id}/relationship_details".replaceAll("{format}","json").replaceAll("{" + "video_id" + "}", videoId.toString()).replaceAll("{" + "relationship_id" + "}", relationshipId.toString());

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
  /// Update a video template
  ///
  /// &lt;b&gt;Permissions Needed:&lt;/b&gt; TEMPLATE_ADMIN
  Future<TemplateResource> updateVideoTemplate(String id, { TemplateResource videoTemplateResource }) async {
    Object postBody = videoTemplateResource;

    // verify required params are set
    if(id == null) {
     throw new ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/media/videos/templates/{id}".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

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
  /// Increment a video&#39;s view count
  ///
  /// &lt;b&gt;Permissions Needed:&lt;/b&gt; ANY
  Future viewVideo(int id) async {
    Object postBody = null;

    // verify required params are set
    if(id == null) {
     throw new ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/media/videos/{id}/views".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

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
      return ;
    } else {
      return ;
    }
  }
}
