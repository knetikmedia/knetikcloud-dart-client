part of swagger.api;



class PaymentsFattMerchantApi {
  final ApiClient apiClient;

  PaymentsFattMerchantApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Create or update a FattMerchant payment method for a user
  ///
  /// Stores customer information and creates a payment method that can be used to pay invoices through the payments endpoints.
  Future<PaymentMethodResource> createOrUpdateFattMerchantPaymentMethod({ FattMerchantPaymentMethodRequest request }) async {
    Object postBody = request;

    // verify required params are set

    // create path and map variables
    String path = "/payment/provider/fattmerchant/payment-methods".replaceAll("{format}","json");

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
      return apiClient.deserialize(response.body, 'PaymentMethodResource') as PaymentMethodResource ;
    } else {
      return null;
    }
  }
}
