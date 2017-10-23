part of swagger.api;


@Entity()
class Cart {
  
  @Property(name: 'available_shipping_options')
  List<CartShippingOption> availableShippingOptions = [];
  

  @Property(name: 'country_tax')
  num countryTax = null;
  

  @Property(name: 'coupons')
  List<CouponDefinition> coupons = [];
  

  @Property(name: 'created')
  int created = null;
  

  @Property(name: 'currency_code')
  String currencyCode = null;
  

  @Property(name: 'discount_total')
  num discountTotal = null;
  

  @Property(name: 'error_code')
  int errorCode = null;
  

  @Property(name: 'error_message')
  String errorMessage = null;
  

  @Property(name: 'grand_total')
  num grandTotal = null;
  

  @Property(name: 'id')
  String id = null;
  

  @Property(name: 'invoice_id')
  num invoiceId = null;
  

  @Property(name: 'items')
  List<CartLineItem> items = [];
  

  @Property(name: 'owner')
  int owner = null;
  

  @Property(name: 'selected_shipping_options')
  List<CartShippingOption> selectedShippingOptions = [];
  

  @Property(name: 'shippable')
  bool shippable = null;
  

  @Property(name: 'shipping_address')
  CartShippingAddressRequest shippingAddress = null;
  

  @Property(name: 'shipping_cost')
  num shippingCost = null;
  

  @Property(name: 'state_tax')
  num stateTax = null;
  

  @Property(name: 'status')
  String status = null;
  //enum statusEnum {  active,  processing,  closed,  onhold,  };

  @Property(name: 'subtotal')
  num subtotal = null;
  

  @Property(name: 'updated')
  int updated = null;
  
  Cart();

  @override
  String toString()  {
    return 'Cart[availableShippingOptions=$availableShippingOptions, countryTax=$countryTax, coupons=$coupons, created=$created, currencyCode=$currencyCode, discountTotal=$discountTotal, errorCode=$errorCode, errorMessage=$errorMessage, grandTotal=$grandTotal, id=$id, invoiceId=$invoiceId, items=$items, owner=$owner, selectedShippingOptions=$selectedShippingOptions, shippable=$shippable, shippingAddress=$shippingAddress, shippingCost=$shippingCost, stateTax=$stateTax, status=$status, subtotal=$subtotal, updated=$updated, ]';
  }

}

