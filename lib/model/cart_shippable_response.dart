part of swagger.api;


@Entity()
class CartShippableResponse {
  /* The id of the cart */
  @Property(name: 'cart_id')
  int cartId = null;
  
/* Whether the item is shippable */
  @Property(name: 'shippable')
  bool shippable = null;
  
  CartShippableResponse();

  @override
  String toString()  {
    return 'CartShippableResponse[cartId=$cartId, shippable=$shippable, ]';
  }

}

