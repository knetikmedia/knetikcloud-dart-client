part of swagger.api;


@Entity()
class InvoiceItemResource {
  
  @Property(name: 'affiliate_id')
  int affiliateId = null;
  

  @Property(name: 'bundle_sku')
  String bundleSku = null;
  

  @Property(name: 'current_fulfillment_status')
  String currentFulfillmentStatus = null;
  

  @Property(name: 'id')
  int id = null;
  

  @Property(name: 'invoice_id')
  int invoiceId = null;
  

  @Property(name: 'item_id')
  int itemId = null;
  

  @Property(name: 'item_name')
  String itemName = null;
  

  @Property(name: 'original_total_price')
  double originalTotalPrice = null;
  

  @Property(name: 'original_unit_price')
  double originalUnitPrice = null;
  

  @Property(name: 'qty')
  int qty = null;
  

  @Property(name: 'sale_name')
  String saleName = null;
  

  @Property(name: 'sku')
  String sku = null;
  

  @Property(name: 'sku_description')
  String skuDescription = null;
  

  @Property(name: 'system_price')
  double systemPrice = null;
  

  @Property(name: 'total_price')
  double totalPrice = null;
  

  @Property(name: 'type_hint')
  String typeHint = null;
  

  @Property(name: 'unit_price')
  double unitPrice = null;
  
  InvoiceItemResource();

  @override
  String toString()  {
    return 'InvoiceItemResource[affiliateId=$affiliateId, bundleSku=$bundleSku, currentFulfillmentStatus=$currentFulfillmentStatus, id=$id, invoiceId=$invoiceId, itemId=$itemId, itemName=$itemName, originalTotalPrice=$originalTotalPrice, originalUnitPrice=$originalUnitPrice, qty=$qty, saleName=$saleName, sku=$sku, skuDescription=$skuDescription, systemPrice=$systemPrice, totalPrice=$totalPrice, typeHint=$typeHint, unitPrice=$unitPrice, ]';
  }

}

