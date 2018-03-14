part of swagger.api;



class Gamification_TriviaApi {
  final ApiClient apiClient;

  Gamification_TriviaApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Add an answer to a question
  ///
  /// &lt;b&gt;Permissions Needed:&lt;/b&gt; TRIVIA_ADMIN
  Future<AnswerResource> addQuestionAnswers(String questionId, { AnswerResource answer }) async {
    Object postBody = answer;

    // verify required params are set
    if(questionId == null) {
     throw new ApiException(400, "Missing required param: questionId");
    }

    // create path and map variables
    String path = "/trivia/questions/{question_id}/answers".replaceAll("{format}","json").replaceAll("{" + "question_id" + "}", questionId.toString());

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
      return apiClient.deserialize(response.body, 'AnswerResource') as AnswerResource ;
    } else {
      return null;
    }
  }
  /// Add a tag to a question
  ///
  /// &lt;b&gt;Permissions Needed:&lt;/b&gt; TRIVIA_ADMIN
  Future addQuestionTag(String id, { StringWrapper tag }) async {
    Object postBody = tag;

    // verify required params are set
    if(id == null) {
     throw new ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/trivia/questions/{id}/tags".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

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
  /// Add a tag to a batch of questions
  ///
  /// All questions that dont&#39;t have the tag and match filters will have it added. The returned number is the number of questions updated. &lt;br&gt;&lt;br&gt;&lt;b&gt;Permissions Needed:&lt;/b&gt; TRIVIA_ADMIN
  Future<int> addTagToQuestionsBatch({ StringWrapper tag, String filterSearch, String filterIdset, String filterCategory, String filterTag, String filterTagset, String filterType, bool filterPublished, int filterImportId }) async {
    Object postBody = tag;

    // verify required params are set

    // create path and map variables
    String path = "/trivia/questions/tags".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(filterSearch != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "filter_search", filterSearch));
    }
    if(filterIdset != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "filter_idset", filterIdset));
    }
    if(filterCategory != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "filter_category", filterCategory));
    }
    if(filterTag != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "filter_tag", filterTag));
    }
    if(filterTagset != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "filter_tagset", filterTagset));
    }
    if(filterType != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "filter_type", filterType));
    }
    if(filterPublished != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "filter_published", filterPublished));
    }
    if(filterImportId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "filter_import_id", filterImportId));
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
      return apiClient.deserialize(response.body, 'int') as int ;
    } else {
      return null;
    }
  }
  /// Create an import job
  ///
  /// Set up a job to import a set of trivia questions from a cvs file at a remote url. the file will be validated asynchronously but will not be processed until started manually with the process endpoint. &lt;br&gt;&lt;br&gt;&lt;b&gt;Permissions Needed:&lt;/b&gt; TRIVIA_ADMIN
  Future<ImportJobResource> createImportJob({ ImportJobResource request }) async {
    Object postBody = request;

    // verify required params are set

    // create path and map variables
    String path = "/trivia/import".replaceAll("{format}","json");

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
      return apiClient.deserialize(response.body, 'ImportJobResource') as ImportJobResource ;
    } else {
      return null;
    }
  }
  /// Create a question
  ///
  /// &lt;b&gt;Permissions Needed:&lt;/b&gt; TRIVIA_ADMIN
  Future<QuestionResource> createQuestion({ QuestionResource question }) async {
    Object postBody = question;

    // verify required params are set

    // create path and map variables
    String path = "/trivia/questions".replaceAll("{format}","json");

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
      return apiClient.deserialize(response.body, 'QuestionResource') as QuestionResource ;
    } else {
      return null;
    }
  }
  /// Create a question template
  ///
  /// Question templates define a type of question and the properties they have. &lt;br&gt;&lt;br&gt;&lt;b&gt;Permissions Needed:&lt;/b&gt; TRIVIA_ADMIN
  Future<QuestionTemplateResource> createQuestionTemplate({ QuestionTemplateResource questionTemplateResource }) async {
    Object postBody = questionTemplateResource;

    // verify required params are set

    // create path and map variables
    String path = "/trivia/questions/templates".replaceAll("{format}","json");

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
      return apiClient.deserialize(response.body, 'QuestionTemplateResource') as QuestionTemplateResource ;
    } else {
      return null;
    }
  }
  /// Delete an import job
  ///
  /// Also deletes all questions that were imported by it. &lt;br&gt;&lt;br&gt;&lt;b&gt;Permissions Needed:&lt;/b&gt; TRIVIA_ADMIN
  Future deleteImportJob(int id) async {
    Object postBody = null;

    // verify required params are set
    if(id == null) {
     throw new ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/trivia/import/{id}".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

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
  /// Delete a question
  ///
  /// &lt;b&gt;Permissions Needed:&lt;/b&gt; TRIVIA_ADMIN
  Future deleteQuestion(String id) async {
    Object postBody = null;

    // verify required params are set
    if(id == null) {
     throw new ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/trivia/questions/{id}".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

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
  /// Remove an answer from a question
  ///
  /// &lt;b&gt;Permissions Needed:&lt;/b&gt; TRIVIA_ADMIN
  Future deleteQuestionAnswers(String questionId, String id) async {
    Object postBody = null;

    // verify required params are set
    if(questionId == null) {
     throw new ApiException(400, "Missing required param: questionId");
    }
    if(id == null) {
     throw new ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/trivia/questions/{question_id}/answers/{id}".replaceAll("{format}","json").replaceAll("{" + "question_id" + "}", questionId.toString()).replaceAll("{" + "id" + "}", id.toString());

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
  /// Delete a question template
  ///
  /// If cascade &#x3D; &#39;detach&#39;, it will force delete the template even if it&#39;s attached to other objects. &lt;br&gt;&lt;br&gt;&lt;b&gt;Permissions Needed:&lt;/b&gt; TEMPLATE_ADMIN
  Future deleteQuestionTemplate(String id, { String cascade }) async {
    Object postBody = null;

    // verify required params are set
    if(id == null) {
     throw new ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/trivia/questions/templates/{id}".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

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
  /// Get an import job
  ///
  /// &lt;b&gt;Permissions Needed:&lt;/b&gt; TRIVIA_ADMIN
  Future<ImportJobResource> getImportJob(int id) async {
    Object postBody = null;

    // verify required params are set
    if(id == null) {
     throw new ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/trivia/import/{id}".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

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
      return apiClient.deserialize(response.body, 'ImportJobResource') as ImportJobResource ;
    } else {
      return null;
    }
  }
  /// Get a list of import job
  ///
  /// &lt;b&gt;Permissions Needed:&lt;/b&gt; TRIVIA_ADMIN
  Future<PageResource«ImportJobResource»> getImportJobs({ String filterVendor, String filterCategory, String filterName, String filterStatus, int size, int page, String order }) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/trivia/import".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(filterVendor != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "filter_vendor", filterVendor));
    }
    if(filterCategory != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "filter_category", filterCategory));
    }
    if(filterName != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "filter_name", filterName));
    }
    if(filterStatus != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "filter_status", filterStatus));
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
      return apiClient.deserialize(response.body, 'PageResource«ImportJobResource»') as PageResource«ImportJobResource» ;
    } else {
      return null;
    }
  }
  /// Get a single question
  ///
  /// &lt;b&gt;Permissions Needed:&lt;/b&gt; TRIVIA_ADMIN
  Future<QuestionResource> getQuestion(String id) async {
    Object postBody = null;

    // verify required params are set
    if(id == null) {
     throw new ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/trivia/questions/{id}".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

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
      return apiClient.deserialize(response.body, 'QuestionResource') as QuestionResource ;
    } else {
      return null;
    }
  }
  /// Get an answer for a question
  ///
  /// &lt;b&gt;Permissions Needed:&lt;/b&gt; TRIVIA_ADMIN
  Future<AnswerResource> getQuestionAnswer(String questionId, String id) async {
    Object postBody = null;

    // verify required params are set
    if(questionId == null) {
     throw new ApiException(400, "Missing required param: questionId");
    }
    if(id == null) {
     throw new ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/trivia/questions/{question_id}/answers/{id}".replaceAll("{format}","json").replaceAll("{" + "question_id" + "}", questionId.toString()).replaceAll("{" + "id" + "}", id.toString());

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
      return apiClient.deserialize(response.body, 'AnswerResource') as AnswerResource ;
    } else {
      return null;
    }
  }
  /// List the answers available for a question
  ///
  /// &lt;b&gt;Permissions Needed:&lt;/b&gt; TRIVIA_ADMIN
  Future<List<AnswerResource>> getQuestionAnswers(String questionId) async {
    Object postBody = null;

    // verify required params are set
    if(questionId == null) {
     throw new ApiException(400, "Missing required param: questionId");
    }

    // create path and map variables
    String path = "/trivia/questions/{question_id}/answers".replaceAll("{format}","json").replaceAll("{" + "question_id" + "}", questionId.toString());

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
      return apiClient.deserialize(response.body, 'List<AnswerResource>') as List<AnswerResource> ;
    } else {
      return null;
    }
  }
  /// List question deltas in ascending order of updated date
  ///
  /// The &#39;since&#39; parameter is important to avoid getting a full list of all questions. Implementors should make sure they pass the updated date of the last resource loaded, not the date of the last request, in order to avoid gaps. &lt;br&gt;&lt;br&gt;&lt;b&gt;Permissions Needed:&lt;/b&gt; TRIVIA_ADMIN
  Future<List<DeltaResource>> getQuestionDeltas({ int since }) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/trivia/questions/delta".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(since != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "since", since));
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
      return apiClient.deserialize(response.body, 'List<DeltaResource>') as List<DeltaResource> ;
    } else {
      return null;
    }
  }
  /// List the tags for a question
  ///
  /// &lt;b&gt;Permissions Needed:&lt;/b&gt; TRIVIA_ADMIN
  Future<List<String>> getQuestionTags(String id) async {
    Object postBody = null;

    // verify required params are set
    if(id == null) {
     throw new ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/trivia/questions/{id}/tags".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

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
      return apiClient.deserialize(response.body, 'List<String>') as List<String> ;
    } else {
      return null;
    }
  }
  /// Get a single question template
  ///
  /// &lt;b&gt;Permissions Needed:&lt;/b&gt; TEMPLATE_ADMIN or TRIVIA_ADMIN
  Future<QuestionTemplateResource> getQuestionTemplate(String id) async {
    Object postBody = null;

    // verify required params are set
    if(id == null) {
     throw new ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/trivia/questions/templates/{id}".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

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
      return apiClient.deserialize(response.body, 'QuestionTemplateResource') as QuestionTemplateResource ;
    } else {
      return null;
    }
  }
  /// List and search question templates
  ///
  /// &lt;b&gt;Permissions Needed:&lt;/b&gt; TEMPLATE_ADMIN or TRIVIA_ADMIN
  Future<PageResource«QuestionTemplateResource»> getQuestionTemplates({ int size, int page, String order }) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/trivia/questions/templates".replaceAll("{format}","json");

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
      return apiClient.deserialize(response.body, 'PageResource«QuestionTemplateResource»') as PageResource«QuestionTemplateResource» ;
    } else {
      return null;
    }
  }
  /// List and search questions
  ///
  /// &lt;b&gt;Permissions Needed:&lt;/b&gt; TRIVIA_ADMIN
  Future<PageResource«QuestionResource»> getQuestions({ int size, int page, String order, String filterSearch, String filterIdset, String filterCategory, String filterTagset, String filterTag, String filterType, bool filterPublished, int filterImportId }) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/trivia/questions".replaceAll("{format}","json");

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
    if(filterSearch != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "filter_search", filterSearch));
    }
    if(filterIdset != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "filter_idset", filterIdset));
    }
    if(filterCategory != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "filter_category", filterCategory));
    }
    if(filterTagset != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "filter_tagset", filterTagset));
    }
    if(filterTag != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "filter_tag", filterTag));
    }
    if(filterType != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "filter_type", filterType));
    }
    if(filterPublished != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "filter_published", filterPublished));
    }
    if(filterImportId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "filter_import_id", filterImportId));
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
      return apiClient.deserialize(response.body, 'PageResource«QuestionResource»') as PageResource«QuestionResource» ;
    } else {
      return null;
    }
  }
  /// Count questions based on filters
  ///
  /// This is also provided by the list endpoint so you don&#39;t need to call this for pagination purposes. &lt;br&gt;&lt;br&gt;&lt;b&gt;Permissions Needed:&lt;/b&gt; TRIVIA_ADMIN
  Future<int> getQuestionsCount({ String filterSearch, String filterIdset, String filterCategory, String filterTag, String filterTagset, String filterType, bool filterPublished }) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/trivia/questions/count".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(filterSearch != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "filter_search", filterSearch));
    }
    if(filterIdset != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "filter_idset", filterIdset));
    }
    if(filterCategory != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "filter_category", filterCategory));
    }
    if(filterTag != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "filter_tag", filterTag));
    }
    if(filterTagset != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "filter_tagset", filterTagset));
    }
    if(filterType != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "filter_type", filterType));
    }
    if(filterPublished != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "filter_published", filterPublished));
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
      return apiClient.deserialize(response.body, 'int') as int ;
    } else {
      return null;
    }
  }
  /// Start processing an import job
  ///
  /// Will process the CSV file and add new questions asynchronously. The status of the job must be &#39;VALID&#39;. &lt;br&gt;&lt;br&gt;&lt;b&gt;Permissions Needed:&lt;/b&gt; TRIVIA_ADMIN
  Future<ImportJobResource> processImportJob(int id, bool publishNow) async {
    Object postBody = null;

    // verify required params are set
    if(id == null) {
     throw new ApiException(400, "Missing required param: id");
    }
    if(publishNow == null) {
     throw new ApiException(400, "Missing required param: publishNow");
    }

    // create path and map variables
    String path = "/trivia/import/{id}/process".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
      queryParams.addAll(_convertParametersForCollectionFormat("", "publish_now", publishNow));
    
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
      return apiClient.deserialize(response.body, 'ImportJobResource') as ImportJobResource ;
    } else {
      return null;
    }
  }
  /// Remove a tag from a question
  ///
  /// &lt;b&gt;Permissions Needed:&lt;/b&gt; TRIVIA_ADMIN
  Future removeQuestionTag(String id, String tag) async {
    Object postBody = null;

    // verify required params are set
    if(id == null) {
     throw new ApiException(400, "Missing required param: id");
    }
    if(tag == null) {
     throw new ApiException(400, "Missing required param: tag");
    }

    // create path and map variables
    String path = "/trivia/questions/{id}/tags/{tag}".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString()).replaceAll("{" + "tag" + "}", tag.toString());

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
  /// Remove a tag from a batch of questions
  ///
  /// ll questions that have the tag and match filters will have it removed. The returned number is the number of questions updated. &lt;br&gt;&lt;br&gt;&lt;b&gt;Permissions Needed:&lt;/b&gt; TRIVIA_ADMIN
  Future<int> removeTagToQuestionsBatch(String tag, { String filterSearch, String filterIdset, String filterCategory, String filterTag, String filterTagset, String filterType, bool filterPublished, int filterImportId }) async {
    Object postBody = null;

    // verify required params are set
    if(tag == null) {
     throw new ApiException(400, "Missing required param: tag");
    }

    // create path and map variables
    String path = "/trivia/questions/tags/{tag}".replaceAll("{format}","json").replaceAll("{" + "tag" + "}", tag.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(filterSearch != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "filter_search", filterSearch));
    }
    if(filterIdset != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "filter_idset", filterIdset));
    }
    if(filterCategory != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "filter_category", filterCategory));
    }
    if(filterTag != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "filter_tag", filterTag));
    }
    if(filterTagset != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "filter_tagset", filterTagset));
    }
    if(filterType != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "filter_type", filterType));
    }
    if(filterPublished != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "filter_published", filterPublished));
    }
    if(filterImportId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "filter_import_id", filterImportId));
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
      return apiClient.deserialize(response.body, 'int') as int ;
    } else {
      return null;
    }
  }
  /// List and search tags by the beginning of the string
  ///
  /// For performance reasons, search &amp; category filters are mutually exclusive. If category is specified, search filter will be ignored in order to do fast matches for typeahead. &lt;br&gt;&lt;br&gt;&lt;b&gt;Permissions Needed:&lt;/b&gt; TRIVIA_ADMIN
  Future<List<String>> searchQuestionTags({ String filterSearch, String filterCategory, int filterImportId }) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/trivia/tags".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(filterSearch != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "filter_search", filterSearch));
    }
    if(filterCategory != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "filter_category", filterCategory));
    }
    if(filterImportId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "filter_import_id", filterImportId));
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
      return apiClient.deserialize(response.body, 'List<String>') as List<String> ;
    } else {
      return null;
    }
  }
  /// Update an import job
  ///
  /// Changes should be made before process is started for there to be any effect. &lt;br&gt;&lt;br&gt;&lt;b&gt;Permissions Needed:&lt;/b&gt; TRIVIA_ADMIN
  Future<ImportJobResource> updateImportJob(int id, { ImportJobResource request }) async {
    Object postBody = request;

    // verify required params are set
    if(id == null) {
     throw new ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/trivia/import/{id}".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

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
      return apiClient.deserialize(response.body, 'ImportJobResource') as ImportJobResource ;
    } else {
      return null;
    }
  }
  /// Update a question
  ///
  /// &lt;b&gt;Permissions Needed:&lt;/b&gt; TRIVIA_ADMIN
  Future<QuestionResource> updateQuestion(String id, { QuestionResource question }) async {
    Object postBody = question;

    // verify required params are set
    if(id == null) {
     throw new ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/trivia/questions/{id}".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

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
      return apiClient.deserialize(response.body, 'QuestionResource') as QuestionResource ;
    } else {
      return null;
    }
  }
  /// Update an answer for a question
  ///
  /// &lt;b&gt;Permissions Needed:&lt;/b&gt; TRIVIA_ADMIN
  Future updateQuestionAnswer(String questionId, String id, { AnswerResource answer }) async {
    Object postBody = answer;

    // verify required params are set
    if(questionId == null) {
     throw new ApiException(400, "Missing required param: questionId");
    }
    if(id == null) {
     throw new ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/trivia/questions/{question_id}/answers/{id}".replaceAll("{format}","json").replaceAll("{" + "question_id" + "}", questionId.toString()).replaceAll("{" + "id" + "}", id.toString());

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
  /// Update a question template
  ///
  /// &lt;b&gt;Permissions Needed:&lt;/b&gt; TEMPLATE_ADMIN
  Future<QuestionTemplateResource> updateQuestionTemplate(String id, { QuestionTemplateResource questionTemplateResource }) async {
    Object postBody = questionTemplateResource;

    // verify required params are set
    if(id == null) {
     throw new ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/trivia/questions/templates/{id}".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

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
      return apiClient.deserialize(response.body, 'QuestionTemplateResource') as QuestionTemplateResource ;
    } else {
      return null;
    }
  }
  /// Bulk update questions
  ///
  /// Will update all questions that match filters used (or all questions in system if no filters used). Body should match a question resource with only those properties you wish to set. Null values will be ignored. Returned number is how many were updated. &lt;br&gt;&lt;br&gt;&lt;b&gt;Permissions Needed:&lt;/b&gt; TRIVIA_ADMIN
  Future<int> updateQuestionsInBulk({ QuestionResource question, String filterSearch, String filterIdset, String filterCategory, String filterTagset, String filterType, bool filterPublished, int filterImportId }) async {
    Object postBody = question;

    // verify required params are set

    // create path and map variables
    String path = "/trivia/questions".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(filterSearch != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "filter_search", filterSearch));
    }
    if(filterIdset != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "filter_idset", filterIdset));
    }
    if(filterCategory != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "filter_category", filterCategory));
    }
    if(filterTagset != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "filter_tagset", filterTagset));
    }
    if(filterType != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "filter_type", filterType));
    }
    if(filterPublished != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "filter_published", filterPublished));
    }
    if(filterImportId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "filter_import_id", filterImportId));
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
      return apiClient.deserialize(response.body, 'int') as int ;
    } else {
      return null;
    }
  }
}
