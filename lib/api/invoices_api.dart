part of swagger.api;



class InvoicesApi {
  final ApiClient apiClient;

  InvoicesApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Create an invoice
  ///
  /// Create an invoice(s) by providing a cart GUID. Note that there may be multiple invoices created, one per vendor.
  Future<List<InvoiceResource>> createInvoice({ InvoiceCreateRequest req }) async {
    Object postBody = req;

    // verify required params are set

    // create path and map variables
    String path = "/invoices".replaceAll("{format}","json");

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
      return apiClient.deserialize(response.body, 'List<InvoiceResource>') as List<InvoiceResource> ;
    } else {
      return null;
    }
  }
  /// Lists available fulfillment statuses
  ///
  /// 
  Future<List<String>> getFulFillmentStatuses() async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/invoices/fulfillment-statuses".replaceAll("{format}","json");

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
  /// Retrieve an invoice
  ///
  /// 
  Future<InvoiceResource> getInvoice(int id) async {
    Object postBody = null;

    // verify required params are set
    if(id == null) {
     throw new ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/invoices/{id}".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

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
      return apiClient.deserialize(response.body, 'InvoiceResource') as InvoiceResource ;
    } else {
      return null;
    }
  }
  /// List invoice logs
  ///
  /// 
  Future<PageResource«InvoiceLogEntry»> getInvoiceLogs(int id, { int size, int page }) async {
    Object postBody = null;

    // verify required params are set
    if(id == null) {
     throw new ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/invoices/{id}/logs".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

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
      return apiClient.deserialize(response.body, 'PageResource«InvoiceLogEntry»') as PageResource«InvoiceLogEntry» ;
    } else {
      return null;
    }
  }
  /// Retrieve invoices
  ///
  /// Without INVOICES_ADMIN permission the results are automatically filtered for only the logged in user&#39;s invoices. It is recomended however that filter_user be added to avoid issues for admin users accidentally getting additional invoices.
  Future<PageResource«InvoiceResource»> getInvoices({ int filterUser, String filterEmail, String filterFulfillmentStatus, String filterPaymentStatus, String filterItemName, String filterExternalRef, String filterCreatedDate, String filterVendorIds, String filterCurrency, String filterShippingStateName, String filterShippingCountryName, String filterShipping, String filterVendorName, String filterSku, int size, int page, String order }) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/invoices".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(filterUser != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "filter_user", filterUser));
    }
    if(filterEmail != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "filter_email", filterEmail));
    }
    if(filterFulfillmentStatus != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "filter_fulfillment_status", filterFulfillmentStatus));
    }
    if(filterPaymentStatus != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "filter_payment_status", filterPaymentStatus));
    }
    if(filterItemName != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "filter_item_name", filterItemName));
    }
    if(filterExternalRef != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "filter_external_ref", filterExternalRef));
    }
    if(filterCreatedDate != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "filter_created_date", filterCreatedDate));
    }
    if(filterVendorIds != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "filter_vendor_ids", filterVendorIds));
    }
    if(filterCurrency != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "filter_currency", filterCurrency));
    }
    if(filterShippingStateName != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "filter_shipping_state_name", filterShippingStateName));
    }
    if(filterShippingCountryName != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "filter_shipping_country_name", filterShippingCountryName));
    }
    if(filterShipping != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "filter_shipping", filterShipping));
    }
    if(filterVendorName != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "filter_vendor_name", filterVendorName));
    }
    if(filterSku != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "filter_sku", filterSku));
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
      return apiClient.deserialize(response.body, 'PageResource«InvoiceResource»') as PageResource«InvoiceResource» ;
    } else {
      return null;
    }
  }
  /// Lists available payment statuses
  ///
  /// 
  Future<List<String>> getPaymentStatuses() async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/invoices/payment-statuses".replaceAll("{format}","json");

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
  /// Pay an invoice using a saved payment method
  ///
  /// 
  Future payInvoice(int id, { PayBySavedMethodRequest request }) async {
    Object postBody = request;

    // verify required params are set
    if(id == null) {
     throw new ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/invoices/{id}/payments".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

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
  /// Set the fulfillment status of a bundled invoice item
  ///
  /// This allows external fulfillment systems to report success or failure. Fulfillment status changes are restricted by a specific flow determining which status can lead to which.
  Future setBundledInvoiceItemFulfillmentStatus(int id, String bundleSku, String sku, StringWrapper status) async {
    Object postBody = status;

    // verify required params are set
    if(id == null) {
     throw new ApiException(400, "Missing required param: id");
    }
    if(bundleSku == null) {
     throw new ApiException(400, "Missing required param: bundleSku");
    }
    if(sku == null) {
     throw new ApiException(400, "Missing required param: sku");
    }
    if(status == null) {
     throw new ApiException(400, "Missing required param: status");
    }

    // create path and map variables
    String path = "/invoices/{id}/items/{bundleSku}/bundled-skus/{sku}/fulfillment-status".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString()).replaceAll("{" + "bundleSku" + "}", bundleSku.toString()).replaceAll("{" + "sku" + "}", sku.toString());

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
  /// Set the external reference of an invoice
  ///
  /// 
  Future setExternalRef(int id, { StringWrapper externalRef }) async {
    Object postBody = externalRef;

    // verify required params are set
    if(id == null) {
     throw new ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/invoices/{id}/external-ref".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

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
  /// Set the fulfillment status of an invoice item
  ///
  /// This allows external fulfillment systems to report success or failure. Fulfillment status changes are restricted by a specific flow determining which status can lead to which.
  Future setInvoiceItemFulfillmentStatus(int id, String sku, StringWrapper status) async {
    Object postBody = status;

    // verify required params are set
    if(id == null) {
     throw new ApiException(400, "Missing required param: id");
    }
    if(sku == null) {
     throw new ApiException(400, "Missing required param: sku");
    }
    if(status == null) {
     throw new ApiException(400, "Missing required param: status");
    }

    // create path and map variables
    String path = "/invoices/{id}/items/{sku}/fulfillment-status".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString()).replaceAll("{" + "sku" + "}", sku.toString());

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
  /// Set the order notes of an invoice
  ///
  /// 
  Future setOrderNotes(int id, { StringWrapper orderNotes }) async {
    Object postBody = orderNotes;

    // verify required params are set
    if(id == null) {
     throw new ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/invoices/{id}/order-notes".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

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
  /// Set the payment status of an invoice
  ///
  /// This may trigger fulfillment if setting the status to &#39;paid&#39;. This is mainly intended to support external payment systems that cannot be incorporated into the payment method system. Payment status changes are restricted by a specific flow determining which status can lead to which.
  Future setPaymentStatus(int id, { InvoicePaymentStatusRequest request }) async {
    Object postBody = request;

    // verify required params are set
    if(id == null) {
     throw new ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/invoices/{id}/payment-status".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

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
  /// Set or update billing info
  ///
  /// 
  Future updateBillingInfo(int id, { AddressResource billingInfoRequest }) async {
    Object postBody = billingInfoRequest;

    // verify required params are set
    if(id == null) {
     throw new ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/invoices/{id}/billing-address".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

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
}
