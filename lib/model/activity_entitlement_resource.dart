part of swagger.api;


@Entity()
class ActivityEntitlementResource {
  /* The ISO3 currency code the price is in, if available */
  @Property(name: 'currency_code')
  String currencyCode = null;
  
/* The id of the entitlement item */
  @Property(name: 'item_id')
  int itemId = null;
  
/* The name of the entitlement item */
  @Property(name: 'name')
  String name = null;
  
/* The price of the sku, if available */
  @Property(name: 'price')
  num price = null;
  
/* The sku id, if available. If multiple are available, then first one is returned */
  @Property(name: 'sku')
  String sku = null;
  
  ActivityEntitlementResource();

  @override
  String toString()  {
    return 'ActivityEntitlementResource[currencyCode=$currencyCode, itemId=$itemId, name=$name, price=$price, sku=$sku, ]';
  }

}

