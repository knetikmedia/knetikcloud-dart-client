part of swagger.api;


@Entity()
class ApplyPaymentRequest {
  /* The id of the local invoice being paid. */
  @Property(name: 'invoice_id')
  int invoiceId = null;
  
/* The encoded receipt string from Apple's services. */
  @Property(name: 'receipt')
  String receipt = null;
  
/* The id of the specific transaction from Apple's services. */
  @Property(name: 'transaction_id')
  String transactionId = null;
  
  ApplyPaymentRequest();

  @override
  String toString()  {
    return 'ApplyPaymentRequest[invoiceId=$invoiceId, receipt=$receipt, transactionId=$transactionId, ]';
  }

}

