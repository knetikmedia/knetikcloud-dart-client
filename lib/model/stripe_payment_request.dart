part of swagger.api;


@Entity()
class StripePaymentRequest {
  /* The id of the invoice to pay */
  @Property(name: 'invoice_id')
  int invoiceId = null;
  
/* A token from Stripe to identify payment info to be tied to the customer */
  @Property(name: 'token')
  String token = null;
  
  StripePaymentRequest();

  @override
  String toString()  {
    return 'StripePaymentRequest[invoiceId=$invoiceId, token=$token, ]';
  }

}

