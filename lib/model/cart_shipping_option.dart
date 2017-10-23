part of swagger.api;


@Entity()
class CartShippingOption {
  
  @Property(name: 'currency_code')
  String currencyCode = null;
  

  @Property(name: 'description')
  String description = null;
  

  @Property(name: 'name')
  String name = null;
  

  @Property(name: 'original_price')
  num originalPrice = null;
  

  @Property(name: 'price')
  num price = null;
  

  @Property(name: 'shipping_item_id')
  int shippingItemId = null;
  

  @Property(name: 'sku')
  String sku = null;
  

  @Property(name: 'taxable')
  bool taxable = null;
  

  @Property(name: 'vendor_id')
  int vendorId = null;
  

  @Property(name: 'vendor_name')
  String vendorName = null;
  
  CartShippingOption();

  @override
  String toString()  {
    return 'CartShippingOption[currencyCode=$currencyCode, description=$description, name=$name, originalPrice=$originalPrice, price=$price, shippingItemId=$shippingItemId, sku=$sku, taxable=$taxable, vendorId=$vendorId, vendorName=$vendorName, ]';
  }

}

