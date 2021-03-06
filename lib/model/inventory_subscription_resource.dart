part of swagger.api;


@Entity()
class InventorySubscriptionResource {
  /* The date the subscription will be billed */
  @Property(name: 'bill_date')
  int billDate = null;
  
/* A credit of money already applied to a subscription for the next bill, or a debt if negative */
  @Property(name: 'credit')
  num credit = null;
  
/* A record of past and present credit/debt changes */
  @Property(name: 'credit_log')
  List<SubscriptionCreditResource> creditLog = [];
  
/* The date the grace period ends */
  @Property(name: 'grace_end')
  int graceEnd = null;
  
/* The id of the inventory */
  @Property(name: 'inventory_id')
  int inventoryId = null;
  
/* The inventory status object */
  @Property(name: 'inventory_status')
  String inventoryStatus = null;
  //enum inventoryStatusEnum {  pending,  active,  inactive,  };
/* The id of the item */
  @Property(name: 'item_id')
  int itemId = null;
  
/* The payment method object */
  @Property(name: 'payment_method')
  PaymentMethodResource paymentMethod = null;
  
/* The recurring price that has been set to override the base price. Null if not overriding */
  @Property(name: 'price_override')
  num priceOverride = null;
  
/* An explanation for the reason the price is being overridden */
  @Property(name: 'price_override_reason')
  String priceOverrideReason = null;
  
/* The default recurring price */
  @Property(name: 'recurring_price')
  num recurringPrice = null;
  
/* The recurring sku of the subscription */
  @Property(name: 'sku')
  String sku = null;
  
/* The date the subscription will start */
  @Property(name: 'start_date')
  int startDate = null;
  
/* The status of the subscription */
  @Property(name: 'subscription_status')
  int subscriptionStatus = null;
  
/* The user */
  @Property(name: 'user')
  SimpleUserResource user = null;
  
  InventorySubscriptionResource();

  @override
  String toString()  {
    return 'InventorySubscriptionResource[billDate=$billDate, credit=$credit, creditLog=$creditLog, graceEnd=$graceEnd, inventoryId=$inventoryId, inventoryStatus=$inventoryStatus, itemId=$itemId, paymentMethod=$paymentMethod, priceOverride=$priceOverride, priceOverrideReason=$priceOverrideReason, recurringPrice=$recurringPrice, sku=$sku, startDate=$startDate, subscriptionStatus=$subscriptionStatus, user=$user, ]';
  }

}

