part of swagger.api;



class SearchApi {
  final ApiClient apiClient;

  SearchApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Count matches with no template
  ///
  /// This is a 1 to 1 mapping of a ElasticSearch call to _count.  Further information can be found at their &lt;a href&#x3D;&#39;https://www.elastic.co/guide/en/elasticsearch/reference/current/search-count.html&#39;&gt;API guide&lt;/a&gt;
  Future<Object> searchCountGET(String type) async {
    Object postBody = null;

    // verify required params are set
    if(type == null) {
     throw new ApiException(400, "Missing required param: type");
    }

    // create path and map variables
    String path = "/search/count/{type}".replaceAll("{format}","json").replaceAll("{" + "type" + "}", type.toString());

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
      return apiClient.deserialize(response.body, 'Object') as Object ;
    } else {
      return null;
    }
  }
  /// Count matches with no template
  ///
  /// This is a 1 to 1 mapping of a ElasticSearch call to _count.  Further information can be found at their &lt;a href&#x3D;&#39;https://www.elastic.co/guide/en/elasticsearch/reference/current/search-count.html&#39;&gt;API guide&lt;/a&gt;
  Future<Object> searchCountPOST(String type, { Object query }) async {
    Object postBody = query;

    // verify required params are set
    if(type == null) {
     throw new ApiException(400, "Missing required param: type");
    }

    // create path and map variables
    String path = "/search/count/{type}".replaceAll("{format}","json").replaceAll("{" + "type" + "}", type.toString());

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
      return apiClient.deserialize(response.body, 'Object') as Object ;
    } else {
      return null;
    }
  }
  /// Count matches with a template
  ///
  /// This is a 1 to 1 mapping of a ElasticSearch call to _count.  Further information can be found at their &lt;a href&#x3D;&#39;https://www.elastic.co/guide/en/elasticsearch/reference/current/search-count.html&#39;&gt;API guide&lt;/a&gt;
  Future<Object> searchCountWithTemplateGET(String type, String template) async {
    Object postBody = null;

    // verify required params are set
    if(type == null) {
     throw new ApiException(400, "Missing required param: type");
    }
    if(template == null) {
     throw new ApiException(400, "Missing required param: template");
    }

    // create path and map variables
    String path = "/search/count/{type}/{template}".replaceAll("{format}","json").replaceAll("{" + "type" + "}", type.toString()).replaceAll("{" + "template" + "}", template.toString());

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
      return apiClient.deserialize(response.body, 'Object') as Object ;
    } else {
      return null;
    }
  }
  /// Count matches with a template
  ///
  /// This is a 1 to 1 mapping of a ElasticSearch call to _count.  Further information can be found at their &lt;a href&#x3D;&#39;https://www.elastic.co/guide/en/elasticsearch/reference/current/search-count.html&#39;&gt;API guide&lt;/a&gt;
  Future<Object> searchCountWithTemplatePOST(String type, String template, { Object query }) async {
    Object postBody = query;

    // verify required params are set
    if(type == null) {
     throw new ApiException(400, "Missing required param: type");
    }
    if(template == null) {
     throw new ApiException(400, "Missing required param: template");
    }

    // create path and map variables
    String path = "/search/count/{type}/{template}".replaceAll("{format}","json").replaceAll("{" + "type" + "}", type.toString()).replaceAll("{" + "template" + "}", template.toString());

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
      return apiClient.deserialize(response.body, 'Object') as Object ;
    } else {
      return null;
    }
  }
  /// Get document with no template
  ///
  /// This is a 1 to 1 mapping of a ElasticSearch call.  Further information can be found at their &lt;a href&#x3D;&#39;https://www.elastic.co/guide/en/elasticsearch/reference/current/search-count.html&#39;&gt;API guide&lt;/a&gt;
  Future<Object> searchDocumentGET(String type, String id) async {
    Object postBody = null;

    // verify required params are set
    if(type == null) {
     throw new ApiException(400, "Missing required param: type");
    }
    if(id == null) {
     throw new ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/search/documents/{type}/{id}".replaceAll("{format}","json").replaceAll("{" + "type" + "}", type.toString()).replaceAll("{" + "id" + "}", id.toString());

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
      return apiClient.deserialize(response.body, 'Object') as Object ;
    } else {
      return null;
    }
  }
  /// Get document with a template
  ///
  /// This is a 1 to 1 mapping of a ElasticSearch call.  Further information can be found at their &lt;a href&#x3D;&#39;https://www.elastic.co/guide/en/elasticsearch/reference/current/search-count.html&#39;&gt;API guide&lt;/a&gt;
  Future<Object> searchDocumentWithTemplateGET(String type, String id, String template) async {
    Object postBody = null;

    // verify required params are set
    if(type == null) {
     throw new ApiException(400, "Missing required param: type");
    }
    if(id == null) {
     throw new ApiException(400, "Missing required param: id");
    }
    if(template == null) {
     throw new ApiException(400, "Missing required param: template");
    }

    // create path and map variables
    String path = "/search/documents/{type}/{template}/{id}".replaceAll("{format}","json").replaceAll("{" + "type" + "}", type.toString()).replaceAll("{" + "id" + "}", id.toString()).replaceAll("{" + "template" + "}", template.toString());

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
      return apiClient.deserialize(response.body, 'Object') as Object ;
    } else {
      return null;
    }
  }
  /// Explain matches with no template
  ///
  /// This is a 1 to 1 mapping of a ElasticSearch call to _explain.  Further information can be found at their &lt;a href&#x3D;&#39;https://www.elastic.co/guide/en/elasticsearch/reference/current/search-count.html&#39;&gt;API guide&lt;/a&gt;
  Future<Object> searchExplainGET(String type, String id) async {
    Object postBody = null;

    // verify required params are set
    if(type == null) {
     throw new ApiException(400, "Missing required param: type");
    }
    if(id == null) {
     throw new ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/search/explain/{type}/{id}".replaceAll("{format}","json").replaceAll("{" + "type" + "}", type.toString()).replaceAll("{" + "id" + "}", id.toString());

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
      return apiClient.deserialize(response.body, 'Object') as Object ;
    } else {
      return null;
    }
  }
  /// Explain matches with no template
  ///
  /// This is a 1 to 1 mapping of a ElasticSearch call to _explain.  Further information can be found at their &lt;a href&#x3D;&#39;https://www.elastic.co/guide/en/elasticsearch/reference/current/search-count.html&#39;&gt;API guide&lt;/a&gt;
  Future<Object> searchExplainPOST(String type, String id, { Object query }) async {
    Object postBody = query;

    // verify required params are set
    if(type == null) {
     throw new ApiException(400, "Missing required param: type");
    }
    if(id == null) {
     throw new ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/search/explain/{type}/{id}".replaceAll("{format}","json").replaceAll("{" + "type" + "}", type.toString()).replaceAll("{" + "id" + "}", id.toString());

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
      return apiClient.deserialize(response.body, 'Object') as Object ;
    } else {
      return null;
    }
  }
  /// Explain matches with a template
  ///
  /// This is a 1 to 1 mapping of a ElasticSearch call to _explain.  Further information can be found at their &lt;a href&#x3D;&#39;https://www.elastic.co/guide/en/elasticsearch/reference/current/search-count.html&#39;&gt;API guide&lt;/a&gt;
  Future<Object> searchExplainWithTemplateGET(String type, String id, String template) async {
    Object postBody = null;

    // verify required params are set
    if(type == null) {
     throw new ApiException(400, "Missing required param: type");
    }
    if(id == null) {
     throw new ApiException(400, "Missing required param: id");
    }
    if(template == null) {
     throw new ApiException(400, "Missing required param: template");
    }

    // create path and map variables
    String path = "/search/explain/{type}/{template}/{id}".replaceAll("{format}","json").replaceAll("{" + "type" + "}", type.toString()).replaceAll("{" + "id" + "}", id.toString()).replaceAll("{" + "template" + "}", template.toString());

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
      return apiClient.deserialize(response.body, 'Object') as Object ;
    } else {
      return null;
    }
  }
  /// Explain matches with a template
  ///
  /// This is a 1 to 1 mapping of a ElasticSearch call to _explain.  Further information can be found at their &lt;a href&#x3D;&#39;https://www.elastic.co/guide/en/elasticsearch/reference/current/search-count.html&#39;&gt;API guide&lt;/a&gt;
  Future<Object> searchExplainWithTemplatePOST(String type, String id, String template, { Object query }) async {
    Object postBody = query;

    // verify required params are set
    if(type == null) {
     throw new ApiException(400, "Missing required param: type");
    }
    if(id == null) {
     throw new ApiException(400, "Missing required param: id");
    }
    if(template == null) {
     throw new ApiException(400, "Missing required param: template");
    }

    // create path and map variables
    String path = "/search/explain/{type}/{template}/{id}".replaceAll("{format}","json").replaceAll("{" + "type" + "}", type.toString()).replaceAll("{" + "id" + "}", id.toString()).replaceAll("{" + "template" + "}", template.toString());

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
      return apiClient.deserialize(response.body, 'Object') as Object ;
    } else {
      return null;
    }
  }
  /// Search an index with no template
  ///
  /// This is a 1 to 1 mapping of a ElasticSearch call to _search.  Further information can be found at their &lt;a href&#x3D;&#39;https://www.elastic.co/guide/en/elasticsearch/reference/current/search.html&#39;&gt;API guide&lt;/a&gt;
  Future<Object> searchIndex(String type, { Object query }) async {
    Object postBody = query;

    // verify required params are set
    if(type == null) {
     throw new ApiException(400, "Missing required param: type");
    }

    // create path and map variables
    String path = "/search/index/{type}".replaceAll("{format}","json").replaceAll("{" + "type" + "}", type.toString());

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
      return apiClient.deserialize(response.body, 'Object') as Object ;
    } else {
      return null;
    }
  }
  /// Search an index with no template
  ///
  /// This is a 1 to 1 mapping of a ElasticSearch call to _search.  Further information can be found at their &lt;a href&#x3D;&#39;https://www.elastic.co/guide/en/elasticsearch/reference/current/search.html&#39;&gt;API guide&lt;/a&gt;
  Future<Object> searchIndexGET(String type) async {
    Object postBody = null;

    // verify required params are set
    if(type == null) {
     throw new ApiException(400, "Missing required param: type");
    }

    // create path and map variables
    String path = "/search/index/{type}".replaceAll("{format}","json").replaceAll("{" + "type" + "}", type.toString());

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
      return apiClient.deserialize(response.body, 'Object') as Object ;
    } else {
      return null;
    }
  }
  /// Search an index with a template
  ///
  /// This is a 1 to 1 mapping of a ElasticSearch call to _search.  Further information can be found at their &lt;a href&#x3D;&#39;https://www.elastic.co/guide/en/elasticsearch/reference/current/search.html&#39;&gt;API guide&lt;/a&gt;
  Future<Object> searchIndexWithTemplateGET(String type, String template) async {
    Object postBody = null;

    // verify required params are set
    if(type == null) {
     throw new ApiException(400, "Missing required param: type");
    }
    if(template == null) {
     throw new ApiException(400, "Missing required param: template");
    }

    // create path and map variables
    String path = "/search/index/{type}/{template}".replaceAll("{format}","json").replaceAll("{" + "type" + "}", type.toString()).replaceAll("{" + "template" + "}", template.toString());

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
      return apiClient.deserialize(response.body, 'Object') as Object ;
    } else {
      return null;
    }
  }
  /// Search an index with a template
  ///
  /// This is a 1 to 1 mapping of a ElasticSearch call to _search.  Further information can be found at their &lt;a href&#x3D;&#39;https://www.elastic.co/guide/en/elasticsearch/reference/current/search.html&#39;&gt;API guide&lt;/a&gt;
  Future<Object> searchIndexWithTemplatePOST(String type, String template, { Object query }) async {
    Object postBody = query;

    // verify required params are set
    if(type == null) {
     throw new ApiException(400, "Missing required param: type");
    }
    if(template == null) {
     throw new ApiException(400, "Missing required param: template");
    }

    // create path and map variables
    String path = "/search/index/{type}/{template}".replaceAll("{format}","json").replaceAll("{" + "type" + "}", type.toString()).replaceAll("{" + "template" + "}", template.toString());

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
      return apiClient.deserialize(response.body, 'Object') as Object ;
    } else {
      return null;
    }
  }
  /// Get indices
  ///
  /// This is a 1 to 1 mapping of a ElasticSearch call to _cat/indices for indices.  Further information can be found at their &lt;a href&#x3D;&#39;https://www.elastic.co/guide/en/elasticsearch/reference/current/indices-get-mapping.html&#39;&gt;API guide&lt;/a&gt;
  Future<Object> searchIndicesGET() async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/search/indices".replaceAll("{format}","json");

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
      return apiClient.deserialize(response.body, 'Object') as Object ;
    } else {
      return null;
    }
  }
  /// Get mapping with no template
  ///
  /// This is a 1 to 1 mapping of a ElasticSearch call to _mapping.  Further information can be found at their &lt;a href&#x3D;&#39;https://www.elastic.co/guide/en/elasticsearch/reference/current/indices-get-mapping.html&#39;&gt;API guide&lt;/a&gt;
  Future<Object> searchMappingsGET(String type) async {
    Object postBody = null;

    // verify required params are set
    if(type == null) {
     throw new ApiException(400, "Missing required param: type");
    }

    // create path and map variables
    String path = "/search/mappings/{type}".replaceAll("{format}","json").replaceAll("{" + "type" + "}", type.toString());

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
      return apiClient.deserialize(response.body, 'Object') as Object ;
    } else {
      return null;
    }
  }
  /// Get mapping with a template
  ///
  /// This is a 1 to 1 mapping of a ElasticSearch call to _mapping.  Further information can be found at their &lt;a href&#x3D;&#39;https://www.elastic.co/guide/en/elasticsearch/reference/current/indices-get-mapping.html&#39;&gt;API guide&lt;/a&gt;
  Future<Object> searchMappingsWithTemplateGET(String type, String template) async {
    Object postBody = null;

    // verify required params are set
    if(type == null) {
     throw new ApiException(400, "Missing required param: type");
    }
    if(template == null) {
     throw new ApiException(400, "Missing required param: template");
    }

    // create path and map variables
    String path = "/search/mappings/{type}/{template}".replaceAll("{format}","json").replaceAll("{" + "type" + "}", type.toString()).replaceAll("{" + "template" + "}", template.toString());

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
      return apiClient.deserialize(response.body, 'Object') as Object ;
    } else {
      return null;
    }
  }
  /// Validate matches with no template
  ///
  /// This is a 1 to 1 mapping of a ElasticSearch call to _validate/query.  Further information can be found at their &lt;a href&#x3D;&#39;https://www.elastic.co/guide/en/elasticsearch/reference/current/search-validate.html&#39;&gt;API guide&lt;/a&gt;
  Future<Object> searchValidateGET(String type) async {
    Object postBody = null;

    // verify required params are set
    if(type == null) {
     throw new ApiException(400, "Missing required param: type");
    }

    // create path and map variables
    String path = "/search/validate/{type}".replaceAll("{format}","json").replaceAll("{" + "type" + "}", type.toString());

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
      return apiClient.deserialize(response.body, 'Object') as Object ;
    } else {
      return null;
    }
  }
  /// Validate matches with no template
  ///
  /// This is a 1 to 1 mapping of a ElasticSearch call to _validate/query.  Further information can be found at their &lt;a href&#x3D;&#39;https://www.elastic.co/guide/en/elasticsearch/reference/current/search-validate.html&#39;&gt;API guide&lt;/a&gt;
  Future<Object> searchValidatePOST(String type, { Object query }) async {
    Object postBody = query;

    // verify required params are set
    if(type == null) {
     throw new ApiException(400, "Missing required param: type");
    }

    // create path and map variables
    String path = "/search/validate/{type}".replaceAll("{format}","json").replaceAll("{" + "type" + "}", type.toString());

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
      return apiClient.deserialize(response.body, 'Object') as Object ;
    } else {
      return null;
    }
  }
  /// Validate matches with a template
  ///
  /// This is a 1 to 1 mapping of a ElasticSearch call to _validate/query.  Further information can be found at their &lt;a href&#x3D;&#39;https://www.elastic.co/guide/en/elasticsearch/reference/current/search-validate.html&#39;&gt;API guide&lt;/a&gt;
  Future<Object> searchValidateWithTemplateGET(String type, String template) async {
    Object postBody = null;

    // verify required params are set
    if(type == null) {
     throw new ApiException(400, "Missing required param: type");
    }
    if(template == null) {
     throw new ApiException(400, "Missing required param: template");
    }

    // create path and map variables
    String path = "/search/validate/{type}/{template}".replaceAll("{format}","json").replaceAll("{" + "type" + "}", type.toString()).replaceAll("{" + "template" + "}", template.toString());

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
      return apiClient.deserialize(response.body, 'Object') as Object ;
    } else {
      return null;
    }
  }
  /// Validate matches with a template
  ///
  /// This is a 1 to 1 mapping of a ElasticSearch call to _validate/query.  Further information can be found at their &lt;a href&#x3D;&#39;https://www.elastic.co/guide/en/elasticsearch/reference/current/search-validate.html&#39;&gt;API guide&lt;/a&gt;
  Future<Object> searchValidateWithTemplatePOST(String type, String template, { Object query }) async {
    Object postBody = query;

    // verify required params are set
    if(type == null) {
     throw new ApiException(400, "Missing required param: type");
    }
    if(template == null) {
     throw new ApiException(400, "Missing required param: template");
    }

    // create path and map variables
    String path = "/search/validate/{type}/{template}".replaceAll("{format}","json").replaceAll("{" + "type" + "}", type.toString()).replaceAll("{" + "template" + "}", template.toString());

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
      return apiClient.deserialize(response.body, 'Object') as Object ;
    } else {
      return null;
    }
  }
}
