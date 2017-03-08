part of swagger.api;


@Entity()
class FinalizePayPalPaymentRequest {
  /* The ID of the invoice that is being paid. Must match the invoice sent in originally */
  @Property(name: 'invoice_id')
  int invoiceId = null;
  
/* The ID of the payer that PayPal returned with the user at the return URL */
  @Property(name: 'payer_id')
  String payerId = null;
  
/* The token that PayPal returned with the user in the return URL */
  @Property(name: 'token')
  String token = null;
  
  FinalizePayPalPaymentRequest();

  @override
  String toString()  {
    return 'FinalizePayPalPaymentRequest[invoiceId=$invoiceId, payerId=$payerId, token=$token, ]';
  }

}

