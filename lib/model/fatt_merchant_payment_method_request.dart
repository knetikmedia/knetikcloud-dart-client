part of swagger.api;


@Entity()
class FattMerchantPaymentMethodRequest {
  /* The FattMerchant payment method being created/updated */
  @Property(name: 'method')
  FattMerchantPaymentMethod method = null;
  
/* ID of the JSAPI user for whom the payment method is being created/updated. If ID is not that of the currently logged in user, FATMMERCHANT_ADMIN privilege is required. If ID is null, will use the currently logged in user's ID. */
  @Property(name: 'user_id')
  int userId = null;
  
  FattMerchantPaymentMethodRequest();

  @override
  String toString()  {
    return 'FattMerchantPaymentMethodRequest[method=$method, userId=$userId, ]';
  }

}

