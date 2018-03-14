part of swagger.api;



class Users_InventoryApi {
  final ApiClient apiClient;

  Users_InventoryApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Adds an item to the user inventory
  ///
  /// The inventory is fulfilled asynchronously UNLESS the invoice is explicitely skipped. Depending on the use case, it might require the client to verify that the entitlement was added after the fact or configure a BRE rule to get a notification in real time. &lt;br&gt;&lt;br&gt;&lt;b&gt;Permissions Needed:&lt;/b&gt; INVENTORY_ADMIN
  Future<InvoiceResource> addItemToUserInventory(int id, { UserInventoryAddRequest userInventoryAddRequest }) async {
    Object postBody = userInventoryAddRequest;

    // verify required params are set
    if(id == null) {
     throw new ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/users/{id}/inventory".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

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
  /// Check for access to an item without consuming
  ///
  /// Useful for pre-check and accounts for all various buisness rules. &lt;br&gt;&lt;br&gt;&lt;b&gt;Permissions Needed:&lt;/b&gt; INVENTORY_ADMIN or owner
  Future checkUserEntitlementItem(String userId, int itemId, { String sku }) async {
    Object postBody = null;

    // verify required params are set
    if(userId == null) {
     throw new ApiException(400, "Missing required param: userId");
    }
    if(itemId == null) {
     throw new ApiException(400, "Missing required param: itemId");
    }

    // create path and map variables
    String path = "/users/{user_id}/entitlements/{item_id}/check".replaceAll("{format}","json").replaceAll("{" + "user_id" + "}", userId.toString()).replaceAll("{" + "item_id" + "}", itemId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(sku != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "sku", sku));
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
      return ;
    } else {
      return ;
    }
  }
  /// Create an entitlement item
  ///
  /// &lt;b&gt;Permissions Needed:&lt;/b&gt; INVENTORY_ADMIN
  Future<EntitlementItem> createEntitlementItem({ bool cascade, EntitlementItem entitlementItem }) async {
    Object postBody = entitlementItem;

    // verify required params are set

    // create path and map variables
    String path = "/entitlements".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(cascade != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "cascade", cascade));
    }
    
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
      return apiClient.deserialize(response.body, 'EntitlementItem') as EntitlementItem ;
    } else {
      return null;
    }
  }
  /// Create an entitlement template
  ///
  /// Entitlement templates define a type of entitlement and the properties they have. &lt;br&gt;&lt;br&gt;&lt;b&gt;Permissions Needed:&lt;/b&gt; TEMPLATE_ADMIN
  Future<ItemTemplateResource> createEntitlementTemplate({ ItemTemplateResource template }) async {
    Object postBody = template;

    // verify required params are set

    // create path and map variables
    String path = "/entitlements/templates".replaceAll("{format}","json");

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
      return apiClient.deserialize(response.body, 'ItemTemplateResource') as ItemTemplateResource ;
    } else {
      return null;
    }
  }
  /// Delete an entitlement item
  ///
  /// &lt;b&gt;Permissions Needed:&lt;/b&gt; INVENTORY_ADMIN
  Future deleteEntitlementItem(int entitlementId) async {
    Object postBody = null;

    // verify required params are set
    if(entitlementId == null) {
     throw new ApiException(400, "Missing required param: entitlementId");
    }

    // create path and map variables
    String path = "/entitlements/{entitlement_id}".replaceAll("{format}","json").replaceAll("{" + "entitlement_id" + "}", entitlementId.toString());

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
                                             'DELETE',
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
  /// Delete an entitlement template
  ///
  /// If cascade &#x3D; &#39;detach&#39;, it will force delete the template even if it&#39;s attached to other objects. &lt;br&gt;&lt;br&gt;&lt;b&gt;Permissions Needed:&lt;/b&gt; TEMPLATE_ADMIN
  Future deleteEntitlementTemplate(String id, { String cascade }) async {
    Object postBody = null;

    // verify required params are set
    if(id == null) {
     throw new ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/entitlements/templates/{id}".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(cascade != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "cascade", cascade));
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
                                             'DELETE',
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
  /// Get a single entitlement item
  ///
  /// &lt;b&gt;Permissions Needed:&lt;/b&gt; ANY
  Future<EntitlementItem> getEntitlementItem(int entitlementId) async {
    Object postBody = null;

    // verify required params are set
    if(entitlementId == null) {
     throw new ApiException(400, "Missing required param: entitlementId");
    }

    // create path and map variables
    String path = "/entitlements/{entitlement_id}".replaceAll("{format}","json").replaceAll("{" + "entitlement_id" + "}", entitlementId.toString());

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
      return apiClient.deserialize(response.body, 'EntitlementItem') as EntitlementItem ;
    } else {
      return null;
    }
  }
  /// List and search entitlement items
  ///
  /// &lt;b&gt;Permissions Needed:&lt;/b&gt; ANY
  Future<PageResource«EntitlementItem»> getEntitlementItems({ String filterTemplate, int size, int page, String order }) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/entitlements".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(filterTemplate != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "filter_template", filterTemplate));
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
      return apiClient.deserialize(response.body, 'PageResource«EntitlementItem»') as PageResource«EntitlementItem» ;
    } else {
      return null;
    }
  }
  /// Get a single entitlement template
  ///
  /// &lt;b&gt;Permissions Needed:&lt;/b&gt; TEMPLATE_ADMIN or ACHIEVEMENTS_ADMIN
  Future<ItemTemplateResource> getEntitlementTemplate(String id) async {
    Object postBody = null;

    // verify required params are set
    if(id == null) {
     throw new ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/entitlements/templates/{id}".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

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
      return apiClient.deserialize(response.body, 'ItemTemplateResource') as ItemTemplateResource ;
    } else {
      return null;
    }
  }
  /// List and search entitlement templates
  ///
  /// &lt;b&gt;Permissions Needed:&lt;/b&gt; TEMPLATE_ADMIN or ACHIEVEMENTS_ADMIN
  Future<PageResource«ItemTemplateResource»> getEntitlementTemplates({ int size, int page, String order }) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/entitlements/templates".replaceAll("{format}","json");

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
    if(order != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "order", order));
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
      return apiClient.deserialize(response.body, 'PageResource«ItemTemplateResource»') as PageResource«ItemTemplateResource» ;
    } else {
      return null;
    }
  }
  /// List the user inventory entries for a given user
  ///
  /// &lt;b&gt;Permissions Needed:&lt;/b&gt; INVENTORY_ADMIN or owner
  Future<PageResource«UserInventoryResource»> getUserInventories(int id, { bool inactive, int size, int page, String filterItemName, int filterItemId, String filterUsername, String filterGroup, String filterDate }) async {
    Object postBody = null;

    // verify required params are set
    if(id == null) {
     throw new ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/users/{id}/inventory".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(inactive != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "inactive", inactive));
    }
    if(size != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "size", size));
    }
    if(page != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "page", page));
    }
    if(filterItemName != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "filter_item_name", filterItemName));
    }
    if(filterItemId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "filter_item_id", filterItemId));
    }
    if(filterUsername != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "filter_username", filterUsername));
    }
    if(filterGroup != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "filter_group", filterGroup));
    }
    if(filterDate != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "filter_date", filterDate));
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
      return apiClient.deserialize(response.body, 'PageResource«UserInventoryResource»') as PageResource«UserInventoryResource» ;
    } else {
      return null;
    }
  }
  /// Get an inventory entry
  ///
  /// &lt;b&gt;Permissions Needed:&lt;/b&gt; INVENTORY_ADMIN
  Future<UserInventoryResource> getUserInventory(String userId, int id) async {
    Object postBody = null;

    // verify required params are set
    if(userId == null) {
     throw new ApiException(400, "Missing required param: userId");
    }
    if(id == null) {
     throw new ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/users/{user_id}/inventory/{id}".replaceAll("{format}","json").replaceAll("{" + "user_id" + "}", userId.toString()).replaceAll("{" + "id" + "}", id.toString());

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
      return apiClient.deserialize(response.body, 'UserInventoryResource') as UserInventoryResource ;
    } else {
      return null;
    }
  }
  /// List the log entries for this inventory entry
  ///
  /// &lt;b&gt;Permissions Needed:&lt;/b&gt; INVENTORY_ADMIN or owner
  Future<PageResource«UserItemLogResource»> getUserInventoryLog(String userId, int id, { int size, int page }) async {
    Object postBody = null;

    // verify required params are set
    if(userId == null) {
     throw new ApiException(400, "Missing required param: userId");
    }
    if(id == null) {
     throw new ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/users/{user_id}/inventory/{id}/log".replaceAll("{format}","json").replaceAll("{" + "user_id" + "}", userId.toString()).replaceAll("{" + "id" + "}", id.toString());

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
      return apiClient.deserialize(response.body, 'PageResource«UserItemLogResource»') as PageResource«UserItemLogResource» ;
    } else {
      return null;
    }
  }
  /// List the user inventory entries for all users
  ///
  /// &lt;b&gt;Permissions Needed:&lt;/b&gt; INVENTORY_ADMIN
  Future<PageResource«UserInventoryResource»> getUsersInventory({ bool inactive, int size, int page, String filterItemName, int filterItemId, String filterUsername, String filterGroup, String filterDate }) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/inventories".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(inactive != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "inactive", inactive));
    }
    if(size != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "size", size));
    }
    if(page != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "page", page));
    }
    if(filterItemName != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "filter_item_name", filterItemName));
    }
    if(filterItemId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "filter_item_id", filterItemId));
    }
    if(filterUsername != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "filter_username", filterUsername));
    }
    if(filterGroup != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "filter_group", filterGroup));
    }
    if(filterDate != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "filter_date", filterDate));
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
      return apiClient.deserialize(response.body, 'PageResource«UserInventoryResource»') as PageResource«UserInventoryResource» ;
    } else {
      return null;
    }
  }
  /// Grant an entitlement
  ///
  /// &lt;b&gt;Permissions Needed:&lt;/b&gt; INVENTORY_ADMIN
  Future grantUserEntitlement(int userId, EntitlementGrantRequest grantRequest) async {
    Object postBody = grantRequest;

    // verify required params are set
    if(userId == null) {
     throw new ApiException(400, "Missing required param: userId");
    }
    if(grantRequest == null) {
     throw new ApiException(400, "Missing required param: grantRequest");
    }

    // create path and map variables
    String path = "/users/{user_id}/entitlements".replaceAll("{format}","json").replaceAll("{" + "user_id" + "}", userId.toString());

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
  /// Update an entitlement item
  ///
  /// &lt;b&gt;Permissions Needed:&lt;/b&gt; INVENTORY_ADMIN
  Future updateEntitlementItem(int entitlementId, { bool cascade, EntitlementItem entitlementItem }) async {
    Object postBody = entitlementItem;

    // verify required params are set
    if(entitlementId == null) {
     throw new ApiException(400, "Missing required param: entitlementId");
    }

    // create path and map variables
    String path = "/entitlements/{entitlement_id}".replaceAll("{format}","json").replaceAll("{" + "entitlement_id" + "}", entitlementId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(cascade != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "cascade", cascade));
    }
    
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
  /// Update an entitlement template
  ///
  /// &lt;b&gt;Permissions Needed:&lt;/b&gt; TEMPLATE_ADMIN
  Future<ItemTemplateResource> updateEntitlementTemplate(String id, { ItemTemplateResource template }) async {
    Object postBody = template;

    // verify required params are set
    if(id == null) {
     throw new ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/entitlements/templates/{id}".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

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
      return apiClient.deserialize(response.body, 'ItemTemplateResource') as ItemTemplateResource ;
    } else {
      return null;
    }
  }
  /// Set the behavior data for an inventory entry
  ///
  /// &lt;b&gt;Permissions Needed:&lt;/b&gt; INVENTORY_ADMIN
  Future updateUserInventoryBehaviorData(int userId, int id, { Object data }) async {
    Object postBody = data;

    // verify required params are set
    if(userId == null) {
     throw new ApiException(400, "Missing required param: userId");
    }
    if(id == null) {
     throw new ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/users/{user_id}/inventory/{id}/behavior-data".replaceAll("{format}","json").replaceAll("{" + "user_id" + "}", userId.toString()).replaceAll("{" + "id" + "}", id.toString());

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
  /// Set the expiration date
  ///
  /// Will change the current grace period for a subscription but not the bill date (possibly even ending before having the chance to re-bill). &lt;br&gt;&lt;br&gt;&lt;b&gt;Permissions Needed:&lt;/b&gt; INVENTORY_ADMIN
  Future updateUserInventoryExpires(int userId, int id, { int timestamp }) async {
    Object postBody = timestamp;

    // verify required params are set
    if(userId == null) {
     throw new ApiException(400, "Missing required param: userId");
    }
    if(id == null) {
     throw new ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/users/{user_id}/inventory/{id}/expires".replaceAll("{format}","json").replaceAll("{" + "user_id" + "}", userId.toString()).replaceAll("{" + "id" + "}", id.toString());

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
  /// Set the status for an inventory entry
  ///
  /// &lt;b&gt;Permissions Needed:&lt;/b&gt; INVENTORY_ADMIN
  Future updateUserInventoryStatus(int userId, int id, { InventoryStatusWrapper inventoryStatus }) async {
    Object postBody = inventoryStatus;

    // verify required params are set
    if(userId == null) {
     throw new ApiException(400, "Missing required param: userId");
    }
    if(id == null) {
     throw new ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/users/{user_id}/inventory/{id}/status".replaceAll("{format}","json").replaceAll("{" + "user_id" + "}", userId.toString()).replaceAll("{" + "id" + "}", id.toString());

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
  /// Use an item
  ///
  /// &lt;b&gt;Permissions Needed:&lt;/b&gt; INVENTORY_ADMIN or owner
  Future useUserEntitlementItem(String userId, int itemId, { String sku, String info }) async {
    Object postBody = null;

    // verify required params are set
    if(userId == null) {
     throw new ApiException(400, "Missing required param: userId");
    }
    if(itemId == null) {
     throw new ApiException(400, "Missing required param: itemId");
    }

    // create path and map variables
    String path = "/users/{user_id}/entitlements/{item_id}/use".replaceAll("{format}","json").replaceAll("{" + "user_id" + "}", userId.toString()).replaceAll("{" + "item_id" + "}", itemId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(sku != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "sku", sku));
    }
    if(info != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "info", info));
    }
    
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
