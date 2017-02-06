part of swagger.api;



class ReportingRevenueApi {
  final ApiClient apiClient;

  ReportingRevenueApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Get item revenue info
  ///
  /// Get basic info about revenue from sales of items and bundles (not subscriptions, shipping, etc), summed up within a time range
  Future<RevenueReportResource> getItemRevenue(String currencyCode, { int startDate, int endDate }) async {
    Object postBody = null;

    // verify required params are set
    if(currencyCode == null) {
     throw new ApiException(400, "Missing required param: currencyCode");
    }

    // create path and map variables
    String path = "/reporting/revenue/item-sales/{currency_code}".replaceAll("{format}","json").replaceAll("{" + "currencyCode" + "}", currencyCode.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(startDate != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "start_date", startDate));
    }
    if(endDate != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "end_date", endDate));
    }
    
    List<String> contentTypes = ["application/json"];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["knetik_oauth"];

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
      return apiClient.deserialize(response.body, 'RevenueReportResource') as RevenueReportResource ;
    } else {
      return null;
    }
  }
  /// Get refund revenue info
  ///
  /// Get basic info about revenue loss from refunds (for all item types), summed up within a time range.
  Future<RevenueReportResource> getRefundRevenue(String currencyCode, { int startDate, int endDate }) async {
    Object postBody = null;

    // verify required params are set
    if(currencyCode == null) {
     throw new ApiException(400, "Missing required param: currencyCode");
    }

    // create path and map variables
    String path = "/reporting/revenue/refunds/{currency_code}".replaceAll("{format}","json").replaceAll("{" + "currencyCode" + "}", currencyCode.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(startDate != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "start_date", startDate));
    }
    if(endDate != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "end_date", endDate));
    }
    
    List<String> contentTypes = ["application/json"];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["knetik_oauth"];

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
      return apiClient.deserialize(response.body, 'RevenueReportResource') as RevenueReportResource ;
    } else {
      return null;
    }
  }
  /// Get revenue info by country
  ///
  /// Get basic info about revenue from sales of all types, summed up within a time range and split out by country. Sorted for largest revenue at the top
  Future<PageResource«RevenueCountryReportResource»> getRevenueByCountry(String currencyCode, { int startDate, int endDate, int size, int page }) async {
    Object postBody = null;

    // verify required params are set
    if(currencyCode == null) {
     throw new ApiException(400, "Missing required param: currencyCode");
    }

    // create path and map variables
    String path = "/reporting/revenue/countries/{currency_code}".replaceAll("{format}","json").replaceAll("{" + "currencyCode" + "}", currencyCode.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
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
    List<String> authNames = ["knetik_oauth"];

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
      return apiClient.deserialize(response.body, 'PageResource«RevenueCountryReportResource»') as PageResource«RevenueCountryReportResource» ;
    } else {
      return null;
    }
  }
  /// Get revenue info by item
  ///
  /// Get basic info about revenue from sales of all types, summed up within a time range and split out by specific item. Sorted for largest revenue at the top
  Future<PageResource«RevenueProductReportResource»> getRevenueByItem(String currencyCode, { int startDate, int endDate, int size, int page }) async {
    Object postBody = null;

    // verify required params are set
    if(currencyCode == null) {
     throw new ApiException(400, "Missing required param: currencyCode");
    }

    // create path and map variables
    String path = "/reporting/revenue/products/{currency_code}".replaceAll("{format}","json").replaceAll("{" + "currencyCode" + "}", currencyCode.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
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
    List<String> authNames = ["knetik_oauth"];

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
      return apiClient.deserialize(response.body, 'PageResource«RevenueProductReportResource»') as PageResource«RevenueProductReportResource» ;
    } else {
      return null;
    }
  }
  /// Get subscription revenue info
  ///
  /// Get basic info about revenue from sales of new subscriptions as well as recurring payemnts, summed up within a time range
  Future<RevenueReportResource> getSubscriptionRevenue(String currencyCode, { int startDate, int endDate }) async {
    Object postBody = null;

    // verify required params are set
    if(currencyCode == null) {
     throw new ApiException(400, "Missing required param: currencyCode");
    }

    // create path and map variables
    String path = "/reporting/revenue/subscription-sales/{currency_code}".replaceAll("{format}","json").replaceAll("{" + "currencyCode" + "}", currencyCode.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(startDate != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "start_date", startDate));
    }
    if(endDate != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "end_date", endDate));
    }
    
    List<String> contentTypes = ["application/json"];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["knetik_oauth"];

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
      return apiClient.deserialize(response.body, 'RevenueReportResource') as RevenueReportResource ;
    } else {
      return null;
    }
  }
}
