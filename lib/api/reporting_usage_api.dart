part of swagger.api;



class ReportingUsageApi {
  final ApiClient apiClient;

  ReportingUsageApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Returns aggregated endpoint usage information by the day
  ///
  /// 
  Future<PageResource«UsageInfo»> getUsageByDayUsingGET(int startDate, int endDate, { bool combineEndpoints, int size, int page }) async {
    Object postBody = null;

    // verify required params are set
    if(startDate == null) {
     throw new ApiException(400, "Missing required param: startDate");
    }
    if(endDate == null) {
     throw new ApiException(400, "Missing required param: endDate");
    }

    // create path and map variables
    String path = "/reporting/usage/day".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
      queryParams.addAll(_convertParametersForCollectionFormat("", "start_date", startDate));
      queryParams.addAll(_convertParametersForCollectionFormat("", "end_date", endDate));
    if(combineEndpoints != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "combine_endpoints", combineEndpoints));
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
      return apiClient.deserialize(response.body, 'PageResource«UsageInfo»') as PageResource«UsageInfo» ;
    } else {
      return null;
    }
  }
  /// Returns aggregated endpoint usage information by hour
  ///
  /// 
  Future<PageResource«UsageInfo»> getUsageByHourUsingGET(int startDate, int endDate, { bool combineEndpoints, int size, int page }) async {
    Object postBody = null;

    // verify required params are set
    if(startDate == null) {
     throw new ApiException(400, "Missing required param: startDate");
    }
    if(endDate == null) {
     throw new ApiException(400, "Missing required param: endDate");
    }

    // create path and map variables
    String path = "/reporting/usage/hour".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
      queryParams.addAll(_convertParametersForCollectionFormat("", "start_date", startDate));
      queryParams.addAll(_convertParametersForCollectionFormat("", "end_date", endDate));
    if(combineEndpoints != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "combine_endpoints", combineEndpoints));
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
      return apiClient.deserialize(response.body, 'PageResource«UsageInfo»') as PageResource«UsageInfo» ;
    } else {
      return null;
    }
  }
  /// Returns aggregated endpoint usage information by minute
  ///
  /// 
  Future<PageResource«UsageInfo»> getUsageByMinuteUsingGET(int startDate, int endDate, { bool combineEndpoints, int size, int page }) async {
    Object postBody = null;

    // verify required params are set
    if(startDate == null) {
     throw new ApiException(400, "Missing required param: startDate");
    }
    if(endDate == null) {
     throw new ApiException(400, "Missing required param: endDate");
    }

    // create path and map variables
    String path = "/reporting/usage/minute".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
      queryParams.addAll(_convertParametersForCollectionFormat("", "start_date", startDate));
      queryParams.addAll(_convertParametersForCollectionFormat("", "end_date", endDate));
    if(combineEndpoints != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "combine_endpoints", combineEndpoints));
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
      return apiClient.deserialize(response.body, 'PageResource«UsageInfo»') as PageResource«UsageInfo» ;
    } else {
      return null;
    }
  }
  /// Returns aggregated endpoint usage information by month
  ///
  /// 
  Future<PageResource«UsageInfo»> getUsageByMonthUsingGET(int startDate, int endDate, { bool combineEndpoints, int size, int page }) async {
    Object postBody = null;

    // verify required params are set
    if(startDate == null) {
     throw new ApiException(400, "Missing required param: startDate");
    }
    if(endDate == null) {
     throw new ApiException(400, "Missing required param: endDate");
    }

    // create path and map variables
    String path = "/reporting/usage/month".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
      queryParams.addAll(_convertParametersForCollectionFormat("", "start_date", startDate));
      queryParams.addAll(_convertParametersForCollectionFormat("", "end_date", endDate));
    if(combineEndpoints != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "combine_endpoints", combineEndpoints));
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
      return apiClient.deserialize(response.body, 'PageResource«UsageInfo»') as PageResource«UsageInfo» ;
    } else {
      return null;
    }
  }
  /// Returns aggregated endpoint usage information by year
  ///
  /// 
  Future<PageResource«UsageInfo»> getUsageByYearUsingGET(int startDate, int endDate, { bool combineEndpoints, int size, int page }) async {
    Object postBody = null;

    // verify required params are set
    if(startDate == null) {
     throw new ApiException(400, "Missing required param: startDate");
    }
    if(endDate == null) {
     throw new ApiException(400, "Missing required param: endDate");
    }

    // create path and map variables
    String path = "/reporting/usage/year".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
      queryParams.addAll(_convertParametersForCollectionFormat("", "start_date", startDate));
      queryParams.addAll(_convertParametersForCollectionFormat("", "end_date", endDate));
    if(combineEndpoints != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "combine_endpoints", combineEndpoints));
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
      return apiClient.deserialize(response.body, 'PageResource«UsageInfo»') as PageResource«UsageInfo» ;
    } else {
      return null;
    }
  }
}
