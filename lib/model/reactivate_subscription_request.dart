part of swagger.api;


@Entity()
class ReactivateSubscriptionRequest {
  /* The inventory to reactivate. Only required if using the deprecated subscriptions service */
  @Property(name: 'inventory_id')
  int inventoryId = null;
  
/* Whether to add the additional reactivation fee in addition to the recurring fee */
  @Property(name: 'reactivation_fee')
  bool reactivationFee = null;
  
  ReactivateSubscriptionRequest();

  @override
  String toString()  {
    return 'ReactivateSubscriptionRequest[inventoryId=$inventoryId, reactivationFee=$reactivationFee, ]';
  }

}

