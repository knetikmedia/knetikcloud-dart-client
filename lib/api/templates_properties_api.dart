part of swagger.api;



class TemplatesPropertiesApi {
  final ApiClient apiClient;

  TemplatesPropertiesApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Get details for a template property type
  ///
  /// &lt;b&gt;Permissions Needed:&lt;/b&gt; ANY
  Future<PropertyFieldListResource> getTemplatePropertyType(String type) async {
    Object postBody = null;

    // verify required params are set
    if(type == null) {
     throw new ApiException(400, "Missing required param: type");
    }

    // create path and map variables
    String path = "/templates/properties/{type}".replaceAll("{format}","json").replaceAll("{" + "type" + "}", type.toString());

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
      return apiClient.deserialize(response.body, 'PropertyFieldListResource') as PropertyFieldListResource ;
    } else {
      return null;
    }
  }
  /// List template property types
  ///
  /// &lt;b&gt;Permissions Needed:&lt;/b&gt; ANY
  Future<List<PropertyFieldListResource>> getTemplatePropertyTypes() async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/templates/properties".replaceAll("{format}","json");

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
      return apiClient.deserialize(response.body, 'List<PropertyFieldListResource>') as List<PropertyFieldListResource> ;
    } else {
      return null;
    }
  }
}
