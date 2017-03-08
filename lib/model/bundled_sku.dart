part of swagger.api;


@Entity()
class BundledSku {
  /* The amount this item will cost inside the bundle instead of its regular price */
  @Property(name: 'price_override')
  double priceOverride = null;
  
/* The quantity of this item within the bundle */
  @Property(name: 'quantity')
  int quantity = null;
  
/* The stock keeping unit (SKU) for an item included in the bundle */
  @Property(name: 'sku')
  String sku = null;
  
  BundledSku();

  @override
  String toString()  {
    return 'BundledSku[priceOverride=$priceOverride, quantity=$quantity, sku=$sku, ]';
  }

}

