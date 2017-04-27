part of swagger.api;


@Entity()
class Sku {
  /* A map of additional properties, keyed on the property name.  Must match the names and types defined in the template for this item type, or be an extra not from the template */
  @Property(name: 'additional_properties')
  Map<String, Property> additionalProperties = {};
  
/* The currency code for the SKU, a three letter string (ISO3) */
  @Property(name: 'currency_code')
  String currencyCode = null;
  
/* The friendly name of the SKU as it will appear on invoices and reports. Typically represents the option name like red, large, etc */
  @Property(name: 'description')
  String description = null;
  
/* The number of SKUs currently in stock */
  @Property(name: 'inventory')
  int inventory = null;
  
/* Alerts vendor when SKU inventory drops below this value */
  @Property(name: 'min_inventory_threshold')
  int minInventoryThreshold = null;
  
/* The base price before any sale */
  @Property(name: 'original_price')
  double originalPrice = null;
  
/* The current price of the SKU with sales, if any. Set original_price for the base */
  @Property(name: 'price')
  double price = null;
  
/* Whether or not the SKU is currently published */
  @Property(name: 'published')
  bool published = null;
  
/* The id of a sale affecting the price, if any */
  @Property(name: 'sale_id')
  int saleId = null;
  
/* The name of a sale affecting the price, if any */
  @Property(name: 'sale_name')
  String saleName = null;
  
/* The stock keeping unit (SKU), a unique identifier for a given product.  Max 40 characters */
  @Property(name: 'sku')
  String sku = null;
  
/* The date the sku becomes available, unix timestamp in seconds.  If set to null, sku will become available immediately */
  @Property(name: 'start_date')
  int startDate = null;
  
/* The date the sku becomes unavailable, unix timestamp in seconds.  If set to null, sku is always available */
  @Property(name: 'stop_date')
  int stopDate = null;
  
  Sku();

  @override
  String toString()  {
    return 'Sku[additionalProperties=$additionalProperties, currencyCode=$currencyCode, description=$description, inventory=$inventory, minInventoryThreshold=$minInventoryThreshold, originalPrice=$originalPrice, price=$price, published=$published, saleId=$saleId, saleName=$saleName, sku=$sku, startDate=$startDate, stopDate=$stopDate, ]';
  }

}

