part of swagger.api;



class Payments_PayPalClassicApi {
  final ApiClient apiClient;

  Payments_PayPalClassicApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Create a PayPal Classic billing agreement for the user
  ///
  /// Returns the token that should be used to forward the user to PayPal so they can accept the agreement. &lt;br&gt;&lt;br&gt;&lt;b&gt;Permissions Needed:&lt;/b&gt; PAYPAL_CLASSIC_ADMIN or owner
  Future<String> createPayPalBillingAgreementUrl({ CreateBillingAgreementRequest request }) async {
    Object postBody = request;

    // verify required params are set

    // create path and map variables
    String path = "/payment/provider/paypal/classic/agreements/start".replaceAll("{format}","json");

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
      return apiClient.deserialize(response.body, 'String') as String ;
    } else {
      return null;
    }
  }
  /// Create a payment token for PayPal express checkout
  ///
  /// Returns the token that should be used to forward the user to PayPal so they can complete the checkout. &lt;br&gt;&lt;br&gt;&lt;b&gt;Permissions Needed:&lt;/b&gt; PAYPAL_CLASSIC_ADMIN or owner
  Future<String> createPayPalExpressCheckout({ CreatePayPalPaymentRequest request }) async {
    Object postBody = request;

    // verify required params are set

    // create path and map variables
    String path = "/payment/provider/paypal/classic/checkout/start".replaceAll("{format}","json");

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
      return apiClient.deserialize(response.body, 'String') as String ;
    } else {
      return null;
    }
  }
  /// Finalizes a billing agreement after the user has accepted through PayPal
  ///
  /// Returns the ID of the new payment method created for the user for the billing agreement. &lt;br&gt;&lt;br&gt;&lt;b&gt;Permissions Needed:&lt;/b&gt; PAYPAL_CLASSIC_ADMIN or owner
  Future<int> finalizePayPalBillingAgreement({ FinalizeBillingAgreementRequest request }) async {
    Object postBody = request;

    // verify required params are set

    // create path and map variables
    String path = "/payment/provider/paypal/classic/agreements/finish".replaceAll("{format}","json");

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
      return apiClient.deserialize(response.body, 'int') as int ;
    } else {
      return null;
    }
  }
  /// Finalizes a payment after the user has completed checkout with PayPal
  ///
  /// The invoice will be marked paid/failed by asynchronous IPN callback. &lt;br&gt;&lt;br&gt;&lt;b&gt;Permissions Needed:&lt;/b&gt; PAYPAL_CLASSIC_ADMIN or owner
  Future finalizePayPalCheckout({ FinalizePayPalPaymentRequest request }) async {
    Object postBody = request;

    // verify required params are set

    // create path and map variables
    String path = "/payment/provider/paypal/classic/checkout/finish".replaceAll("{format}","json");

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
