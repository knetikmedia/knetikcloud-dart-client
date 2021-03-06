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

  ApiClient({this.basePath: "https://jsapi-integration.us-east-1.elasticbeanstalk.com"}) {
    // Setup authentications (key: authentication name, value: authentication).
    _authentications['oauth2_client_credentials_grant'] = new OAuth();
    _authentications['oauth2_password_grant'] = new OAuth();
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
        case 'ActionContext«object»':
          return dson.map(value, new ActionContext«object»());
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
        case 'ActivityOccurrenceResultsResource':
          return dson.map(value, new ActivityOccurrenceResultsResource());
        case 'ActivityOccurrenceSettingsResource':
          return dson.map(value, new ActivityOccurrenceSettingsResource());
        case 'ActivityOccurrenceStatusWrapper':
          return dson.map(value, new ActivityOccurrenceStatusWrapper());
        case 'ActivityResource':
          return dson.map(value, new ActivityResource());
        case 'ActivityUserResource':
          return dson.map(value, new ActivityUserResource());
        case 'ActivityUserStatusWrapper':
          return dson.map(value, new ActivityUserStatusWrapper());
        case 'AddressResource':
          return dson.map(value, new AddressResource());
        case 'AggregateCountResource':
          return dson.map(value, new AggregateCountResource());
        case 'AggregateInvoiceReportResource':
          return dson.map(value, new AggregateInvoiceReportResource());
        case 'AmazonS3Activity':
          return dson.map(value, new AmazonS3Activity());
        case 'AnswerResource':
          return dson.map(value, new AnswerResource());
        case 'ApplyPaymentRequest':
          return dson.map(value, new ApplyPaymentRequest());
        case 'ArgumentResource':
          return dson.map(value, new ArgumentResource());
        case 'ArticleResource':
          return dson.map(value, new ArticleResource());
        case 'ArtistResource':
          return dson.map(value, new ArtistResource());
        case 'AvailableSettingResource':
          return dson.map(value, new AvailableSettingResource());
        case 'BareActivityResource':
          return dson.map(value, new BareActivityResource());
        case 'BareChallengeActivityResource':
          return dson.map(value, new BareChallengeActivityResource());
        case 'BasicTemplatedResource':
          return dson.map(value, new BasicTemplatedResource());
        case 'Batch':
          return dson.map(value, new Batch());
        case 'BatchRequest':
          return dson.map(value, new BatchRequest());
        case 'BatchResult':
          return dson.map(value, new BatchResult());
        case 'BatchReturn':
          return dson.map(value, new BatchReturn());
        case 'Behavior':
          return dson.map(value, new Behavior());
        case 'BehaviorDefinitionResource':
          return dson.map(value, new BehaviorDefinitionResource());
        case 'BillingReport':
          return dson.map(value, new BillingReport());
        case 'BooleanResource':
          return dson.map(value, new BooleanResource());
        case 'BreActionLog':
          return dson.map(value, new BreActionLog());
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
        case 'BroadcastableEvent':
          return dson.map(value, new BroadcastableEvent());
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
        case 'ChallengeEventParticipantResource':
          return dson.map(value, new ChallengeEventParticipantResource());
        case 'ChallengeEventResource':
          return dson.map(value, new ChallengeEventResource());
        case 'ChallengeResource':
          return dson.map(value, new ChallengeResource());
        case 'ChatBlacklistResource':
          return dson.map(value, new ChatBlacklistResource());
        case 'ChatMessageRequest':
          return dson.map(value, new ChatMessageRequest());
        case 'ChatMessageResource':
          return dson.map(value, new ChatMessageResource());
        case 'ChatThreadResource':
          return dson.map(value, new ChatThreadResource());
        case 'ChatUserThreadResource':
          return dson.map(value, new ChatUserThreadResource());
        case 'ClientResource':
          return dson.map(value, new ClientResource());
        case 'CommentResource':
          return dson.map(value, new CommentResource());
        case 'Config':
          return dson.map(value, new Config());
        case 'ConfigLookupResource':
          return dson.map(value, new ConfigLookupResource());
        case 'ConstantResource':
          return dson.map(value, new ConstantResource());
        case 'ContributionResource':
          return dson.map(value, new ContributionResource());
        case 'CoreActivityOccurrenceSettings':
          return dson.map(value, new CoreActivityOccurrenceSettings());
        case 'CoreActivitySettings':
          return dson.map(value, new CoreActivitySettings());
        case 'CoreChallengeActivitySettings':
          return dson.map(value, new CoreChallengeActivitySettings());
        case 'Country':
          return dson.map(value, new Country());
        case 'CountryResource':
          return dson.map(value, new CountryResource());
        case 'CountryTaxResource':
          return dson.map(value, new CountryTaxResource());
        case 'CouponDefinition':
          return dson.map(value, new CouponDefinition());
        case 'CreateActivityOccurrenceRequest':
          return dson.map(value, new CreateActivityOccurrenceRequest());
        case 'CreateBillingAgreementRequest':
          return dson.map(value, new CreateBillingAgreementRequest());
        case 'CreatePayPalPaymentRequest':
          return dson.map(value, new CreatePayPalPaymentRequest());
        case 'CurrencyResource':
          return dson.map(value, new CurrencyResource());
        case 'CustomerConfig':
          return dson.map(value, new CustomerConfig());
        case 'DatabaseConfig':
          return dson.map(value, new DatabaseConfig());
        case 'DateOperationResource':
          return dson.map(value, new DateOperationResource());
        case 'DefaultOperationResource':
          return dson.map(value, new DefaultOperationResource());
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
        case 'DoubleOperationResource':
          return dson.map(value, new DoubleOperationResource());
        case 'EntitlementGrantRequest':
          return dson.map(value, new EntitlementGrantRequest());
        case 'ErrorResource':
          return dson.map(value, new ErrorResource());
        case 'EventContextResource':
          return dson.map(value, new EventContextResource());
        case 'ExpressionResource':
          return dson.map(value, new ExpressionResource());
        case 'Expression«object»':
          return dson.map(value, new Expression«object»());
        case 'FacebookToken':
          return dson.map(value, new FacebookToken());
        case 'FattMerchantPaymentMethod':
          return dson.map(value, new FattMerchantPaymentMethod());
        case 'FattMerchantPaymentMethodRequest':
          return dson.map(value, new FattMerchantPaymentMethodRequest());
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
        case 'GlobalCheckAndIncrementResource':
          return dson.map(value, new GlobalCheckAndIncrementResource());
        case 'GlobalResource':
          return dson.map(value, new GlobalResource());
        case 'GoogleToken':
          return dson.map(value, new GoogleToken());
        case 'GrantTypeResource':
          return dson.map(value, new GrantTypeResource());
        case 'GroupMemberResource':
          return dson.map(value, new GroupMemberResource());
        case 'GroupMemberStatusWrapper':
          return dson.map(value, new GroupMemberStatusWrapper());
        case 'GroupResource':
          return dson.map(value, new GroupResource());
        case 'IdRef':
          return dson.map(value, new IdRef());
        case 'ImportJobOutputResource':
          return dson.map(value, new ImportJobOutputResource());
        case 'ImportJobResource':
          return dson.map(value, new ImportJobResource());
        case 'IntWrapper':
          return dson.map(value, new IntWrapper());
        case 'IntegerOperationResource':
          return dson.map(value, new IntegerOperationResource());
        case 'InventoryStatusWrapper':
          return dson.map(value, new InventoryStatusWrapper());
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
        case 'Item':
          return dson.map(value, new Item());
        case 'ItemBehaviorDefinitionResource':
          return dson.map(value, new ItemBehaviorDefinitionResource());
        case 'ItemIdRequest':
          return dson.map(value, new ItemIdRequest());
        case 'ItemTemplateResource':
          return dson.map(value, new ItemTemplateResource());
        case 'KeyValuePair«string,string»':
          return dson.map(value, new KeyValuePair«string,string»());
        case 'LeaderboardEntryResource':
          return dson.map(value, new LeaderboardEntryResource());
        case 'LeaderboardResource':
          return dson.map(value, new LeaderboardResource());
        case 'LevelingResource':
          return dson.map(value, new LevelingResource());
        case 'LimitedGettableGroup':
          return dson.map(value, new LimitedGettableGroup());
        case 'LocationLogResource':
          return dson.map(value, new LocationLogResource());
        case 'LookupResource':
          return dson.map(value, new LookupResource());
        case 'Maintenance':
          return dson.map(value, new Maintenance());
        case 'MapResource':
          return dson.map(value, new MapResource());
        case 'MessageContentResource':
          return dson.map(value, new MessageContentResource());
        case 'MessageResource':
          return dson.map(value, new MessageResource());
        case 'MessageTemplateBulkRequest':
          return dson.map(value, new MessageTemplateBulkRequest());
        case 'MessageTemplateResource':
          return dson.map(value, new MessageTemplateResource());
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
        case 'NotificationResource':
          return dson.map(value, new NotificationResource());
        case 'NotificationTypeResource':
          return dson.map(value, new NotificationTypeResource());
        case 'NotificationUserTypeResource':
          return dson.map(value, new NotificationUserTypeResource());
        case 'OAuth2Resource':
          return dson.map(value, new OAuth2Resource());
        case 'OauthAccessTokenResource':
          return dson.map(value, new OauthAccessTokenResource());
        case 'ObjectResource':
          return dson.map(value, new ObjectResource());
        case 'OperationDefinitionResource':
          return dson.map(value, new OperationDefinitionResource());
        case 'OperationResource':
          return dson.map(value, new OperationResource());
        case 'OptimalPaymentRequest':
          return dson.map(value, new OptimalPaymentRequest());
        case 'Order':
          return dson.map(value, new Order());
        case 'PageResource«AchievementDefinitionResource»':
          return dson.map(value, new PageResource«AchievementDefinitionResource»());
        case 'PageResource«ActivityOccurrenceResource»':
          return dson.map(value, new PageResource«ActivityOccurrenceResource»());
        case 'PageResource«AggregateCountResource»':
          return dson.map(value, new PageResource«AggregateCountResource»());
        case 'PageResource«AggregateInvoiceReportResource»':
          return dson.map(value, new PageResource«AggregateInvoiceReportResource»());
        case 'PageResource«ArticleResource»':
          return dson.map(value, new PageResource«ArticleResource»());
        case 'PageResource«ArtistResource»':
          return dson.map(value, new PageResource«ArtistResource»());
        case 'PageResource«BareActivityResource»':
          return dson.map(value, new PageResource«BareActivityResource»());
        case 'PageResource«BareChallengeActivityResource»':
          return dson.map(value, new PageResource«BareChallengeActivityResource»());
        case 'PageResource«BillingReport»':
          return dson.map(value, new PageResource«BillingReport»());
        case 'PageResource«BreEventLog»':
          return dson.map(value, new PageResource«BreEventLog»());
        case 'PageResource«BreGlobalResource»':
          return dson.map(value, new PageResource«BreGlobalResource»());
        case 'PageResource«BreRule»':
          return dson.map(value, new PageResource«BreRule»());
        case 'PageResource«BreTriggerResource»':
          return dson.map(value, new PageResource«BreTriggerResource»());
        case 'PageResource«CampaignResource»':
          return dson.map(value, new PageResource«CampaignResource»());
        case 'PageResource«CartSummary»':
          return dson.map(value, new PageResource«CartSummary»());
        case 'PageResource«CatalogSale»':
          return dson.map(value, new PageResource«CatalogSale»());
        case 'PageResource«CategoryResource»':
          return dson.map(value, new PageResource«CategoryResource»());
        case 'PageResource«ChallengeEventParticipantResource»':
          return dson.map(value, new PageResource«ChallengeEventParticipantResource»());
        case 'PageResource«ChallengeEventResource»':
          return dson.map(value, new PageResource«ChallengeEventResource»());
        case 'PageResource«ChallengeResource»':
          return dson.map(value, new PageResource«ChallengeResource»());
        case 'PageResource«ChatMessageResource»':
          return dson.map(value, new PageResource«ChatMessageResource»());
        case 'PageResource«ChatUserThreadResource»':
          return dson.map(value, new PageResource«ChatUserThreadResource»());
        case 'PageResource«ClientResource»':
          return dson.map(value, new PageResource«ClientResource»());
        case 'PageResource«CommentResource»':
          return dson.map(value, new PageResource«CommentResource»());
        case 'PageResource«Config»':
          return dson.map(value, new PageResource«Config»());
        case 'PageResource«CountryTaxResource»':
          return dson.map(value, new PageResource«CountryTaxResource»());
        case 'PageResource«CurrencyResource»':
          return dson.map(value, new PageResource«CurrencyResource»());
        case 'PageResource«DeviceResource»':
          return dson.map(value, new PageResource«DeviceResource»());
        case 'PageResource«DispositionResource»':
          return dson.map(value, new PageResource«DispositionResource»());
        case 'PageResource«EntitlementItem»':
          return dson.map(value, new PageResource«EntitlementItem»());
        case 'PageResource«FlagReportResource»':
          return dson.map(value, new PageResource«FlagReportResource»());
        case 'PageResource«FlagResource»':
          return dson.map(value, new PageResource«FlagResource»());
        case 'PageResource«ForwardLog»':
          return dson.map(value, new PageResource«ForwardLog»());
        case 'PageResource«FulfillmentType»':
          return dson.map(value, new PageResource«FulfillmentType»());
        case 'PageResource«GroupMemberResource»':
          return dson.map(value, new PageResource«GroupMemberResource»());
        case 'PageResource«GroupResource»':
          return dson.map(value, new PageResource«GroupResource»());
        case 'PageResource«ImportJobResource»':
          return dson.map(value, new PageResource«ImportJobResource»());
        case 'PageResource«InvoiceLogEntry»':
          return dson.map(value, new PageResource«InvoiceLogEntry»());
        case 'PageResource«InvoiceResource»':
          return dson.map(value, new PageResource«InvoiceResource»());
        case 'PageResource«ItemTemplateResource»':
          return dson.map(value, new PageResource«ItemTemplateResource»());
        case 'PageResource«LevelingResource»':
          return dson.map(value, new PageResource«LevelingResource»());
        case 'PageResource«LocationLogResource»':
          return dson.map(value, new PageResource«LocationLogResource»());
        case 'PageResource«MessageTemplateResource»':
          return dson.map(value, new PageResource«MessageTemplateResource»());
        case 'PageResource«NotificationTypeResource»':
          return dson.map(value, new PageResource«NotificationTypeResource»());
        case 'PageResource«NotificationUserTypeResource»':
          return dson.map(value, new PageResource«NotificationUserTypeResource»());
        case 'PageResource«OauthAccessTokenResource»':
          return dson.map(value, new PageResource«OauthAccessTokenResource»());
        case 'PageResource«ObjectResource»':
          return dson.map(value, new PageResource«ObjectResource»());
        case 'PageResource«PaymentMethodTypeResource»':
          return dson.map(value, new PageResource«PaymentMethodTypeResource»());
        case 'PageResource«PermissionResource»':
          return dson.map(value, new PageResource«PermissionResource»());
        case 'PageResource«PollResource»':
          return dson.map(value, new PageResource«PollResource»());
        case 'PageResource«QuestionResource»':
          return dson.map(value, new PageResource«QuestionResource»());
        case 'PageResource«QuestionTemplateResource»':
          return dson.map(value, new PageResource«QuestionTemplateResource»());
        case 'PageResource«RevenueCountryReportResource»':
          return dson.map(value, new PageResource«RevenueCountryReportResource»());
        case 'PageResource«RevenueProductReportResource»':
          return dson.map(value, new PageResource«RevenueProductReportResource»());
        case 'PageResource«RewardSetResource»':
          return dson.map(value, new PageResource«RewardSetResource»());
        case 'PageResource«RoleResource»':
          return dson.map(value, new PageResource«RoleResource»());
        case 'PageResource«SavedAddressResource»':
          return dson.map(value, new PageResource«SavedAddressResource»());
        case 'PageResource«SimpleReferenceResource«object»»':
          return dson.map(value, new PageResource«SimpleReferenceResource«object»»());
        case 'PageResource«SimpleUserResource»':
          return dson.map(value, new PageResource«SimpleUserResource»());
        case 'PageResource«SimpleWallet»':
          return dson.map(value, new PageResource«SimpleWallet»());
        case 'PageResource«StateTaxResource»':
          return dson.map(value, new PageResource«StateTaxResource»());
        case 'PageResource«StoreItemTemplateResource»':
          return dson.map(value, new PageResource«StoreItemTemplateResource»());
        case 'PageResource«StoreItem»':
          return dson.map(value, new PageResource«StoreItem»());
        case 'PageResource«SubscriptionResource»':
          return dson.map(value, new PageResource«SubscriptionResource»());
        case 'PageResource«SubscriptionTemplateResource»':
          return dson.map(value, new PageResource«SubscriptionTemplateResource»());
        case 'PageResource«TemplateResource»':
          return dson.map(value, new PageResource«TemplateResource»());
        case 'PageResource«TopicResource»':
          return dson.map(value, new PageResource«TopicResource»());
        case 'PageResource«TransactionResource»':
          return dson.map(value, new PageResource«TransactionResource»());
        case 'PageResource«UsageInfo»':
          return dson.map(value, new PageResource«UsageInfo»());
        case 'PageResource«UserAchievementGroupResource»':
          return dson.map(value, new PageResource«UserAchievementGroupResource»());
        case 'PageResource«UserActionLog»':
          return dson.map(value, new PageResource«UserActionLog»());
        case 'PageResource«UserBaseResource»':
          return dson.map(value, new PageResource«UserBaseResource»());
        case 'PageResource«UserInventoryResource»':
          return dson.map(value, new PageResource«UserInventoryResource»());
        case 'PageResource«UserItemLogResource»':
          return dson.map(value, new PageResource«UserItemLogResource»());
        case 'PageResource«UserLevelingResource»':
          return dson.map(value, new PageResource«UserLevelingResource»());
        case 'PageResource«UserNotificationResource»':
          return dson.map(value, new PageResource«UserNotificationResource»());
        case 'PageResource«UserRelationshipResource»':
          return dson.map(value, new PageResource«UserRelationshipResource»());
        case 'PageResource«VendorResource»':
          return dson.map(value, new PageResource«VendorResource»());
        case 'PageResource«VideoRelationshipResource»':
          return dson.map(value, new PageResource«VideoRelationshipResource»());
        case 'PageResource«VideoResource»':
          return dson.map(value, new PageResource«VideoResource»());
        case 'PageResource«WalletTotalResponse»':
          return dson.map(value, new PageResource«WalletTotalResponse»());
        case 'PageResource«WalletTransactionResource»':
          return dson.map(value, new PageResource«WalletTransactionResource»());
        case 'PageResource«string»':
          return dson.map(value, new PageResource«string»());
        case 'ParameterResource':
          return dson.map(value, new ParameterResource());
        case 'Participant':
          return dson.map(value, new Participant());
        case 'PasswordResetRequest':
          return dson.map(value, new PasswordResetRequest());
        case 'PayBySavedMethodRequest':
          return dson.map(value, new PayBySavedMethodRequest());
        case 'PaymentAuthorizationResource':
          return dson.map(value, new PaymentAuthorizationResource());
        case 'PaymentMethodDetails':
          return dson.map(value, new PaymentMethodDetails());
        case 'PaymentMethodResource':
          return dson.map(value, new PaymentMethodResource());
        case 'PaymentMethodTypeResource':
          return dson.map(value, new PaymentMethodTypeResource());
        case 'PermissionResource':
          return dson.map(value, new PermissionResource());
        case 'PollAnswerResource':
          return dson.map(value, new PollAnswerResource());
        case 'PollResource':
          return dson.map(value, new PollResource());
        case 'PollResponseResource':
          return dson.map(value, new PollResponseResource());
        case 'PredicateResource':
          return dson.map(value, new PredicateResource());
        case 'Property':
          return dson.map(value, new Property());
        case 'PropertyDefinitionResource':
          return dson.map(value, new PropertyDefinitionResource());
        case 'PropertyFieldListResource':
          return dson.map(value, new PropertyFieldListResource());
        case 'PropertyFieldResource':
          return dson.map(value, new PropertyFieldResource());
        case 'QuestionResource':
          return dson.map(value, new QuestionResource());
        case 'QuestionTemplateResource':
          return dson.map(value, new QuestionTemplateResource());
        case 'QuickBuyRequest':
          return dson.map(value, new QuickBuyRequest());
        case 'RawEmailResource':
          return dson.map(value, new RawEmailResource());
        case 'RawPushResource':
          return dson.map(value, new RawPushResource());
        case 'RawSMSResource':
          return dson.map(value, new RawSMSResource());
        case 'ReactivateSubscriptionRequest':
          return dson.map(value, new ReactivateSubscriptionRequest());
        case 'RefundRequest':
          return dson.map(value, new RefundRequest());
        case 'RefundResource':
          return dson.map(value, new RefundResource());
        case 'ResourceTypeDescription':
          return dson.map(value, new ResourceTypeDescription());
        case 'Result':
          return dson.map(value, new Result());
        case 'RevenueCountryReportResource':
          return dson.map(value, new RevenueCountryReportResource());
        case 'RevenueProductReportResource':
          return dson.map(value, new RevenueProductReportResource());
        case 'RevenueReportResource':
          return dson.map(value, new RevenueReportResource());
        case 'RewardCurrencyResource':
          return dson.map(value, new RewardCurrencyResource());
        case 'RewardItemResource':
          return dson.map(value, new RewardItemResource());
        case 'RewardSetResource':
          return dson.map(value, new RewardSetResource());
        case 'RoleResource':
          return dson.map(value, new RoleResource());
        case 'S3Config':
          return dson.map(value, new S3Config());
        case 'SampleCountriesResponse':
          return dson.map(value, new SampleCountriesResponse());
        case 'SavedAddressResource':
          return dson.map(value, new SavedAddressResource());
        case 'Schedule':
          return dson.map(value, new Schedule());
        case 'SelectedSettingRequest':
          return dson.map(value, new SelectedSettingRequest());
        case 'SelectedSettingResource':
          return dson.map(value, new SelectedSettingResource());
        case 'SettingOption':
          return dson.map(value, new SettingOption());
        case 'SimpleGroupResource':
          return dson.map(value, new SimpleGroupResource());
        case 'SimpleReferenceResource«int»':
          return dson.map(value, new SimpleReferenceResource«int»());
        case 'SimpleReferenceResource«long»':
          return dson.map(value, new SimpleReferenceResource«long»());
        case 'SimpleReferenceResource«object»':
          return dson.map(value, new SimpleReferenceResource«object»());
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
        case 'SqlDatabaseConfig':
          return dson.map(value, new SqlDatabaseConfig());
        case 'StateResource':
          return dson.map(value, new StateResource());
        case 'StateTaxResource':
          return dson.map(value, new StateTaxResource());
        case 'StoreItemTemplateResource':
          return dson.map(value, new StoreItemTemplateResource());
        case 'StringOperationResource':
          return dson.map(value, new StringOperationResource());
        case 'StringWrapper':
          return dson.map(value, new StringWrapper());
        case 'StripeCreatePaymentMethod':
          return dson.map(value, new StripeCreatePaymentMethod());
        case 'StripePaymentRequest':
          return dson.map(value, new StripePaymentRequest());
        case 'SubscriptionCreditResource':
          return dson.map(value, new SubscriptionCreditResource());
        case 'SubscriptionPlan':
          return dson.map(value, new SubscriptionPlan());
        case 'SubscriptionPlanResource':
          return dson.map(value, new SubscriptionPlanResource());
        case 'SubscriptionPriceOverrideRequest':
          return dson.map(value, new SubscriptionPriceOverrideRequest());
        case 'SubscriptionResource':
          return dson.map(value, new SubscriptionResource());
        case 'SubscriptionStatusWrapper':
          return dson.map(value, new SubscriptionStatusWrapper());
        case 'SubscriptionTemplateResource':
          return dson.map(value, new SubscriptionTemplateResource());
        case 'TemplateEmailResource':
          return dson.map(value, new TemplateEmailResource());
        case 'TemplatePushResource':
          return dson.map(value, new TemplatePushResource());
        case 'TemplateResource':
          return dson.map(value, new TemplateResource());
        case 'TemplateSMSResource':
          return dson.map(value, new TemplateSMSResource());
        case 'TemplatedEmail':
          return dson.map(value, new TemplatedEmail());
        case 'TierResource':
          return dson.map(value, new TierResource());
        case 'TokenDetailsResource':
          return dson.map(value, new TokenDetailsResource());
        case 'Topic':
          return dson.map(value, new Topic());
        case 'TopicResource':
          return dson.map(value, new TopicResource());
        case 'TopicSubscriber':
          return dson.map(value, new TopicSubscriber());
        case 'TopicSubscriberResource':
          return dson.map(value, new TopicSubscriberResource());
        case 'TransactionResource':
          return dson.map(value, new TransactionResource());
        case 'TypeHintLookupResource':
          return dson.map(value, new TypeHintLookupResource());
        case 'UsageInfo':
          return dson.map(value, new UsageInfo());
        case 'UserAchievementGroupResource':
          return dson.map(value, new UserAchievementGroupResource());
        case 'UserAchievementResource':
          return dson.map(value, new UserAchievementResource());
        case 'UserActionLog':
          return dson.map(value, new UserActionLog());
        case 'UserActivityResults':
          return dson.map(value, new UserActivityResults());
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
        case 'UserLevelingResource':
          return dson.map(value, new UserLevelingResource());
        case 'UserNotificationResource':
          return dson.map(value, new UserNotificationResource());
        case 'UserNotificationStatusWrapper':
          return dson.map(value, new UserNotificationStatusWrapper());
        case 'UserRelationshipReferenceResource':
          return dson.map(value, new UserRelationshipReferenceResource());
        case 'UserRelationshipResource':
          return dson.map(value, new UserRelationshipResource());
        case 'UserResource':
          return dson.map(value, new UserResource());
        case 'UsernameLookupResource':
          return dson.map(value, new UsernameLookupResource());
        case 'ValueWrapper«boolean»':
          return dson.map(value, new ValueWrapper«boolean»());
        case 'VariableTypeResource':
          return dson.map(value, new VariableTypeResource());
        case 'VendorEmailLookupResource':
          return dson.map(value, new VendorEmailLookupResource());
        case 'VendorResource':
          return dson.map(value, new VendorResource());
        case 'Version':
          return dson.map(value, new Version());
        case 'VideoRelationshipResource':
          return dson.map(value, new VideoRelationshipResource());
        case 'VideoResource':
          return dson.map(value, new VideoResource());
        case 'WalletAlterRequest':
          return dson.map(value, new WalletAlterRequest());
        case 'WalletTotalResponse':
          return dson.map(value, new WalletTotalResponse());
        case 'WalletTransactionResource':
          return dson.map(value, new WalletTransactionResource());
        case 'WebsocketMessageResource':
          return dson.map(value, new WebsocketMessageResource());
        case 'XsollaPaymentRequest':
          return dson.map(value, new XsollaPaymentRequest());
        case 'AudioPropertyDefinitionResource':
          return dson.map(value, new AudioPropertyDefinitionResource());
        case 'BooleanProperty':
          return dson.map(value, new BooleanProperty());
        case 'BooleanPropertyDefinitionResource':
          return dson.map(value, new BooleanPropertyDefinitionResource());
        case 'CacheClearEvent':
          return dson.map(value, new CacheClearEvent());
        case 'Consumable':
          return dson.map(value, new Consumable());
        case 'DateProperty':
          return dson.map(value, new DateProperty());
        case 'DatePropertyDefinitionResource':
          return dson.map(value, new DatePropertyDefinitionResource());
        case 'DoubleProperty':
          return dson.map(value, new DoubleProperty());
        case 'DoublePropertyDefinitionResource':
          return dson.map(value, new DoublePropertyDefinitionResource());
        case 'EntitlementItem':
          return dson.map(value, new EntitlementItem());
        case 'Expirable':
          return dson.map(value, new Expirable());
        case 'FileGroupProperty':
          return dson.map(value, new FileGroupProperty());
        case 'FileGroupPropertyDefinitionResource':
          return dson.map(value, new FileGroupPropertyDefinitionResource());
        case 'FileProperty':
          return dson.map(value, new FileProperty());
        case 'FilePropertyDefinitionResource':
          return dson.map(value, new FilePropertyDefinitionResource());
        case 'FormattedTextProperty':
          return dson.map(value, new FormattedTextProperty());
        case 'FormattedTextPropertyDefinitionResource':
          return dson.map(value, new FormattedTextPropertyDefinitionResource());
        case 'Fulfillable':
          return dson.map(value, new Fulfillable());
        case 'GuestPlayable':
          return dson.map(value, new GuestPlayable());
        case 'ImagePropertyDefinitionResource':
          return dson.map(value, new ImagePropertyDefinitionResource());
        case 'IntegerProperty':
          return dson.map(value, new IntegerProperty());
        case 'IntegerPropertyDefinitionResource':
          return dson.map(value, new IntegerPropertyDefinitionResource());
        case 'LimitedGettable':
          return dson.map(value, new LimitedGettable());
        case 'ListProperty':
          return dson.map(value, new ListProperty());
        case 'ListPropertyDefinitionResource':
          return dson.map(value, new ListPropertyDefinitionResource());
        case 'LogLevelEvent':
          return dson.map(value, new LogLevelEvent());
        case 'LongProperty':
          return dson.map(value, new LongProperty());
        case 'LongPropertyDefinitionResource':
          return dson.map(value, new LongPropertyDefinitionResource());
        case 'MapProperty':
          return dson.map(value, new MapProperty());
        case 'MapPropertyDefinitionResource':
          return dson.map(value, new MapPropertyDefinitionResource());
        case 'MobileDeviceResource':
          return dson.map(value, new MobileDeviceResource());
        case 'NewCustomerEvent':
          return dson.map(value, new NewCustomerEvent());
        case 'PreReqEntitlement':
          return dson.map(value, new PreReqEntitlement());
        case 'PriceOverridable':
          return dson.map(value, new PriceOverridable());
        case 'RemoveCustomerEvent':
          return dson.map(value, new RemoveCustomerEvent());
        case 'ServiceDeployedEvent':
          return dson.map(value, new ServiceDeployedEvent());
        case 'Spendable':
          return dson.map(value, new Spendable());
        case 'StoreItem':
          return dson.map(value, new StoreItem());
        case 'TextProperty':
          return dson.map(value, new TextProperty());
        case 'TextPropertyDefinitionResource':
          return dson.map(value, new TextPropertyDefinitionResource());
        case 'TimePeriodGettable':
          return dson.map(value, new TimePeriodGettable());
        case 'TimePeriodUsable':
          return dson.map(value, new TimePeriodUsable());
        case 'VideoPropertyDefinitionResource':
          return dson.map(value, new VideoPropertyDefinitionResource());
        case 'WebsocketRemoveTopicEvent':
          return dson.map(value, new WebsocketRemoveTopicEvent());
        case 'WebsocketSendMessageEvent':
          return dson.map(value, new WebsocketSendMessageEvent());
        case 'WebsocketSendTopicMessageEvent':
          return dson.map(value, new WebsocketSendTopicMessageEvent());
        case 'WebsocketSubscribeEvent':
          return dson.map(value, new WebsocketSubscribeEvent());
        case 'WebsocketUnsubscribeEvent':
          return dson.map(value, new WebsocketUnsubscribeEvent());
        case 'AudioGroupProperty':
          return dson.map(value, new AudioGroupProperty());
        case 'AudioGroupPropertyDefinitionResource':
          return dson.map(value, new AudioGroupPropertyDefinitionResource());
        case 'AudioProperty':
          return dson.map(value, new AudioProperty());
        case 'BundleItem':
          return dson.map(value, new BundleItem());
        case 'CouponItem':
          return dson.map(value, new CouponItem());
        case 'ImageGroupProperty':
          return dson.map(value, new ImageGroupProperty());
        case 'ImageGroupPropertyDefinitionResource':
          return dson.map(value, new ImageGroupPropertyDefinitionResource());
        case 'ImageProperty':
          return dson.map(value, new ImageProperty());
        case 'ShippingItem':
          return dson.map(value, new ShippingItem());
        case 'Subscription':
          return dson.map(value, new Subscription());
        case 'VideoGroupProperty':
          return dson.map(value, new VideoGroupProperty());
        case 'VideoGroupPropertyDefinitionResource':
          return dson.map(value, new VideoGroupPropertyDefinitionResource());
        case 'VideoProperty':
          return dson.map(value, new VideoProperty());
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
