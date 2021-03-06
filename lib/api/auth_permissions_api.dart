part of swagger.api;



class Auth_PermissionsApi {
  final ApiClient apiClient;

  Auth_PermissionsApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Create a new permission
  ///
  /// &lt;b&gt;Permissions Needed:&lt;/b&gt; PERMISSIONS_ADMIN
  Future<PermissionResource> createPermission({ PermissionResource permissionResource }) async {
    Object postBody = permissionResource;

    // verify required params are set

    // create path and map variables
    String path = "/auth/permissions".replaceAll("{format}","json");

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
      return apiClient.deserialize(response.body, 'PermissionResource') as PermissionResource ;
    } else {
      return null;
    }
  }
  /// Delete a permission
  ///
  /// &lt;b&gt;Permissions Needed:&lt;/b&gt; PERMISSIONS_ADMIN
  Future deletePermission(String permission, { bool force }) async {
    Object postBody = null;

    // verify required params are set
    if(permission == null) {
     throw new ApiException(400, "Missing required param: permission");
    }

    // create path and map variables
    String path = "/auth/permissions/{permission}".replaceAll("{format}","json").replaceAll("{" + "permission" + "}", permission.toString());

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
  /// Get a single permission
  ///
  /// &lt;b&gt;Permissions Needed:&lt;/b&gt; PERMISSIONS_ADMIN
  Future<PermissionResource> getPermission(String permission) async {
    Object postBody = null;

    // verify required params are set
    if(permission == null) {
     throw new ApiException(400, "Missing required param: permission");
    }

    // create path and map variables
    String path = "/auth/permissions/{permission}".replaceAll("{format}","json").replaceAll("{" + "permission" + "}", permission.toString());

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
      return apiClient.deserialize(response.body, 'PermissionResource') as PermissionResource ;
    } else {
      return null;
    }
  }
  /// List and search permissions
  ///
  /// &lt;b&gt;Permissions Needed:&lt;/b&gt; PERMISSIONS_ADMIN
  Future<PageResource«PermissionResource»> getPermissions({ int size, int page, String order }) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/auth/permissions".replaceAll("{format}","json");

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
      return apiClient.deserialize(response.body, 'PageResource«PermissionResource»') as PageResource«PermissionResource» ;
    } else {
      return null;
    }
  }
  /// Update a permission
  ///
  /// &lt;b&gt;Permissions Needed:&lt;/b&gt; PERMISSIONS_ADMIN
  Future<PermissionResource> updatePermission(String permission, { PermissionResource permissionResource }) async {
    Object postBody = permissionResource;

    // verify required params are set
    if(permission == null) {
     throw new ApiException(400, "Missing required param: permission");
    }

    // create path and map variables
    String path = "/auth/permissions/{permission}".replaceAll("{format}","json").replaceAll("{" + "permission" + "}", permission.toString());

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
      return apiClient.deserialize(response.body, 'PermissionResource') as PermissionResource ;
    } else {
      return null;
    }
  }
}
