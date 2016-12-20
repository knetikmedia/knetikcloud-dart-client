part of swagger.api;


@Entity()
class SkuRequest {
  /* SKU code of the item */
  @Property(name: 'sku')
  String sku = null;
  
  SkuRequest();

  @override
  String toString()  {
    return 'SkuRequest[sku=$sku, ]';
  }

}

