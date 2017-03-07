part of swagger.api;



class AmazonWebServicesS3Api {
  final ApiClient apiClient;

  AmazonWebServicesS3Api([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Get a signed S3 URL
  ///
  /// Requires the file name and file content type (i.e., &#39;video/mpeg&#39;)
  Future<AmazonS3Activity> getSignedS3URL({ String filename, String contentType }) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/amazon/s3/signedposturl".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(filename != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "filename", filename));
    }
    if(contentType != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "content_type", contentType));
    }
    
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
      return apiClient.deserialize(response.body, 'AmazonS3Activity') as AmazonS3Activity ;
    } else {
      return null;
    }
  }
}
