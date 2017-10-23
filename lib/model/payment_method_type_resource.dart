part of swagger.api;


@Entity()
class PaymentMethodTypeResource {
  /* The id of the payment method type */
  @Property(name: 'id')
  int id = null;
  
/* The maximum timelimit in hours for an invoice in the processing status while waiting on this payment method type. Defaults to the global config invoice.processing_expiration_hours if null */
  @Property(name: 'invoice_processing_hours')
  int invoiceProcessingHours = null;
  
/* The name of the payment method type */
  @Property(name: 'name')
  String name = null;
  
/* Whether the payment handler supports the authorize and capture flow */
  @Property(name: 'supports_capture')
  bool supportsCapture = null;
  
/* Whether the payment handler supports paying for part of an invoice, rather than the full grand_total */
  @Property(name: 'supports_partial')
  bool supportsPartial = null;
  
/* Whether the payment handler supports rebilling the method later (for saved payments or subscriptions) */
  @Property(name: 'supports_rebill')
  bool supportsRebill = null;
  
/* Whether the payment handler supports refunding */
  @Property(name: 'supports_refunds')
  bool supportsRefunds = null;
  
  PaymentMethodTypeResource();

  @override
  String toString()  {
    return 'PaymentMethodTypeResource[id=$id, invoiceProcessingHours=$invoiceProcessingHours, name=$name, supportsCapture=$supportsCapture, supportsPartial=$supportsPartial, supportsRebill=$supportsRebill, supportsRefunds=$supportsRefunds, ]';
  }

}

