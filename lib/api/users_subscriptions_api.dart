part of swagger.api;



class Users_SubscriptionsApi {
  final ApiClient apiClient;

  Users_SubscriptionsApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Get details about a user&#39;s subscription
  ///
  /// &lt;b&gt;Permissions Needed:&lt;/b&gt; USERS_SUBSCRIPTIONS_ADMIN or owner
  Future<InventorySubscriptionResource> getUserSubscriptionDetails(int userId, int inventoryId) async {
    Object postBody = null;

    // verify required params are set
    if(userId == null) {
     throw new ApiException(400, "Missing required param: userId");
    }
    if(inventoryId == null) {
     throw new ApiException(400, "Missing required param: inventoryId");
    }

    // create path and map variables
    String path = "/users/{user_id}/subscriptions/{inventory_id}".replaceAll("{format}","json").replaceAll("{" + "user_id" + "}", userId.toString()).replaceAll("{" + "inventory_id" + "}", inventoryId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
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
      return apiClient.deserialize(response.body, 'InventorySubscriptionResource') as InventorySubscriptionResource ;
    } else {
      return null;
    }
  }
  /// Get details about a user&#39;s subscriptions
  ///
  /// &lt;b&gt;Permissions Needed:&lt;/b&gt; USERS_SUBSCRIPTIONS_ADMIN or owner
  Future<List<InventorySubscriptionResource>> getUsersSubscriptionDetails(int userId) async {
    Object postBody = null;

    // verify required params are set
    if(userId == null) {
     throw new ApiException(400, "Missing required param: userId");
    }

    // create path and map variables
    String path = "/users/{user_id}/subscriptions".replaceAll("{format}","json").replaceAll("{" + "user_id" + "}", userId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
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
      return apiClient.deserialize(response.body, 'List<InventorySubscriptionResource>') as List<InventorySubscriptionResource> ;
    } else {
      return null;
    }
  }
  /// Reactivate a subscription and charge fee
  ///
  /// &lt;b&gt;Permissions Needed:&lt;/b&gt; USERS_SUBSCRIPTIONS_ADMIN
  Future<InvoiceResource> reactivateUserSubscription(int userId, int inventoryId, { ReactivateSubscriptionRequest reactivateSubscriptionRequest }) async {
    Object postBody = reactivateSubscriptionRequest;

    // verify required params are set
    if(userId == null) {
     throw new ApiException(400, "Missing required param: userId");
    }
    if(inventoryId == null) {
     throw new ApiException(400, "Missing required param: inventoryId");
    }

    // create path and map variables
    String path = "/users/{user_id}/subscriptions/{inventory_id}/reactivate".replaceAll("{format}","json").replaceAll("{" + "user_id" + "}", userId.toString()).replaceAll("{" + "inventory_id" + "}", inventoryId.toString());

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
      return apiClient.deserialize(response.body, 'InvoiceResource') as InvoiceResource ;
    } else {
      return null;
    }
  }
  /// Set a new date to bill a subscription on
  ///
  /// &lt;b&gt;Permissions Needed:&lt;/b&gt; USERS_SUBSCRIPTIONS_ADMIN
  Future setSubscriptionBillDate(int userId, int inventoryId, int billDate) async {
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
    String path = "/users/{user_id}/subscriptions/{inventory_id}/bill-date".replaceAll("{format}","json").replaceAll("{" + "user_id" + "}", userId.toString()).replaceAll("{" + "inventory_id" + "}", inventoryId.toString());

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
  /// May send null to use floating default. &lt;br&gt;&lt;br&gt;&lt;b&gt;Permissions Needed:&lt;/b&gt; USERS_SUBSCRIPTIONS_ADMIN or owner
  Future setSubscriptionPaymentMethod(int userId, int inventoryId, { IntWrapper paymentMethodId }) async {
    Object postBody = paymentMethodId;

    // verify required params are set
    if(userId == null) {
     throw new ApiException(400, "Missing required param: userId");
    }
    if(inventoryId == null) {
     throw new ApiException(400, "Missing required param: inventoryId");
    }

    // create path and map variables
    String path = "/users/{user_id}/subscriptions/{inventory_id}/payment-method".replaceAll("{format}","json").replaceAll("{" + "user_id" + "}", userId.toString()).replaceAll("{" + "inventory_id" + "}", inventoryId.toString());

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
  /// Note that the new status may be blocked if the system is not configured to allow the current status to be changed to the new, to enforce proper flow. The default options for statuses are shown below but may be altered for special use cases. &lt;br&gt;&lt;br&gt;&lt;b&gt;Permissions Needed:&lt;/b&gt; USERS_SUBSCRIPTIONS_ADMIN or owner
  Future setSubscriptionStatus(int userId, int inventoryId, SubscriptionStatusWrapper status) async {
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
    String path = "/users/{user_id}/subscriptions/{inventory_id}/status".replaceAll("{format}","json").replaceAll("{" + "user_id" + "}", userId.toString()).replaceAll("{" + "inventory_id" + "}", inventoryId.toString());

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
  /// &lt;b&gt;Permissions Needed:&lt;/b&gt; USERS_SUBSCRIPTIONS_ADMIN
  Future setUserSubscriptionPlan(int userId, int inventoryId, { StringWrapper planId }) async {
    Object postBody = planId;

    // verify required params are set
    if(userId == null) {
     throw new ApiException(400, "Missing required param: userId");
    }
    if(inventoryId == null) {
     throw new ApiException(400, "Missing required param: inventoryId");
    }

    // create path and map variables
    String path = "/users/{user_id}/subscriptions/{inventory_id}/plan".replaceAll("{format}","json").replaceAll("{" + "user_id" + "}", userId.toString()).replaceAll("{" + "inventory_id" + "}", inventoryId.toString());

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
  /// Set a new subscription price for a user
  ///
  /// This new price will be what the user is charged at the begining of each new period. This override is specific to the current subscription and will not carry over if they end and later re-subscribe. It will persist if the plan is changed using the setUserSubscriptionPlan endpoint. &lt;br&gt;&lt;br&gt;&lt;b&gt;Permissions Needed:&lt;/b&gt; USERS_SUBSCRIPTIONS_ADMIN
  Future setUserSubscriptionPrice(int userId, int inventoryId, { SubscriptionPriceOverrideRequest the override details }) async {
    Object postBody = the override details;

    // verify required params are set
    if(userId == null) {
     throw new ApiException(400, "Missing required param: userId");
    }
    if(inventoryId == null) {
     throw new ApiException(400, "Missing required param: inventoryId");
    }

    // create path and map variables
    String path = "/users/{user_id}/subscriptions/{inventory_id}/price-override".replaceAll("{format}","json").replaceAll("{" + "user_id" + "}", userId.toString()).replaceAll("{" + "inventory_id" + "}", inventoryId.toString());

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
