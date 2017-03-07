part of swagger.api;


@Entity()
class CatalogSale {
  /* The iso3 code for the currency for this discountValue.  The sku purchased will have to match for it this sale to apply */
  @Property(name: 'currency_code')
  String currencyCode = null;
  
/* The way in which the price is reduced. 'value' means subtracting directly, 'percentage' means subtracting by the price times the discountValue (1.0 == 100%) */
  @Property(name: 'discount_type')
  String discountType = null;
  //enum discountTypeEnum {  value,  percentage,  };
/* The amount deducted from the price, in the same currencyCode as the item */
  @Property(name: 'discount_value')
  double discountValue = null;
  
/* The id of the sale */
  @Property(name: 'id')
  int id = null;
  
/* The id of the item this sale applies to.  Leave null to use other filters */
  @Property(name: 'item')
  int item = null;
  
/* The long description of the sale */
  @Property(name: 'long_description')
  String longDescription = null;
  
/* The name of the sale.  Max 40 characters */
  @Property(name: 'name')
  String name = null;
  
/* The date the sale ends, null for never.  Unix timestamp in seconds */
  @Property(name: 'sale_end_date')
  int saleEndDate = null;
  
/* The date the sale begins.  Unix timestamp in seconds */
  @Property(name: 'sale_start_date')
  int saleStartDate = null;
  
/* The short description of the sale.  Max 140 characters */
  @Property(name: 'short_description')
  String shortDescription = null;
  
/* The tag this sale applies to.  Leave null to skip this filter (applies to all tags) */
  @Property(name: 'tag')
  String tag = null;
  
/* The id of the vendor this sale applies to.  Leave null to skip this filter (applies to all vendors) */
  @Property(name: 'vendor')
  int vendor = null;
  
  CatalogSale();

  @override
  String toString()  {
    return 'CatalogSale[currencyCode=$currencyCode, discountType=$discountType, discountValue=$discountValue, id=$id, item=$item, longDescription=$longDescription, name=$name, saleEndDate=$saleEndDate, saleStartDate=$saleStartDate, shortDescription=$shortDescription, tag=$tag, vendor=$vendor, ]';
  }

}

