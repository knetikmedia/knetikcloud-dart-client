part of swagger.api;


@Entity()
class FinalizeBillingAgreementRequest {
  /* The ID of the invoice being paid along with the creation of this agreement */
  @Property(name: 'invoice_id')
  int invoiceId = null;
  
/* Whether the new payment method created should be the user's default */
  @Property(name: 'new_default')
  bool newDefault = null;
  
/* The payer ID from PayPal (passed as a parameter in the return URL). Only required if an invoice ID was included */
  @Property(name: 'payer_id')
  String payerId = null;
  
/* The token from PayPal (passed as a parameter in the return URL) */
  @Property(name: 'token')
  String token = null;
  
/* The ID of the user. Defaults to the logged in user */
  @Property(name: 'user_id')
  int userId = null;
  
  FinalizeBillingAgreementRequest();

  @override
  String toString()  {
    return 'FinalizeBillingAgreementRequest[invoiceId=$invoiceId, newDefault=$newDefault, payerId=$payerId, token=$token, userId=$userId, ]';
  }

}

