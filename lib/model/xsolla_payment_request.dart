part of swagger.api;


@Entity()
class XsollaPaymentRequest {
  /* The id of an invoice to pay */
  @Property(name: 'invoice_id')
  int invoiceId = null;
  
/* The endpoint URL xsolla should forward the user to after they pay */
  @Property(name: 'return_url')
  String returnUrl = null;
  
  XsollaPaymentRequest();

  @override
  String toString()  {
    return 'XsollaPaymentRequest[invoiceId=$invoiceId, returnUrl=$returnUrl, ]';
  }

}

