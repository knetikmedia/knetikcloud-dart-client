part of swagger.api;



class MediaVideosApi {
  final ApiClient apiClient;

  MediaVideosApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Adds a user to a video&#39;s whitelist
  ///
  /// Whitelisted users can view video regardless of privacy setting.
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
      return ;
    } else {
      return ;
    }
  }
  /// Adds a new video in the system
  ///
  /// 
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
      return apiClient.deserialize(response.body, 'VideoResource') as VideoResource ;
    } else {
      return null;
    }
  }
  /// Add a new video comment
  ///
  /// 
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
      return apiClient.deserialize(response.body, 'CommentResource') as CommentResource ;
    } else {
      return null;
    }
  }
  /// Adds a contributor to a video
  ///
  /// 
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
      return ;
    } else {
      return ;
    }
  }
  /// Add a new flag
  ///
  /// 
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
      return apiClient.deserialize(response.body, 'FlagResource') as FlagResource ;
    } else {
      return null;
    }
  }
  /// Adds one or more existing videos as related to this one
  ///
  /// 
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
      return apiClient.deserialize(response.body, 'VideoRelationshipResource') as VideoRelationshipResource ;
    } else {
      return null;
    }
  }
  /// Create a video disposition
  ///
  /// 
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
      return apiClient.deserialize(response.body, 'DispositionResource') as DispositionResource ;
    } else {
      return null;
    }
  }
  /// Deletes a video from the system if no resources are attached to it
  ///
  /// 
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
  /// Delete a video comment
  ///
  /// 
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
  /// Delete a video disposition
  ///
  /// 
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
  /// Delete a flag
  ///
  /// 
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
  /// Delete a video&#39;s relationship
  ///
  /// 
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
  /// Get user videos
  ///
  /// 
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
      return apiClient.deserialize(response.body, 'PageResource«VideoResource»') as PageResource«VideoResource» ;
    } else {
      return null;
    }
  }
  /// Loads a specific video details
  ///
  /// 
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
      return apiClient.deserialize(response.body, 'VideoResource') as VideoResource ;
    } else {
      return null;
    }
  }
  /// Returns a page of comments for a video
  ///
  /// 
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
      return apiClient.deserialize(response.body, 'PageResource«CommentResource»') as PageResource«CommentResource» ;
    } else {
      return null;
    }
  }
  /// Returns a page of dispositions for a video
  ///
  /// 
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
      return apiClient.deserialize(response.body, 'PageResource«DispositionResource»') as PageResource«DispositionResource» ;
    } else {
      return null;
    }
  }
  /// Returns a page of video relationships
  ///
  /// 
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
      return apiClient.deserialize(response.body, 'PageResource«VideoRelationshipResource»') as PageResource«VideoRelationshipResource» ;
    } else {
      return null;
    }
  }
  /// Search videos using the documented filters
  ///
  /// 
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
      return apiClient.deserialize(response.body, 'PageResource«VideoResource»') as PageResource«VideoResource» ;
    } else {
      return null;
    }
  }
  /// Removes a user from a video&#39;s whitelist
  ///
  /// Remove the user with the id given in the path from the whitelist of users that can view this video regardless of privacy setting.
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
  /// Removes a contributor from a video
  ///
  /// 
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
  /// Modifies a video&#39;s details
  ///
  /// 
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
  /// Update a video comment
  ///
  /// 
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
  /// Update a video&#39;s relationship details
  ///
  /// 
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
  /// Increment a video&#39;s view count
  ///
  /// 
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
      return ;
    } else {
      return ;
    }
  }
}
