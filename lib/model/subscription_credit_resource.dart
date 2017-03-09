part of swagger.api;


@Entity()
class SubscriptionCreditResource {
  /* The amount of the credit, negative for debt */
  @Property(name: 'amount')
  double amount = null;
  
/* The date this credit was added, unix timestamp in seconds */
  @Property(name: 'created_date')
  int createdDate = null;
  
/* The id of the credit record */
  @Property(name: 'id')
  int id = null;
  
/* The id of the subscription inventory entry */
  @Property(name: 'inventory_id')
  int inventoryId = null;
  
/* The reason for the subscription credit */
  @Property(name: 'reason')
  String reason = null;
  
  SubscriptionCreditResource();

  @override
  String toString()  {
    return 'SubscriptionCreditResource[amount=$amount, createdDate=$createdDate, id=$id, inventoryId=$inventoryId, reason=$reason, ]';
  }

}

