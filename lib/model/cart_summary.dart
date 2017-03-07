part of swagger.api;


@Entity()
class CartSummary {
  /* The date/time this resource was created in seconds since unix epoch */
  @Property(name: 'created_date')
  int createdDate = null;
  
/* The unique id code for the currency used in the cart */
  @Property(name: 'currency_code')
  String currencyCode = null;
  
/* The grand total for the cart */
  @Property(name: 'grand_total')
  double grandTotal = null;
  
/* The unique ID for the cart */
  @Property(name: 'id')
  String id = null;
  
/* The ID of the invoice associated with this cart */
  @Property(name: 'invoice_id')
  double invoiceId = null;
  
/* The number of items in the cart */
  @Property(name: 'items_in_cart')
  int itemsInCart = null;
  
/* The status of the cart */
  @Property(name: 'status')
  String status = null;
  //enum statusEnum {  active,  processing,  closed,  onhold,  };
/* The subtotal of all items in the cart */
  @Property(name: 'subtotal')
  double subtotal = null;
  
  CartSummary();

  @override
  String toString()  {
    return 'CartSummary[createdDate=$createdDate, currencyCode=$currencyCode, grandTotal=$grandTotal, id=$id, invoiceId=$invoiceId, itemsInCart=$itemsInCart, status=$status, subtotal=$subtotal, ]';
  }

}

