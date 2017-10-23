part of swagger.api;


@Entity()
class CartLineItem {
  
  @Property(name: 'currency_code')
  String currencyCode = null;
  

  @Property(name: 'description')
  String description = null;
  

  @Property(name: 'discount')
  Discount discount = null;
  

  @Property(name: 'line_total')
  num lineTotal = null;
  

  @Property(name: 'name')
  String name = null;
  

  @Property(name: 'original_line_total')
  num originalLineTotal = null;
  

  @Property(name: 'original_unit_price')
  num originalUnitPrice = null;
  

  @Property(name: 'qty')
  int qty = null;
  

  @Property(name: 'sale_name')
  String saleName = null;
  

  @Property(name: 'sku')
  String sku = null;
  

  @Property(name: 'sku_description')
  String skuDescription = null;
  

  @Property(name: 'store_item_id')
  int storeItemId = null;
  

  @Property(name: 'tags')
  List<String> tags = [];
  

  @Property(name: 'thumb_url')
  String thumbUrl = null;
  

  @Property(name: 'unique_key')
  String uniqueKey = null;
  

  @Property(name: 'unit_price')
  num unitPrice = null;
  

  @Property(name: 'vendor_id')
  int vendorId = null;
  

  @Property(name: 'vendor_name')
  String vendorName = null;
  
  CartLineItem();

  @override
  String toString()  {
    return 'CartLineItem[currencyCode=$currencyCode, description=$description, discount=$discount, lineTotal=$lineTotal, name=$name, originalLineTotal=$originalLineTotal, originalUnitPrice=$originalUnitPrice, qty=$qty, saleName=$saleName, sku=$sku, skuDescription=$skuDescription, storeItemId=$storeItemId, tags=$tags, thumbUrl=$thumbUrl, uniqueKey=$uniqueKey, unitPrice=$unitPrice, vendorId=$vendorId, vendorName=$vendorName, ]';
  }

}

