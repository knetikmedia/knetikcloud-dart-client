part of swagger.api;


@Entity()
class PaymentAuthorizationResource {
  /* Whether this authorization has been captured */
  @Property(name: 'captured')
  bool captured = null;
  
/* The date this authorization was received, unix timestamp in seconds */
  @Property(name: 'created')
  int created = null;
  
/* The details for this authorization. Format dependent on payment provider */
  @Property(name: 'details')
  Object details = null;
  
/* The id of the authorization */
  @Property(name: 'id')
  int id = null;
  
/* The invoice this authorization is intended to pay */
  @Property(name: 'invoice')
  int invoice = null;
  
/* The payment type (which provider) this payment is through */
  @Property(name: 'payment_type')
  SimpleReferenceResource«int» paymentType = null;
  
  PaymentAuthorizationResource();

  @override
  String toString()  {
    return 'PaymentAuthorizationResource[captured=$captured, created=$created, details=$details, id=$id, invoice=$invoice, paymentType=$paymentType, ]';
  }

}

