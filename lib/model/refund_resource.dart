part of swagger.api;


@Entity()
class RefundResource {
  /* The amount refunded */
  @Property(name: 'amount')
  double amount = null;
  
/* The id of the refund transaction */
  @Property(name: 'refund_transaction_id')
  int refundTransactionId = null;
  
/* The id of the original transaction */
  @Property(name: 'transaction_id')
  int transactionId = null;
  
  RefundResource();

  @override
  String toString()  {
    return 'RefundResource[amount=$amount, refundTransactionId=$refundTransactionId, transactionId=$transactionId, ]';
  }

}

