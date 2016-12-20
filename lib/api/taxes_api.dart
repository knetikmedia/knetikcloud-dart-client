part of swagger.api;



class TaxesApi {
  final ApiClient apiClient;

  TaxesApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Create a tax
  ///
  /// 
  Future createTaxUsingPOST(String countryCodeIso3, { StateTaxResource taxResource }) async {
    Object postBody = taxResource;

    // verify required params are set
    if(countryCodeIso3 == null) {
     throw new ApiException(400, "Missing required param: countryCodeIso3");
    }

    // create path and map variables
    String path = "/tax/countries/{country_code_iso3}/states".replaceAll("{format}","json").replaceAll("{" + "countryCodeIso3" + "}", countryCodeIso3.toString());

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
  /// Delete an existing tax
  ///
  /// 
  Future deleteTaxUsingDELETE(String countryCodeIso3) async {
    Object postBody = null;

    // verify required params are set
    if(countryCodeIso3 == null) {
     throw new ApiException(400, "Missing required param: countryCodeIso3");
    }

    // create path and map variables
    String path = "/tax/countries/{country_code_iso3}".replaceAll("{format}","json").replaceAll("{" + "countryCodeIso3" + "}", countryCodeIso3.toString());

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
  /// Delete an existing tax
  ///
  /// 
  Future deleteTaxUsingDELETE1(String countryCodeIso3, String stateCode) async {
    Object postBody = null;

    // verify required params are set
    if(countryCodeIso3 == null) {
     throw new ApiException(400, "Missing required param: countryCodeIso3");
    }
    if(stateCode == null) {
     throw new ApiException(400, "Missing required param: stateCode");
    }

    // create path and map variables
    String path = "/tax/countries/{country_code_iso3}/states/{state_code}".replaceAll("{format}","json").replaceAll("{" + "countryCodeIso3" + "}", countryCodeIso3.toString()).replaceAll("{" + "stateCode" + "}", stateCode.toString());

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
  /// List and search taxes across all countries
  ///
  /// Get a list of taxes
  Future<Page«StateTaxResource»> getAllTaxesUsingGET({ int size, int page, String order }) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/tax/states".replaceAll("{format}","json");

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
      return apiClient.deserialize(response.body, 'Page«StateTaxResource»') as Page«StateTaxResource» ;
    } else {
      return null;
    }
  }
  /// Get a single tax
  ///
  /// 
  Future<CountryTaxResource> getTaxUsingGET(String countryCodeIso3) async {
    Object postBody = null;

    // verify required params are set
    if(countryCodeIso3 == null) {
     throw new ApiException(400, "Missing required param: countryCodeIso3");
    }

    // create path and map variables
    String path = "/tax/countries/{country_code_iso3}".replaceAll("{format}","json").replaceAll("{" + "countryCodeIso3" + "}", countryCodeIso3.toString());

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
      return apiClient.deserialize(response.body, 'CountryTaxResource') as CountryTaxResource ;
    } else {
      return null;
    }
  }
  /// Get a single tax
  ///
  /// 
  Future<StateTaxResource> getTaxUsingGET1(String countryCodeIso3, String stateCode) async {
    Object postBody = null;

    // verify required params are set
    if(countryCodeIso3 == null) {
     throw new ApiException(400, "Missing required param: countryCodeIso3");
    }
    if(stateCode == null) {
     throw new ApiException(400, "Missing required param: stateCode");
    }

    // create path and map variables
    String path = "/tax/countries/{country_code_iso3}/states/{state_code}".replaceAll("{format}","json").replaceAll("{" + "countryCodeIso3" + "}", countryCodeIso3.toString()).replaceAll("{" + "stateCode" + "}", stateCode.toString());

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
      return apiClient.deserialize(response.body, 'StateTaxResource') as StateTaxResource ;
    } else {
      return null;
    }
  }
  /// List and search taxes
  ///
  /// Get a list of taxes
  Future<Page«CountryTaxResource»> getTaxesUsingGET({ int size, int page, String order }) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/tax/countries".replaceAll("{format}","json");

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
      return apiClient.deserialize(response.body, 'Page«CountryTaxResource»') as Page«CountryTaxResource» ;
    } else {
      return null;
    }
  }
  /// List and search taxes within a country
  ///
  /// Get a list of taxes
  Future<Page«StateTaxResource»> getTaxesUsingGET1(String countryCodeIso3, { int size, int page, String order }) async {
    Object postBody = null;

    // verify required params are set
    if(countryCodeIso3 == null) {
     throw new ApiException(400, "Missing required param: countryCodeIso3");
    }

    // create path and map variables
    String path = "/tax/countries/{country_code_iso3}/states".replaceAll("{format}","json").replaceAll("{" + "countryCodeIso3" + "}", countryCodeIso3.toString());

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
      return apiClient.deserialize(response.body, 'Page«StateTaxResource»') as Page«StateTaxResource» ;
    } else {
      return null;
    }
  }
  /// Create a tax
  ///
  /// 
  Future updateTaxUsingPOST({ CountryTaxResource taxResource }) async {
    Object postBody = taxResource;

    // verify required params are set

    // create path and map variables
    String path = "/tax/countries".replaceAll("{format}","json");

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
  /// Create or update a tax
  ///
  /// 
  Future updateTaxUsingPUT(String countryCodeIso3, { CountryTaxResource taxResource }) async {
    Object postBody = taxResource;

    // verify required params are set
    if(countryCodeIso3 == null) {
     throw new ApiException(400, "Missing required param: countryCodeIso3");
    }

    // create path and map variables
    String path = "/tax/countries/{country_code_iso3}".replaceAll("{format}","json").replaceAll("{" + "countryCodeIso3" + "}", countryCodeIso3.toString());

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
  /// Create or update a tax
  ///
  /// 
  Future updateTaxUsingPUT1(String countryCodeIso3, String stateCode, { StateTaxResource taxResource }) async {
    Object postBody = taxResource;

    // verify required params are set
    if(countryCodeIso3 == null) {
     throw new ApiException(400, "Missing required param: countryCodeIso3");
    }
    if(stateCode == null) {
     throw new ApiException(400, "Missing required param: stateCode");
    }

    // create path and map variables
    String path = "/tax/countries/{country_code_iso3}/states/{state_code}".replaceAll("{format}","json").replaceAll("{" + "countryCodeIso3" + "}", countryCodeIso3.toString()).replaceAll("{" + "stateCode" + "}", stateCode.toString());

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
