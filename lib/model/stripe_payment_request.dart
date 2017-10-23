part of swagger.api;


@Entity()
class StripePaymentRequest {
  /* The amount to pay, if not the full remaining balance (leave out to pay in full, but be careful no other partial payment has been started) */
  @Property(name: 'amount')
  num amount = null;
  
/* The id of the invoice to pay */
  @Property(name: 'invoice_id')
  int invoiceId = null;
  
/* A token from Stripe to identify payment info to be tied to the customer */
  @Property(name: 'token')
  String token = null;
  
  StripePaymentRequest();

  @override
  String toString()  {
    return 'StripePaymentRequest[amount=$amount, invoiceId=$invoiceId, token=$token, ]';
  }

}

