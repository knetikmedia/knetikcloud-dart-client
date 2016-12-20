part of swagger.api;


@Entity()
class CartItemRequest {
  /* The affiliate key of the item */
  @Property(name: 'affiliate_key')
  String affiliateKey = null;
  
/* The catalog SKU of the item */
  @Property(name: 'catalog_sku')
  String catalogSku = null;
  
/* The quantity of the item */
  @Property(name: 'quantity')
  int quantity = null;
  
  CartItemRequest();

  @override
  String toString()  {
    return 'CartItemRequest[affiliateKey=$affiliateKey, catalogSku=$catalogSku, quantity=$quantity, ]';
  }

}

