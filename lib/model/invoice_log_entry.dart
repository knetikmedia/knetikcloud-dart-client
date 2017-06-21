part of swagger.api;


@Entity()
class InvoiceLogEntry {
  /* The date this event occurred as a unix timestamp in seconds */
  @Property(name: 'date')
  int date = null;
  
/* The ID of the invoice */
  @Property(name: 'invoice_id')
  int invoiceId = null;
  
/* A message describing the event */
  @Property(name: 'message')
  String message = null;
  
/* The type of event */
  @Property(name: 'type')
  String type = null;
  
  InvoiceLogEntry();

  @override
  String toString()  {
    return 'InvoiceLogEntry[date=$date, invoiceId=$invoiceId, message=$message, type=$type, ]';
  }

}

