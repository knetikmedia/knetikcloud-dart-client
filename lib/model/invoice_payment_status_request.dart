part of swagger.api;


@Entity()
class InvoicePaymentStatusRequest {
  /* If included, will set the payment method used on the invoice */
  @Property(name: 'payment_method_id')
  int paymentMethodId = null;
  
/* The new status for the invoice. Additional options may be available based on configuration.  Allowable values: 'new', 'paid', 'hold', 'canceled', 'payment failed', 'partial refund', 'refund' */
  @Property(name: 'status')
  String status = null;
  
  InvoicePaymentStatusRequest();

  @override
  String toString()  {
    return 'InvoicePaymentStatusRequest[paymentMethodId=$paymentMethodId, status=$status, ]';
  }

}

