part of swagger.api;



class GamificationLeaderboardsApi {
  final ApiClient apiClient;

  GamificationLeaderboardsApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Retrieves leaderboard details and paginated entries
  ///
  /// The context type identifies the type of entity (i.e., &#39;activity&#39;) being tracked on the leaderboard. The context ID is the unique ID of the actual entity tracked by the leaderboard. Sorting is based on the fields of LeaderboardEntryResource rather than the returned LeaderboardResource.
  Future<LeaderboardResource> getLeaderboard(String contextType, String contextId, { int size, int page, String order }) async {
    Object postBody = null;

    // verify required params are set
    if(contextType == null) {
     throw new ApiException(400, "Missing required param: contextType");
    }
    if(contextId == null) {
     throw new ApiException(400, "Missing required param: contextId");
    }

    // create path and map variables
    String path = "/leaderboards/{context_type}/{context_id}".replaceAll("{format}","json").replaceAll("{" + "context_type" + "}", contextType.toString()).replaceAll("{" + "context_id" + "}", contextId.toString());

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
      return apiClient.deserialize(response.body, 'LeaderboardResource') as LeaderboardResource ;
    } else {
      return null;
    }
  }
  /// Retrieves a specific user entry with rank
  ///
  /// The context type identifies the type of entity (i.e., &#39;activity&#39;) being tracked on the leaderboard. The context ID is the unique ID of the actual entity tracked by the leaderboard
  Future<LeaderboardEntryResource> getLeaderboardRank(String contextType, String contextId, String id) async {
    Object postBody = null;

    // verify required params are set
    if(contextType == null) {
     throw new ApiException(400, "Missing required param: contextType");
    }
    if(contextId == null) {
     throw new ApiException(400, "Missing required param: contextId");
    }
    if(id == null) {
     throw new ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/leaderboards/{context_type}/{context_id}/users/{id}/rank".replaceAll("{format}","json").replaceAll("{" + "context_type" + "}", contextType.toString()).replaceAll("{" + "context_id" + "}", contextId.toString()).replaceAll("{" + "id" + "}", id.toString());

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
      return apiClient.deserialize(response.body, 'LeaderboardEntryResource') as LeaderboardEntryResource ;
    } else {
      return null;
    }
  }
  /// Get a list of available leaderboard strategy names
  ///
  /// 
  Future<List<String>> getLeaderboardStrategies() async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/leaderboards/strategies".replaceAll("{format}","json");

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
      return apiClient.deserialize(response.body, 'List<String>') as List<String> ;
    } else {
      return null;
    }
  }
}
