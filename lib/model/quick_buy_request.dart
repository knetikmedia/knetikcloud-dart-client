part of swagger.api;


@Entity()
class QuickBuyRequest {
  /* SKU of item being purchased */
  @Property(name: 'sku')
  String sku = null;
  
/* ID of the user making the purchase. If null, currently logged in user will be used. */
  @Property(name: 'user_id')
  int userId = null;
  
  QuickBuyRequest();

  @override
  String toString()  {
    return 'QuickBuyRequest[sku=$sku, userId=$userId, ]';
  }

}

