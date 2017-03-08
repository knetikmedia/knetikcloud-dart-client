part of swagger.api;


@Entity()
class UserInventoryAddRequest {
  /* A note to be passed to the invoice or transaction */
  @Property(name: 'note')
  String note = null;
  
/* A list of behaviors to ignore explicitely.  Ex: 'limited_gettable' */
  @Property(name: 'overrides')
  List<String> overrides = [];
  
/* If set to true will cause the endpoint to skip creation of cart and invoice to track the inventory change */
  @Property(name: 'skip_invoice')
  bool skipInvoice = null;
  
/* The specific SKU of the item to be added to the inventory */
  @Property(name: 'sku')
  String sku = null;
  
  UserInventoryAddRequest();

  @override
  String toString()  {
    return 'UserInventoryAddRequest[note=$note, overrides=$overrides, skipInvoice=$skipInvoice, sku=$sku, ]';
  }

}

