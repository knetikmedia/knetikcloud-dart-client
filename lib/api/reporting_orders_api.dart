part of swagger.api;



class ReportingOrdersApi {
  final ApiClient apiClient;

  ReportingOrdersApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Retrieve invoice counts aggregated by time ranges
  ///
  /// 
  Future<Page«AggregateInvoiceReportResource»> getDailyInvoicesUsingGET(String currencyCode, { String granularity, String filterPaymentStatus, String filterFulfillmentStatus, int startDate, int endDate }) async {
    Object postBody = null;

    // verify required params are set
    if(currencyCode == null) {
     throw new ApiException(400, "Missing required param: currencyCode");
    }

    // create path and map variables
    String path = "/reporting/orders/count/{currency_code}".replaceAll("{format}","json").replaceAll("{" + "currencyCode" + "}", currencyCode.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(granularity != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "granularity", granularity));
    }
    if(filterPaymentStatus != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "filter_payment_status", filterPaymentStatus));
    }
    if(filterFulfillmentStatus != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "filter_fulfillment_status", filterFulfillmentStatus));
    }
    if(startDate != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "start_date", startDate));
    }
    if(endDate != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "end_date", endDate));
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
      return apiClient.deserialize(response.body, 'Page«AggregateInvoiceReportResource»') as Page«AggregateInvoiceReportResource» ;
    } else {
      return null;
    }
  }
}
