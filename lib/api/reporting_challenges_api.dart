part of swagger.api;



class ReportingChallengesApi {
  final ApiClient apiClient;

  ReportingChallengesApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Retrieve a challenge event leaderboard details
  ///
  /// Lists all leaderboard entries with additional user details
  Future<PageResource«ChallengeEventParticipantResource»> getChallengeEventLeaderboard({ int filterEvent }) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/reporting/events/leaderboard".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(filterEvent != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "filter_event", filterEvent));
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
      return apiClient.deserialize(response.body, 'PageResource«ChallengeEventParticipantResource»') as PageResource«ChallengeEventParticipantResource» ;
    } else {
      return null;
    }
  }
  /// Retrieve a challenge event participant details
  ///
  /// Lists all user submitted scores sorted by value, including those that do not apear in the leaderboard due to value or aggregation
  Future<PageResource«ChallengeEventParticipantResource»> getChallengeEventParticipants({ int filterEvent }) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/reporting/events/participants".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(filterEvent != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "filter_event", filterEvent));
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
      return apiClient.deserialize(response.body, 'PageResource«ChallengeEventParticipantResource»') as PageResource«ChallengeEventParticipantResource» ;
    } else {
      return null;
    }
  }
}
