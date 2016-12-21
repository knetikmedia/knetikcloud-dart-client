part of swagger.api;



class UsersSubscriptionsApi {
  final ApiClient apiClient;

  UsersSubscriptionsApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Get details about a user&#39;s subscription
  ///
  /// 
  Future<InventorySubscriptionResource> getSubscriptionDetailsUsingGET(int userId, int inventoryId) async {
    Object postBody = null;

    // verify required params are set
    if(userId == null) {
     throw new ApiException(400, "Missing required param: userId");
    }
    if(inventoryId == null) {
     throw new ApiException(400, "Missing required param: inventoryId");
    }

    // create path and map variables
    String path = "/users/{user_id}/subscriptions/{inventory_id}".replaceAll("{format}","json").replaceAll("{" + "userId" + "}", userId.toString()).replaceAll("{" + "inventoryId" + "}", inventoryId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
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
      return apiClient.deserialize(response.body, 'InventorySubscriptionResource') as InventorySubscriptionResource ;
    } else {
      return null;
    }
  }
  /// Get details about a user&#39;s subscriptions
  ///
  /// 
  Future<List<InventorySubscriptionResource>> getSubscriptionDetailsUsingGET1(int userId) async {
    Object postBody = null;

    // verify required params are set
    if(userId == null) {
     throw new ApiException(400, "Missing required param: userId");
    }

    // create path and map variables
    String path = "/users/{user_id}/subscriptions".replaceAll("{format}","json").replaceAll("{" + "userId" + "}", userId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
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
      return apiClient.deserialize(response.body, 'List<InventorySubscriptionResource>') as List<InventorySubscriptionResource> ;
    } else {
      return null;
    }
  }
  /// Reactivate a subscription and charge fee
  ///
  /// 
  Future<InvoiceResource> reactivateUsingPOST(int userId, int inventoryId, { ReactivateSubscriptionRequest reactivateSubscriptionRequest }) async {
    Object postBody = reactivateSubscriptionRequest;

    // verify required params are set
    if(userId == null) {
     throw new ApiException(400, "Missing required param: userId");
    }
    if(inventoryId == null) {
     throw new ApiException(400, "Missing required param: inventoryId");
    }

    // create path and map variables
    String path = "/users/{user_id}/subscriptions/{inventory_id}/reactivate".replaceAll("{format}","json").replaceAll("{" + "userId" + "}", userId.toString()).replaceAll("{" + "inventoryId" + "}", inventoryId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
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
      return apiClient.deserialize(response.body, 'InvoiceResource') as InvoiceResource ;
    } else {
      return null;
    }
  }
  /// Set a new date to bill a subscription on
  ///
  /// 
  Future setBillDateUsingPUT(int userId, int inventoryId, int billDate) async {
    Object postBody = billDate;

    // verify required params are set
    if(userId == null) {
     throw new ApiException(400, "Missing required param: userId");
    }
    if(inventoryId == null) {
     throw new ApiException(400, "Missing required param: inventoryId");
    }
    if(billDate == null) {
     throw new ApiException(400, "Missing required param: billDate");
    }

    // create path and map variables
    String path = "/users/{user_id}/subscriptions/{inventory_id}/bill-date".replaceAll("{format}","json").replaceAll("{" + "userId" + "}", userId.toString()).replaceAll("{" + "inventoryId" + "}", inventoryId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
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
  /// Set the payment method to use for a subscription
  ///
  /// May send null to use floating default
  Future setPaymentMethodUsingPUT(int userId, int inventoryId, { int paymentMethodId }) async {
    Object postBody = paymentMethodId;

    // verify required params are set
    if(userId == null) {
     throw new ApiException(400, "Missing required param: userId");
    }
    if(inventoryId == null) {
     throw new ApiException(400, "Missing required param: inventoryId");
    }

    // create path and map variables
    String path = "/users/{user_id}/subscriptions/{inventory_id}/payment-method".replaceAll("{format}","json").replaceAll("{" + "userId" + "}", userId.toString()).replaceAll("{" + "inventoryId" + "}", inventoryId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
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
  /// Set the status of a subscription
  ///
  /// The body is a json string (put in quotes) that should match a desired invoice status type. Note that the new status may be blocked if the system is not configured to allow the current status to be changed to the new, to enforce proper flow. The default options for statuses are shown below but may be altered for special use cases
  Future setStatusUsingPUT(int userId, int inventoryId, String status) async {
    Object postBody = status;

    // verify required params are set
    if(userId == null) {
     throw new ApiException(400, "Missing required param: userId");
    }
    if(inventoryId == null) {
     throw new ApiException(400, "Missing required param: inventoryId");
    }
    if(status == null) {
     throw new ApiException(400, "Missing required param: status");
    }

    // create path and map variables
    String path = "/users/{user_id}/subscriptions/{inventory_id}/status".replaceAll("{format}","json").replaceAll("{" + "userId" + "}", userId.toString()).replaceAll("{" + "inventoryId" + "}", inventoryId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
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
  /// Set a new subscription plan for a user
  ///
  /// 
  Future setUserPlanUsingPUT(int userId, int inventoryId, { String planId }) async {
    Object postBody = planId;

    // verify required params are set
    if(userId == null) {
     throw new ApiException(400, "Missing required param: userId");
    }
    if(inventoryId == null) {
     throw new ApiException(400, "Missing required param: inventoryId");
    }

    // create path and map variables
    String path = "/users/{user_id}/subscriptions/{inventory_id}/plan".replaceAll("{format}","json").replaceAll("{" + "userId" + "}", userId.toString()).replaceAll("{" + "inventoryId" + "}", inventoryId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
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
