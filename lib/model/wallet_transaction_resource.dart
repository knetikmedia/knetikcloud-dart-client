part of swagger.api;


@Entity()
class WalletTransactionResource {
  /* The new balance of the wallet after the transaction */
  @Property(name: 'balance')
  num balance = null;
  
/* The unix timestamp in seconds of the transaction */
  @Property(name: 'create_date')
  int createDate = null;
  
/* The code of the currency for the transaction */
  @Property(name: 'currency_code')
  String currencyCode = null;
  
/* The specific details of the transaction, such as a message from the admin that created it */
  @Property(name: 'details')
  String details = null;
  
/* The id of the transaction */
  @Property(name: 'id')
  int id = null;
  
/* The id of the invoice that spawned the transaction, if any */
  @Property(name: 'invoice_id')
  int invoiceId = null;
  
/* Whether the transaction has been refunded */
  @Property(name: 'is_refunded')
  bool isRefunded = null;
  
/* The response */
  @Property(name: 'response')
  String response = null;
  
/* The root source of the transaction */
  @Property(name: 'source')
  String source = null;
  //enum sourceEnum {  digital,  physical,  };
/* If the transaction was successful */
  @Property(name: 'successful')
  bool successful = null;
  
/* The payment gateway (external) transaction ID */
  @Property(name: 'transaction_id')
  String transactionId = null;
  
/* The general type of the transaction */
  @Property(name: 'type')
  String type = null;
  
/* The table name of the subclass */
  @Property(name: 'type_hint')
  String typeHint = null;
  
/* The owner of the wallet */
  @Property(name: 'user')
  SimpleUserResource user = null;
  
/* The amount of the transaction, positive if a gain, negative if an expenditure */
  @Property(name: 'value')
  num value = null;
  
/* The id of the wallet this transaction affected */
  @Property(name: 'wallet_id')
  int walletId = null;
  
  WalletTransactionResource();

  @override
  String toString()  {
    return 'WalletTransactionResource[balance=$balance, createDate=$createDate, currencyCode=$currencyCode, details=$details, id=$id, invoiceId=$invoiceId, isRefunded=$isRefunded, response=$response, source=$source, successful=$successful, transactionId=$transactionId, type=$type, typeHint=$typeHint, user=$user, value=$value, walletId=$walletId, ]';
  }

}

