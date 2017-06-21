part of swagger.api;


@Entity()
class CartItemRequest {
  /* The affiliate key of the item */
  @Property(name: 'affiliate_key')
  String affiliateKey = null;
  
/* The catalog SKU of the item */
  @Property(name: 'catalog_sku')
  String catalogSku = null;
  
/* Allows to override the price of an item, if the behavior configuration permits it */
  @Property(name: 'price_override')
  double priceOverride = null;
  
/* The quantity of the item */
  @Property(name: 'quantity')
  int quantity = null;
  
  CartItemRequest();

  @override
  String toString()  {
    return 'CartItemRequest[affiliateKey=$affiliateKey, catalogSku=$catalogSku, priceOverride=$priceOverride, quantity=$quantity, ]';
  }

}

