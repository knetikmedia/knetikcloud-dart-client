part of swagger.api;



class Reporting_OrdersApi {
  final ApiClient apiClient;

  Reporting_OrdersApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Retrieve invoice counts aggregated by time ranges
  ///
  /// &lt;b&gt;Permissions Needed:&lt;/b&gt; REPORTING_ORDERS_ADMIN
  Future<PageResource«AggregateInvoiceReportResource»> getInvoiceReports(String currencyCode, { String granularity, String filterPaymentStatus, String filterFulfillmentStatus, int startDate, int endDate, int size, int page }) async {
    Object postBody = null;

    // verify required params are set
    if(currencyCode == null) {
     throw new ApiException(400, "Missing required param: currencyCode");
    }

    // create path and map variables
    String path = "/reporting/orders/count/{currency_code}".replaceAll("{format}","json").replaceAll("{" + "currency_code" + "}", currencyCode.toString());

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
      return apiClient.deserialize(response.body, 'PageResource«AggregateInvoiceReportResource»') as PageResource«AggregateInvoiceReportResource» ;
    } else {
      return null;
    }
  }
}
