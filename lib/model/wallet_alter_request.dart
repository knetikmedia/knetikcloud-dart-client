part of swagger.api;


@Entity()
class WalletAlterRequest {
  /* The amount of currency to add/remove. positive to add, negative to remove */
  @Property(name: 'delta')
  double delta = null;
  
/* The id of an invoice to attribute the transaction to */
  @Property(name: 'invoice_id')
  int invoiceId = null;
  
/* The admin entered or system generated reason */
  @Property(name: 'reason')
  String reason = null;
  
/* The transaction type to allow for search/etc */
  @Property(name: 'type')
  String type = null;
  
  WalletAlterRequest();

  @override
  String toString()  {
    return 'WalletAlterRequest[delta=$delta, invoiceId=$invoiceId, reason=$reason, type=$type, ]';
  }

}

