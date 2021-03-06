part of swagger.api;



class Auth_ClientsApi {
  final ApiClient apiClient;

  Auth_ClientsApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Create a new client
  ///
  /// &lt;b&gt;Permissions Needed:&lt;/b&gt; CLIENTS_ADMIN
  Future<ClientResource> createClient({ ClientResource clientResource }) async {
    Object postBody = clientResource;

    // verify required params are set

    // create path and map variables
    String path = "/auth/clients".replaceAll("{format}","json");

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
      return apiClient.deserialize(response.body, 'ClientResource') as ClientResource ;
    } else {
      return null;
    }
  }
  /// Delete a client
  ///
  /// &lt;b&gt;Permissions Needed:&lt;/b&gt; CLIENTS_ADMIN
  Future deleteClient(String clientKey) async {
    Object postBody = null;

    // verify required params are set
    if(clientKey == null) {
     throw new ApiException(400, "Missing required param: clientKey");
    }

    // create path and map variables
    String path = "/auth/clients/{client_key}".replaceAll("{format}","json").replaceAll("{" + "client_key" + "}", clientKey.toString());

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
  /// Get a single client
  ///
  /// &lt;b&gt;Permissions Needed:&lt;/b&gt; CLIENTS_ADMIN
  Future<ClientResource> getClient(String clientKey) async {
    Object postBody = null;

    // verify required params are set
    if(clientKey == null) {
     throw new ApiException(400, "Missing required param: clientKey");
    }

    // create path and map variables
    String path = "/auth/clients/{client_key}".replaceAll("{format}","json").replaceAll("{" + "client_key" + "}", clientKey.toString());

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
      return apiClient.deserialize(response.body, 'ClientResource') as ClientResource ;
    } else {
      return null;
    }
  }
  /// List available client grant types
  ///
  /// &lt;b&gt;Permissions Needed:&lt;/b&gt; CLIENTS_ADMIN
  Future<List<GrantTypeResource>> getClientGrantTypes() async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/auth/clients/grant-types".replaceAll("{format}","json");

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
      return apiClient.deserialize(response.body, 'List<GrantTypeResource>') as List<GrantTypeResource> ;
    } else {
      return null;
    }
  }
  /// List and search clients
  ///
  /// &lt;b&gt;Permissions Needed:&lt;/b&gt; CLIENTS_ADMIN
  Future<PageResource«ClientResource»> getClients({ int size, int page, String order }) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/auth/clients".replaceAll("{format}","json");

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
      return apiClient.deserialize(response.body, 'PageResource«ClientResource»') as PageResource«ClientResource» ;
    } else {
      return null;
    }
  }
  /// Set grant types for a client
  ///
  /// &lt;b&gt;Permissions Needed:&lt;/b&gt; CLIENTS_ADMIN
  Future setClientGrantTypes(String clientKey, { List<String> grantList }) async {
    Object postBody = grantList;

    // verify required params are set
    if(clientKey == null) {
     throw new ApiException(400, "Missing required param: clientKey");
    }

    // create path and map variables
    String path = "/auth/clients/{client_key}/grant-types".replaceAll("{format}","json").replaceAll("{" + "client_key" + "}", clientKey.toString());

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
  /// Set redirect uris for a client
  ///
  /// &lt;b&gt;Permissions Needed:&lt;/b&gt; CLIENTS_ADMIN
  Future setClientRedirectUris(String clientKey, { List<String> redirectList }) async {
    Object postBody = redirectList;

    // verify required params are set
    if(clientKey == null) {
     throw new ApiException(400, "Missing required param: clientKey");
    }

    // create path and map variables
    String path = "/auth/clients/{client_key}/redirect-uris".replaceAll("{format}","json").replaceAll("{" + "client_key" + "}", clientKey.toString());

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
  /// Update a client
  ///
  /// &lt;b&gt;Permissions Needed:&lt;/b&gt; CLIENTS_ADMIN
  Future<ClientResource> updateClient(String clientKey, { ClientResource clientResource }) async {
    Object postBody = clientResource;

    // verify required params are set
    if(clientKey == null) {
     throw new ApiException(400, "Missing required param: clientKey");
    }

    // create path and map variables
    String path = "/auth/clients/{client_key}".replaceAll("{format}","json").replaceAll("{" + "client_key" + "}", clientKey.toString());

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
}
