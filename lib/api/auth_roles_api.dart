part of swagger.api;



class Auth_RolesApi {
  final ApiClient apiClient;

  Auth_RolesApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Create a new role
  ///
  /// &lt;b&gt;Permissions Needed:&lt;/b&gt; ROLES_ADMIN
  Future<RoleResource> createRole({ RoleResource roleResource }) async {
    Object postBody = roleResource;

    // verify required params are set

    // create path and map variables
    String path = "/auth/roles".replaceAll("{format}","json");

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
      return apiClient.deserialize(response.body, 'RoleResource') as RoleResource ;
    } else {
      return null;
    }
  }
  /// Delete a role
  ///
  /// &lt;b&gt;Permissions Needed:&lt;/b&gt; ROLES_ADMIN
  Future deleteRole(String role, { bool force }) async {
    Object postBody = null;

    // verify required params are set
    if(role == null) {
     throw new ApiException(400, "Missing required param: role");
    }

    // create path and map variables
    String path = "/auth/roles/{role}".replaceAll("{format}","json").replaceAll("{" + "role" + "}", role.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(force != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "force", force));
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
  /// Get roles for a client
  ///
  /// &lt;b&gt;Permissions Needed:&lt;/b&gt; ROLES_ADMIN
  Future<List<RoleResource>> getClientRoles(String clientKey) async {
    Object postBody = null;

    // verify required params are set
    if(clientKey == null) {
     throw new ApiException(400, "Missing required param: clientKey");
    }

    // create path and map variables
    String path = "/auth/clients/{client_key}/roles".replaceAll("{format}","json").replaceAll("{" + "client_key" + "}", clientKey.toString());

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
      return apiClient.deserialize(response.body, 'List<RoleResource>') as List<RoleResource> ;
    } else {
      return null;
    }
  }
  /// Get a single role
  ///
  /// &lt;b&gt;Permissions Needed:&lt;/b&gt; ROLES_ADMIN
  Future<RoleResource> getRole(String role) async {
    Object postBody = null;

    // verify required params are set
    if(role == null) {
     throw new ApiException(400, "Missing required param: role");
    }

    // create path and map variables
    String path = "/auth/roles/{role}".replaceAll("{format}","json").replaceAll("{" + "role" + "}", role.toString());

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
      return apiClient.deserialize(response.body, 'RoleResource') as RoleResource ;
    } else {
      return null;
    }
  }
  /// List and search roles
  ///
  /// &lt;b&gt;Permissions Needed:&lt;/b&gt; ROLES_ADMIN
  Future<PageResource«RoleResource»> getRoles({ String filterName, String filterRole, int size, int page, String order }) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/auth/roles".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(filterName != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "filter_name", filterName));
    }
    if(filterRole != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "filter_role", filterRole));
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
      return apiClient.deserialize(response.body, 'PageResource«RoleResource»') as PageResource«RoleResource» ;
    } else {
      return null;
    }
  }
  /// Get roles for a user
  ///
  /// &lt;b&gt;Permissions Needed:&lt;/b&gt; ROLES_ADMIN
  Future<List<RoleResource>> getUserRoles(int userId) async {
    Object postBody = null;

    // verify required params are set
    if(userId == null) {
     throw new ApiException(400, "Missing required param: userId");
    }

    // create path and map variables
    String path = "/auth/users/{user_id}/roles".replaceAll("{format}","json").replaceAll("{" + "user_id" + "}", userId.toString());

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
      return apiClient.deserialize(response.body, 'List<RoleResource>') as List<RoleResource> ;
    } else {
      return null;
    }
  }
  /// Set roles for a client
  ///
  /// &lt;b&gt;Permissions Needed:&lt;/b&gt; ROLES_ADMIN
  Future<ClientResource> setClientRoles(String clientKey, { List<String> rolesList }) async {
    Object postBody = rolesList;

    // verify required params are set
    if(clientKey == null) {
     throw new ApiException(400, "Missing required param: clientKey");
    }

    // create path and map variables
    String path = "/auth/clients/{client_key}/roles".replaceAll("{format}","json").replaceAll("{" + "client_key" + "}", clientKey.toString());

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
      return apiClient.deserialize(response.body, 'ClientResource') as ClientResource ;
    } else {
      return null;
    }
  }
  /// Set permissions for a role
  ///
  /// &lt;b&gt;Permissions Needed:&lt;/b&gt; ROLES_ADMIN
  Future<RoleResource> setPermissionsForRole(String role, { List<String> permissionsList }) async {
    Object postBody = permissionsList;

    // verify required params are set
    if(role == null) {
     throw new ApiException(400, "Missing required param: role");
    }

    // create path and map variables
    String path = "/auth/roles/{role}/permissions".replaceAll("{format}","json").replaceAll("{" + "role" + "}", role.toString());

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
      return apiClient.deserialize(response.body, 'RoleResource') as RoleResource ;
    } else {
      return null;
    }
  }
  /// Set roles for a user
  ///
  /// &lt;b&gt;Permissions Needed:&lt;/b&gt; ROLES_ADMIN
  Future<UserResource> setUserRoles(int userId, { List<String> rolesList }) async {
    Object postBody = rolesList;

    // verify required params are set
    if(userId == null) {
     throw new ApiException(400, "Missing required param: userId");
    }

    // create path and map variables
    String path = "/auth/users/{user_id}/roles".replaceAll("{format}","json").replaceAll("{" + "user_id" + "}", userId.toString());

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
      return apiClient.deserialize(response.body, 'UserResource') as UserResource ;
    } else {
      return null;
    }
  }
  /// Update a role
  ///
  /// &lt;b&gt;Permissions Needed:&lt;/b&gt; ROLES_ADMIN
  Future<RoleResource> updateRole(String role, { RoleResource roleResource }) async {
    Object postBody = roleResource;

    // verify required params are set
    if(role == null) {
     throw new ApiException(400, "Missing required param: role");
    }

    // create path and map variables
    String path = "/auth/roles/{role}".replaceAll("{format}","json").replaceAll("{" + "role" + "}", role.toString());

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
      return apiClient.deserialize(response.body, 'RoleResource') as RoleResource ;
    } else {
      return null;
    }
  }
}
