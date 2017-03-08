part of swagger.api;


@Entity()
class Cart {
  
  @Property(name: 'country_tax')
  double countryTax = null;
  

  @Property(name: 'coupons')
  List<CouponDefinition> coupons = [];
  

  @Property(name: 'created')
  int created = null;
  

  @Property(name: 'currency_code')
  String currencyCode = null;
  

  @Property(name: 'discount_total')
  double discountTotal = null;
  

  @Property(name: 'error_code')
  int errorCode = null;
  

  @Property(name: 'error_message')
  String errorMessage = null;
  

  @Property(name: 'grand_total')
  double grandTotal = null;
  

  @Property(name: 'id')
  String id = null;
  

  @Property(name: 'invoice_id')
  double invoiceId = null;
  

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
  double shippingCost = null;
  

  @Property(name: 'shipping_options')
  Map<String, ModelSet> shippingOptions = {};
  

  @Property(name: 'state_tax')
  double stateTax = null;
  

  @Property(name: 'status')
  String status = null;
  //enum statusEnum {  active,  processing,  closed,  onhold,  };

  @Property(name: 'subtotal')
  double subtotal = null;
  

  @Property(name: 'updated')
  int updated = null;
  
  Cart();

  @override
  String toString()  {
    return 'Cart[countryTax=$countryTax, coupons=$coupons, created=$created, currencyCode=$currencyCode, discountTotal=$discountTotal, errorCode=$errorCode, errorMessage=$errorMessage, grandTotal=$grandTotal, id=$id, invoiceId=$invoiceId, items=$items, owner=$owner, selectedShippingOptions=$selectedShippingOptions, shippable=$shippable, shippingAddress=$shippingAddress, shippingCost=$shippingCost, shippingOptions=$shippingOptions, stateTax=$stateTax, status=$status, subtotal=$subtotal, updated=$updated, ]';
  }

}
