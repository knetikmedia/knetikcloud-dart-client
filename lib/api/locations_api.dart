part of swagger.api;



class LocationsApi {
  final ApiClient apiClient;

  LocationsApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Get a list of a state&#39;s cities
  ///
  /// 
  Future<List<CityResource>> citiesUsingGET(String countryCodeIso3, String stateCode) async {
    Object postBody = null;

    // verify required params are set
    if(countryCodeIso3 == null) {
     throw new ApiException(400, "Missing required param: countryCodeIso3");
    }
    if(stateCode == null) {
     throw new ApiException(400, "Missing required param: stateCode");
    }

    // create path and map variables
    String path = "/location/countries/{country_code_iso3}/states/{state_code}/cities".replaceAll("{format}","json").replaceAll("{" + "countryCodeIso3" + "}", countryCodeIso3.toString()).replaceAll("{" + "stateCode" + "}", stateCode.toString());

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
      return apiClient.deserialize(response.body, 'List<CityResource>') as List<CityResource> ;
    } else {
      return null;
    }
  }
  /// Get a list of countries
  ///
  /// 
  Future<List<CountryResource>> countriesUsingGET() async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/location/countries".replaceAll("{format}","json");

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
      return apiClient.deserialize(response.body, 'List<CountryResource>') as List<CountryResource> ;
    } else {
      return null;
    }
  }
  /// Get the currency information of your country
  ///
  /// Determined by geo ip location, currency to country mapping and a fallback setting
  Future<CurrencyResource> getCurrencyByGeoLocationUsingGET() async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/location/geolocation/currency".replaceAll("{format}","json");

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
      return apiClient.deserialize(response.body, 'CurrencyResource') as CurrencyResource ;
    } else {
      return null;
    }
  }
  /// Get the iso3 code of your country
  ///
  /// Determined by geo ip location
  Future<String> getGeoLocationCountryUsingGET() async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/location/geolocation/country".replaceAll("{format}","json");

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
      return apiClient.deserialize(response.body, 'String') as String ;
    } else {
      return null;
    }
  }
  /// Get a list of a country&#39;s states
  ///
  /// 
  Future<List<StateResource>> statesUsingGET(String countryCodeIso3) async {
    Object postBody = null;

    // verify required params are set
    if(countryCodeIso3 == null) {
     throw new ApiException(400, "Missing required param: countryCodeIso3");
    }

    // create path and map variables
    String path = "/location/countries/{country_code_iso3}/states".replaceAll("{format}","json").replaceAll("{" + "countryCodeIso3" + "}", countryCodeIso3.toString());

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
      return apiClient.deserialize(response.body, 'List<StateResource>') as List<StateResource> ;
    } else {
      return null;
    }
  }
}
