part of swagger.api;

class QueryParam {
  String name;
  String value;

  QueryParam(this.name, this.value);
}

class ApiClient {

  String basePath;
  var client = new BrowserClient();

  Map<String, String> _defaultHeaderMap = {};
  Map<String, Authentication> _authentications = {};

  final dson = new Dartson.JSON()
                   ..addTransformer(new DateTimeParser(), DateTime);

  final _RegList = new RegExp(r'^List<(.*)>$');
  final _RegMap = new RegExp(r'^Map<String,(.*)>$');

  ApiClient({this.basePath: "https://devsandbox.knetikcloud.com/"}) {
    // Setup authentications (key: authentication name, value: authentication).
  }

  void addDefaultHeader(String key, String value) {
     _defaultHeaderMap[key] = value;
  }

  dynamic _deserialize(dynamic value, String targetType) {
    try {
      switch (targetType) {
        case 'String':
          return '$value';
        case 'int':
          return value is int ? value : int.parse('$value');
        case 'bool':
          return value is bool ? value : '$value'.toLowerCase() == 'true';
        case 'double':
          return value is double ? value : double.parse('$value');
        case 'AchievementDefinitionResource':
          return dson.map(value, new AchievementDefinitionResource());
        case 'AchievementProgressUpdateRequest':
          return dson.map(value, new AchievementProgressUpdateRequest());
        case 'ActionResource':
          return dson.map(value, new ActionResource());
        case 'ActionVariableResource':
          return dson.map(value, new ActionVariableResource());
        case 'ActivityEntitlementResource':
          return dson.map(value, new ActivityEntitlementResource());
        case 'ActivityOccurrenceCreationFailure':
          return dson.map(value, new ActivityOccurrenceCreationFailure());
        case 'ActivityOccurrenceJoinResult':
          return dson.map(value, new ActivityOccurrenceJoinResult());
        case 'ActivityOccurrenceResource':
          return dson.map(value, new ActivityOccurrenceResource());
        case 'ActivityOccurrenceResults':
          return dson.map(value, new ActivityOccurrenceResults());
        case 'ActivityResource':
          return dson.map(value, new ActivityResource());
        case 'ActivityUserResource':
          return dson.map(value, new ActivityUserResource());
        case 'AddressResource':
          return dson.map(value, new AddressResource());
        case 'Affiliate':
          return dson.map(value, new Affiliate());
        case 'AmazonS3Activity':
          return dson.map(value, new AmazonS3Activity());
        case 'AnswerResource':
          return dson.map(value, new AnswerResource());
        case 'ApplyPaymentRequest':
          return dson.map(value, new ApplyPaymentRequest());
        case 'ArticleResource':
          return dson.map(value, new ArticleResource());
        case 'Artist':
          return dson.map(value, new Artist());
        case 'ArtistResource':
          return dson.map(value, new ArtistResource());
        case 'AvailableSettingResource':
          return dson.map(value, new AvailableSettingResource());
        case 'BareActivityResource':
          return dson.map(value, new BareActivityResource());
        case 'BareChallengeActivityResource':
          return dson.map(value, new BareChallengeActivityResource());
        case 'Batch':
          return dson.map(value, new Batch());
        case 'BatchRequest':
          return dson.map(value, new BatchRequest());
        case 'BatchReturn':
          return dson.map(value, new BatchReturn());
        case 'Behavior':
          return dson.map(value, new Behavior());
        case 'BillingReport':
          return dson.map(value, new BillingReport());
        case 'BooleanResource':
          return dson.map(value, new BooleanResource());
        case 'BreCategoryResource':
          return dson.map(value, new BreCategoryResource());
        case 'BreEvent':
          return dson.map(value, new BreEvent());
        case 'BreEventLog':
          return dson.map(value, new BreEventLog());
        case 'BreGlobalResource':
          return dson.map(value, new BreGlobalResource());
        case 'BreGlobalScopeDefinition':
          return dson.map(value, new BreGlobalScopeDefinition());
        case 'BreRule':
          return dson.map(value, new BreRule());
        case 'BreRuleLog':
          return dson.map(value, new BreRuleLog());
        case 'BreTriggerParameterDefinition':
          return dson.map(value, new BreTriggerParameterDefinition());
        case 'BreTriggerResource':
          return dson.map(value, new BreTriggerResource());
        case 'BundleItem':
          return dson.map(value, new BundleItem());
        case 'BundledSku':
          return dson.map(value, new BundledSku());
        case 'CampaignResource':
          return dson.map(value, new CampaignResource());
        case 'Cart':
          return dson.map(value, new Cart());
        case 'CartItemRequest':
          return dson.map(value, new CartItemRequest());
        case 'CartLineItem':
          return dson.map(value, new CartLineItem());
        case 'CartShippableResponse':
          return dson.map(value, new CartShippableResponse());
        case 'CartShippingAddressRequest':
          return dson.map(value, new CartShippingAddressRequest());
        case 'CartShippingOption':
          return dson.map(value, new CartShippingOption());
        case 'CartSummary':
          return dson.map(value, new CartSummary());
        case 'CatalogSale':
          return dson.map(value, new CatalogSale());
        case 'CategoryResource':
          return dson.map(value, new CategoryResource());
        case 'ChallengeActivityResource':
          return dson.map(value, new ChallengeActivityResource());
        case 'ChallengeEventResource':
          return dson.map(value, new ChallengeEventResource());
        case 'ChallengeResource':
          return dson.map(value, new ChallengeResource());
        case 'CityResource':
          return dson.map(value, new CityResource());
        case 'ClientResource':
          return dson.map(value, new ClientResource());
        case 'Collection«Country»':
          return dson.map(value, new Collection«Country»());
        case 'Collection«VideoContribution»':
          return dson.map(value, new Collection«VideoContribution»());
        case 'Collection«string»':
          return dson.map(value, new Collection«string»());
        case 'CommentResource':
          return dson.map(value, new CommentResource());
        case 'CommentSearch':
          return dson.map(value, new CommentSearch());
        case 'Config':
          return dson.map(value, new Config());
        case 'ContributionResource':
          return dson.map(value, new ContributionResource());
        case 'Country':
          return dson.map(value, new Country());
        case 'CountryResource':
          return dson.map(value, new CountryResource());
        case 'CountryTaxResource':
          return dson.map(value, new CountryTaxResource());
        case 'CouponDefinition':
          return dson.map(value, new CouponDefinition());
        case 'CouponItem':
          return dson.map(value, new CouponItem());
        case 'CreateBillingAgreementRequest':
          return dson.map(value, new CreateBillingAgreementRequest());
        case 'CreatePayPalPaymentRequest':
          return dson.map(value, new CreatePayPalPaymentRequest());
        case 'Currency':
          return dson.map(value, new Currency());
        case 'CurrencyResource':
          return dson.map(value, new CurrencyResource());
        case 'CustomerConfig':
          return dson.map(value, new CustomerConfig());
        case 'CustomerResource':
          return dson.map(value, new CustomerResource());
        case 'DatabaseConfig':
          return dson.map(value, new DatabaseConfig());
        case 'DeltaResource':
          return dson.map(value, new DeltaResource());
        case 'DeviceResource':
          return dson.map(value, new DeviceResource());
        case 'Discount':
          return dson.map(value, new Discount());
        case 'DispositionCount':
          return dson.map(value, new DispositionCount());
        case 'DispositionResource':
          return dson.map(value, new DispositionResource());
        case 'EntitlementItem':
          return dson.map(value, new EntitlementItem());
        case 'Expression«object»':
          return dson.map(value, new Expression«object»());
        case 'FinalizeBillingAgreementRequest':
          return dson.map(value, new FinalizeBillingAgreementRequest());
        case 'FinalizePayPalPaymentRequest':
          return dson.map(value, new FinalizePayPalPaymentRequest());
        case 'FlagReportResource':
          return dson.map(value, new FlagReportResource());
        case 'FlagResource':
          return dson.map(value, new FlagResource());
        case 'ForwardLog':
          return dson.map(value, new ForwardLog());
        case 'FulfillmentType':
          return dson.map(value, new FulfillmentType());
        case 'GooglePaymentRequest':
          return dson.map(value, new GooglePaymentRequest());
        case 'GrantTypeResource':
          return dson.map(value, new GrantTypeResource());
        case 'ImportJobOutputResource':
          return dson.map(value, new ImportJobOutputResource());
        case 'ImportJobResource':
          return dson.map(value, new ImportJobResource());
        case 'InventorySubscriptionResource':
          return dson.map(value, new InventorySubscriptionResource());
        case 'InvoiceCreateRequest':
          return dson.map(value, new InvoiceCreateRequest());
        case 'InvoiceItemResource':
          return dson.map(value, new InvoiceItemResource());
        case 'InvoiceLogEntry':
          return dson.map(value, new InvoiceLogEntry());
        case 'InvoicePaymentStatusRequest':
          return dson.map(value, new InvoicePaymentStatusRequest());
        case 'InvoiceResource':
          return dson.map(value, new InvoiceResource());
        case 'ItemBehaviorDefinitionResource':
          return dson.map(value, new ItemBehaviorDefinitionResource());
        case 'ItemTemplateResource':
          return dson.map(value, new ItemTemplateResource());
        case 'KeyValuePair«string,string»':
          return dson.map(value, new KeyValuePair«string,string»());
        case 'Language':
          return dson.map(value, new Language());
        case 'LeaderboardEntryResource':
          return dson.map(value, new LeaderboardEntryResource());
        case 'LeaderboardResource':
          return dson.map(value, new LeaderboardResource());
        case 'Localizer':
          return dson.map(value, new Localizer());
        case 'LocationLogResource':
          return dson.map(value, new LocationLogResource());
        case 'LookupTypeResource':
          return dson.map(value, new LookupTypeResource());
        case 'Maintenance':
          return dson.map(value, new Maintenance());
        case 'Map«string,object»':
          return dson.map(value, new Map«string,object»());
        case 'MetricResource':
          return dson.map(value, new MetricResource());
        case 'ModelOperator':
          return dson.map(value, new ModelOperator());
        case 'MongoDatabaseConfig':
          return dson.map(value, new MongoDatabaseConfig());
        case 'NestedCategory':
          return dson.map(value, new NestedCategory());
        case 'NewPasswordRequest':
          return dson.map(value, new NewPasswordRequest());
        case 'OauthAccessTokenResource':
          return dson.map(value, new OauthAccessTokenResource());
        case 'OptimalPaymentRequest':
          return dson.map(value, new OptimalPaymentRequest());
        case 'Page«AchievementDefinitionResource»':
          return dson.map(value, new Page«AchievementDefinitionResource»());
        case 'Page«ArticleResource»':
          return dson.map(value, new Page«ArticleResource»());
        case 'Page«ArtistResource»':
          return dson.map(value, new Page«ArtistResource»());
        case 'Page«BareActivityResource»':
          return dson.map(value, new Page«BareActivityResource»());
        case 'Page«BareChallengeActivityResource»':
          return dson.map(value, new Page«BareChallengeActivityResource»());
        case 'Page«BillingReport»':
          return dson.map(value, new Page«BillingReport»());
        case 'Page«BreCategoryResource»':
          return dson.map(value, new Page«BreCategoryResource»());
        case 'Page«BreEventLog»':
          return dson.map(value, new Page«BreEventLog»());
        case 'Page«BreGlobalResource»':
          return dson.map(value, new Page«BreGlobalResource»());
        case 'Page«BreRule»':
          return dson.map(value, new Page«BreRule»());
        case 'Page«BreTriggerResource»':
          return dson.map(value, new Page«BreTriggerResource»());
        case 'Page«CampaignResource»':
          return dson.map(value, new Page«CampaignResource»());
        case 'Page«CartSummary»':
          return dson.map(value, new Page«CartSummary»());
        case 'Page«CatalogSale»':
          return dson.map(value, new Page«CatalogSale»());
        case 'Page«CategoryResource»':
          return dson.map(value, new Page«CategoryResource»());
        case 'Page«ChallengeEventResource»':
          return dson.map(value, new Page«ChallengeEventResource»());
        case 'Page«ChallengeResource»':
          return dson.map(value, new Page«ChallengeResource»());
        case 'Page«ClientResource»':
          return dson.map(value, new Page«ClientResource»());
        case 'Page«CommentResource»':
          return dson.map(value, new Page«CommentResource»());
        case 'Page«Config»':
          return dson.map(value, new Page«Config»());
        case 'Page«CountryTaxResource»':
          return dson.map(value, new Page«CountryTaxResource»());
        case 'Page«CurrencyResource»':
          return dson.map(value, new Page«CurrencyResource»());
        case 'Page«DeviceResource»':
          return dson.map(value, new Page«DeviceResource»());
        case 'Page«DispositionResource»':
          return dson.map(value, new Page«DispositionResource»());
        case 'Page«EntitlementItem»':
          return dson.map(value, new Page«EntitlementItem»());
        case 'Page«FlagReportResource»':
          return dson.map(value, new Page«FlagReportResource»());
        case 'Page«ForwardLog»':
          return dson.map(value, new Page«ForwardLog»());
        case 'Page«FulfillmentType»':
          return dson.map(value, new Page«FulfillmentType»());
        case 'Page«ImportJobResource»':
          return dson.map(value, new Page«ImportJobResource»());
        case 'Page«InvoiceLogEntry»':
          return dson.map(value, new Page«InvoiceLogEntry»());
        case 'Page«InvoiceResource»':
          return dson.map(value, new Page«InvoiceResource»());
        case 'Page«ItemTemplateResource»':
          return dson.map(value, new Page«ItemTemplateResource»());
        case 'Page«LocationLogResource»':
          return dson.map(value, new Page«LocationLogResource»());
        case 'Page«Map«string,object»»':
          return dson.map(value, new Page«Map«string,object»»());
        case 'Page«OauthAccessTokenResource»':
          return dson.map(value, new Page«OauthAccessTokenResource»());
        case 'Page«PermissionResource»':
          return dson.map(value, new Page«PermissionResource»());
        case 'Page«PollResource»':
          return dson.map(value, new Page«PollResource»());
        case 'Page«QuestionResource»':
          return dson.map(value, new Page«QuestionResource»());
        case 'Page«QuestionTemplateResource»':
          return dson.map(value, new Page«QuestionTemplateResource»());
        case 'Page«RewardSetResource»':
          return dson.map(value, new Page«RewardSetResource»());
        case 'Page«RoleResource»':
          return dson.map(value, new Page«RoleResource»());
        case 'Page«SavedAddressResource»':
          return dson.map(value, new Page«SavedAddressResource»());
        case 'Page«SimpleUserResource»':
          return dson.map(value, new Page«SimpleUserResource»());
        case 'Page«SimpleWallet»':
          return dson.map(value, new Page«SimpleWallet»());
        case 'Page«StateTaxResource»':
          return dson.map(value, new Page«StateTaxResource»());
        case 'Page«StoreItem»':
          return dson.map(value, new Page«StoreItem»());
        case 'Page«SubscriptionResource»':
          return dson.map(value, new Page«SubscriptionResource»());
        case 'Page«SubscriptionTemplateResource»':
          return dson.map(value, new Page«SubscriptionTemplateResource»());
        case 'Page«TemplateResource»':
          return dson.map(value, new Page«TemplateResource»());
        case 'Page«TransactionResource»':
          return dson.map(value, new Page«TransactionResource»());
        case 'Page«UserAchievementResource»':
          return dson.map(value, new Page«UserAchievementResource»());
        case 'Page«UserActionLog»':
          return dson.map(value, new Page«UserActionLog»());
        case 'Page«UserBaseResource»':
          return dson.map(value, new Page«UserBaseResource»());
        case 'Page«UserInventoryResource»':
          return dson.map(value, new Page«UserInventoryResource»());
        case 'Page«UserItemLogResource»':
          return dson.map(value, new Page«UserItemLogResource»());
        case 'Page«VendorResource»':
          return dson.map(value, new Page«VendorResource»());
        case 'Page«VideoRelationshipResource»':
          return dson.map(value, new Page«VideoRelationshipResource»());
        case 'Page«VideoResource»':
          return dson.map(value, new Page«VideoResource»());
        case 'Page«WalletTotalResponse»':
          return dson.map(value, new Page«WalletTotalResponse»());
        case 'Page«WalletTransactionResource»':
          return dson.map(value, new Page«WalletTransactionResource»());
        case 'Page«string»':
          return dson.map(value, new Page«string»());
        case 'PayBySavedMethodRequest':
          return dson.map(value, new PayBySavedMethodRequest());
        case 'PaymentAuthorizationResource':
          return dson.map(value, new PaymentAuthorizationResource());
        case 'PaymentMethodResource':
          return dson.map(value, new PaymentMethodResource());
        case 'PaymentMethodTypeResource':
          return dson.map(value, new PaymentMethodTypeResource());
        case 'Permission':
          return dson.map(value, new Permission());
        case 'PermissionResource':
          return dson.map(value, new PermissionResource());
        case 'PollAnswerResource':
          return dson.map(value, new PollAnswerResource());
        case 'PollResource':
          return dson.map(value, new PollResource());
        case 'PollResponseResource':
          return dson.map(value, new PollResponseResource());
        case 'PredicateOperation':
          return dson.map(value, new PredicateOperation());
        case 'Property':
          return dson.map(value, new Property());
        case 'PropertyDefinitionResource':
          return dson.map(value, new PropertyDefinitionResource());
        case 'QuestionResource':
          return dson.map(value, new QuestionResource());
        case 'QuestionTemplateResource':
          return dson.map(value, new QuestionTemplateResource());
        case 'RawEmailResource':
          return dson.map(value, new RawEmailResource());
        case 'RawSMSResource':
          return dson.map(value, new RawSMSResource());
        case 'ReactivateSubscriptionRequest':
          return dson.map(value, new ReactivateSubscriptionRequest());
        case 'RefundRequest':
          return dson.map(value, new RefundRequest());
        case 'RefundResource':
          return dson.map(value, new RefundResource());
        case 'Result':
          return dson.map(value, new Result());
        case 'RewardCurrencyResource':
          return dson.map(value, new RewardCurrencyResource());
        case 'RewardItemResource':
          return dson.map(value, new RewardItemResource());
        case 'RewardSetResource':
          return dson.map(value, new RewardSetResource());
        case 'Role':
          return dson.map(value, new Role());
        case 'RoleResource':
          return dson.map(value, new RoleResource());
        case 'SampleCountriesResponse':
          return dson.map(value, new SampleCountriesResponse());
        case 'SavedAddressResource':
          return dson.map(value, new SavedAddressResource());
        case 'Schedule':
          return dson.map(value, new Schedule());
        case 'SearchReferenceMapping':
          return dson.map(value, new SearchReferenceMapping());
        case 'SelectedSettingResource':
          return dson.map(value, new SelectedSettingResource());
        case 'SettingOption':
          return dson.map(value, new SettingOption());
        case 'ShippingItem':
          return dson.map(value, new ShippingItem());
        case 'SimpleReferenceResource«int»':
          return dson.map(value, new SimpleReferenceResource«int»());
        case 'SimpleReferenceResource«long»':
          return dson.map(value, new SimpleReferenceResource«long»());
        case 'SimpleReferenceResource«string»':
          return dson.map(value, new SimpleReferenceResource«string»());
        case 'SimpleUserResource':
          return dson.map(value, new SimpleUserResource());
        case 'SimpleWallet':
          return dson.map(value, new SimpleWallet());
        case 'Sku':
          return dson.map(value, new Sku());
        case 'SkuRequest':
          return dson.map(value, new SkuRequest());
        case 'Sort':
          return dson.map(value, new Sort());
        case 'SqlDatabaseConfig':
          return dson.map(value, new SqlDatabaseConfig());
        case 'StateResource':
          return dson.map(value, new StateResource());
        case 'StateTaxResource':
          return dson.map(value, new StateTaxResource());
        case 'StoreItem':
          return dson.map(value, new StoreItem());
        case 'SubscriptionCreditResource':
          return dson.map(value, new SubscriptionCreditResource());
        case 'SubscriptionPlanResource':
          return dson.map(value, new SubscriptionPlanResource());
        case 'SubscriptionResource':
          return dson.map(value, new SubscriptionResource());
        case 'SubscriptionTemplateResource':
          return dson.map(value, new SubscriptionTemplateResource());
        case 'TemplateEmailResource':
          return dson.map(value, new TemplateEmailResource());
        case 'TemplateResource':
          return dson.map(value, new TemplateResource());
        case 'TemplateSMSResource':
          return dson.map(value, new TemplateSMSResource());
        case 'Timezone':
          return dson.map(value, new Timezone());
        case 'TokenDetailsResource':
          return dson.map(value, new TokenDetailsResource());
        case 'TransactionResource':
          return dson.map(value, new TransactionResource());
        case 'User':
          return dson.map(value, new User());
        case 'UserAchievementResource':
          return dson.map(value, new UserAchievementResource());
        case 'UserActionLog':
          return dson.map(value, new UserActionLog());
        case 'UserActivityResultsResource':
          return dson.map(value, new UserActivityResultsResource());
        case 'UserBaseResource':
          return dson.map(value, new UserBaseResource());
        case 'UserInventoryAddRequest':
          return dson.map(value, new UserInventoryAddRequest());
        case 'UserInventoryResource':
          return dson.map(value, new UserInventoryResource());
        case 'UserItemLogResource':
          return dson.map(value, new UserItemLogResource());
        case 'UserResource':
          return dson.map(value, new UserResource());
        case 'VariableTypeResource':
          return dson.map(value, new VariableTypeResource());
        case 'VendorResource':
          return dson.map(value, new VendorResource());
        case 'Video':
          return dson.map(value, new Video());
        case 'VideoContribution':
          return dson.map(value, new VideoContribution());
        case 'VideoRelationshipResource':
          return dson.map(value, new VideoRelationshipResource());
        case 'VideoResource':
          return dson.map(value, new VideoResource());
        case 'VideoTag':
          return dson.map(value, new VideoTag());
        case 'WalletAlterRequest':
          return dson.map(value, new WalletAlterRequest());
        case 'WalletTotalResponse':
          return dson.map(value, new WalletTotalResponse());
        case 'WalletTransactionResource':
          return dson.map(value, new WalletTransactionResource());
        case 'XsollaPaymentRequest':
          return dson.map(value, new XsollaPaymentRequest());
        default:
          {
            Match match;
            if (value is List &&
                (match = _RegList.firstMatch(targetType)) != null) {
              var newTargetType = match[1];
              return value.map((v) => _deserialize(v, newTargetType)).toList();
            } else if (value is Map &&
                (match = _RegMap.firstMatch(targetType)) != null) {
              var newTargetType = match[1];
              return new Map.fromIterables(value.keys,
                  value.values.map((v) => _deserialize(v, newTargetType)));
            }
          }
      }
    } catch (e, stack) {
      throw new ApiException.withInner(500, 'Exception during deserialization.', e, stack);
    }
    throw new ApiException(500, 'Could not find a suitable class for deserialization');
  }

