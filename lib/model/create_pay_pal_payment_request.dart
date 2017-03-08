part of swagger.api;


@Entity()
class CreatePayPalPaymentRequest {
  /* The endpoint URL to which PayPal should forward the user to if they cancel the checkout process */
  @Property(name: 'cancel_url')
  String cancelUrl = null;
  
/* The ID of an invoice to pay */
  @Property(name: 'invoice_id')
  int invoiceId = null;
  
/* The endpoint URL to which PayPal should forward the user after they accept. This endpoint will receive information needed for the next step */
  @Property(name: 'return_url')
  String returnUrl = null;
  
  CreatePayPalPaymentRequest();

  @override
  String toString()  {
    return 'CreatePayPalPaymentRequest[cancelUrl=$cancelUrl, invoiceId=$invoiceId, returnUrl=$returnUrl, ]';
  }

}

