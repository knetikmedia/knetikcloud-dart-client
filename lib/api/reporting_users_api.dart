part of swagger.api;



class ReportingUsersApi {
  final ApiClient apiClient;

  ReportingUsersApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Get user registration info
  ///
  /// Get user registration counts grouped by time range
  Future<PageResource«AggregateCountResource»> getUserRegistrations({ String granularity, int startDate, int endDate, int size, int page }) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/reporting/users/registrations".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(granularity != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "granularity", granularity));
    }
    if(startDate != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "start_date", startDate));
    }
    if(endDate != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "end_date", endDate));
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
      return apiClient.deserialize(response.body, 'PageResource«AggregateCountResource»') as PageResource«AggregateCountResource» ;
    } else {
      return null;
    }
  }
}