  dynamic deserialize(String json, String targetType) {
    // Remove all spaces.  Necessary for reg expressions as well.
    targetType = targetType.replaceAll(' ', '');

    if (targetType == 'String') return json;

    var decodedJson = JSON.decode(json);
    return _deserialize(decodedJson, targetType);
  }

  String serialize(Object obj) {
    String serialized = '';
    if (obj == null) {
      serialized = '';
    } else if (obj is String) {
      serialized = obj;
    } else {
      serialized = dson.encode(obj);
    }
    return serialized;
  }

  // We don't use a Map<String, String> for queryParams.
  // If collectionFormat is 'multi' a key might appear multiple times.
  Future<Response> invokeAPI(String path,
                             String method,
                             Iterable<QueryParam> queryParams,
                             Object body,
                             Map<String, String> headerParams,
                             Map<String, String> formParams,
                             String contentType,
                             List<String> authNames) async {

    _updateParamsForAuth(authNames, queryParams, headerParams);

    var ps = queryParams.where((p) => p.value != null).map((p) => '${p.name}=${p.value}');
    String queryString = ps.isNotEmpty ?
                         '?' + ps.join('&') :
                         '';

    String url = basePath + path + queryString;

    headerParams.addAll(_defaultHeaderMap);
    headerParams['Content-Type'] = contentType;

    if(body is MultipartRequest) {
      var request = new MultipartRequest(method, Uri.parse(url));      
      request.fields.addAll(body.fields);
      request.files.addAll(body.files);
      request.headers.addAll(body.headers);
      request.headers.addAll(headerParams);
      var response = await client.send(request);
      return Response.fromStream(response);
    } else {
      var msgBody = contentType == "application/x-www-form-urlencoded" ? formParams : serialize(body);
      switch(method) {
        case "POST":
          return client.post(url, headers: headerParams, body: msgBody);
        case "PUT":
          return client.put(url, headers: headerParams, body: msgBody);
        case "DELETE":
          return client.delete(url, headers: headerParams);
        case "PATCH":
          return client.patch(url, headers: headerParams, body: msgBody);
        default:
          return client.get(url, headers: headerParams);
      }
    }
  }

  /// Update query and header parameters based on authentication settings.
  /// @param authNames The authentications to apply  
  void _updateParamsForAuth(List<String> authNames, List<QueryParam> queryParams, Map<String, String> headerParams) {
    authNames.forEach((authName) {
      Authentication auth = _authentications[authName];
      if (auth == null) throw new ArgumentError("Authentication undefined: " + authName);
      auth.applyToParams(queryParams, headerParams);
    });
  }
}
