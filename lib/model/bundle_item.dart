part of swagger.api;


@Entity()
class BundleItem {
  /* A map of additional properties, keyed on the property name.  Must match the names and types defined in the template for this item type, or be an extra not from the template */
  @Property(name: 'additional_properties')
  Map<String, Property> additionalProperties = {};
  
/* The behaviors linked to the item, describing various options and interactions. May not be included in item lists */
  @Property(name: 'behaviors')
  List<Behavior> behaviors = [];
  
/* The skus of items to be included in this bundle, and how they influence the bundle total price.  Must have at least one SKU */
  @Property(name: 'bundled_skus')
  List<BundledSku> bundledSkus = [];
  
/* A category for filtering items */
  @Property(name: 'category')
  String category = null;
  
/* The date the item was created, unix timestamp in seconds */
  @Property(name: 'created_date')
  int createdDate = null;
  
/* Whether or not the item is currently displayable.  Default = true */
  @Property(name: 'displayable')
  bool displayable = null;
  
/* A list of country ID to include in the blacklist/whitelist geo policy */
  @Property(name: 'geo_country_list')
  List<String> geoCountryList = [];
  
/* Whether to use the geo_country_list as a black list or white list for item geographical availability */
  @Property(name: 'geo_policy_type')
  String geoPolicyType = null;
  //enum geoPolicyTypeEnum {  whitelist,  blacklist,  };
/* The id of the item */
  @Property(name: 'id')
  int id = null;
  
/* A long description of the item */
  @Property(name: 'long_description')
  String longDescription = null;
  
/* The name of the item */
  @Property(name: 'name')
  String name = null;
  
/* Provides the abstract shipping needs if this item is physical and can be shipped.  A value of zero means no shipping needed.  Default = 0 */
  @Property(name: 'shipping_tier')
  int shippingTier = null;
  
/* A short description of the item, max 255 chars */
  @Property(name: 'short_description')
  String shortDescription = null;
  
/* The skus for the item. Each defines a unique configuration for the item to be purchased (Large-Blue, Small-Green, etc). These are what is ultimately selected in the store and added to the cart */
  @Property(name: 'skus')
  List<Sku> skus = [];
  
/* A number to use in sorting items.  Default 500 */
  @Property(name: 'sort')
  int sort = null;
  
/* The date the item will leave the store, unix timestamp in seconds.  If set to null, item will never leave the store */
  @Property(name: 'store_end')
  int storeEnd = null;
  
/* The date the item will appear in the store, unix timestamp in seconds.  If set to null, item will appear in store immediately */
  @Property(name: 'store_start')
  int storeStart = null;
  
/* List of tags used for filtering items */
  @Property(name: 'tags')
  List<String> tags = [];
  
/* An item template this item is validated against.  May be null and no validation of additional_properties will be done.  Default = null */
  @Property(name: 'template')
  String template = null;
  
/* The type of the item */
  @Property(name: 'type_hint')
  String typeHint = null;
  
/* The unique key for the item */
  @Property(name: 'unique_key')
  String uniqueKey = null;
  
/* The date the item was last updated, unix timestamp in seconds */
  @Property(name: 'updated_date')
  int updatedDate = null;
  
/* The vendor who provides the item */
  @Property(name: 'vendor_id')
  int vendorId = null;
  
  BundleItem();

  @override
  String toString()  {
    return 'BundleItem[additionalProperties=$additionalProperties, behaviors=$behaviors, bundledSkus=$bundledSkus, category=$category, createdDate=$createdDate, displayable=$displayable, geoCountryList=$geoCountryList, geoPolicyType=$geoPolicyType, id=$id, longDescription=$longDescription, name=$name, shippingTier=$shippingTier, shortDescription=$shortDescription, skus=$skus, sort=$sort, storeEnd=$storeEnd, storeStart=$storeStart, tags=$tags, template=$template, typeHint=$typeHint, uniqueKey=$uniqueKey, updatedDate=$updatedDate, vendorId=$vendorId, ]';
  }

}

