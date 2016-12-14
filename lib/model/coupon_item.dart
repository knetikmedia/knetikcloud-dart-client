part of swagger.api;


@Entity()
class CouponItem {
  /* A map of additional properties, keyed on the property name.  Must match the names and types defined in the template for this item type, or be an extra not from the template */
  @Property(name: 'additional_properties')
  Map<String, Property> additionalProperties = {};
  
/* The behaviors linked to the item, describing various options and interactions. May not be included in item lists */
  @Property(name: 'behaviors')
  List<Behavior> behaviors = [];
  
/* A category for filtering items */
  @Property(name: 'category')
  String category = null;
  
/* The type of coupon */
  @Property(name: 'coupon_type_hint')
  String couponTypeHint = null;
  //enum couponTypeHintEnum {  coupon_cart,  coupon_single_item,  coupon_voucher,  coupon_vendor,  coupon_tag,  };
/* The date the item was created, unix timestamp in seconds */
  @Property(name: 'created_date')
  int createdDate = null;
  
/* The amount this coupon is maxed out at.  Applies if coupon_type_hint is coupon_cart */
  @Property(name: 'discount_max')
  double discountMax = null;
  
/* The minimium amount needed in the cart for the coupon to apply.  Applies if coupon_type_hint is coupon_cart */
  @Property(name: 'discount_min_cart_value')
  double discountMinCartValue = null;
  
/* The type of coupon discount */
  @Property(name: 'discount_type')
  String discountType = null;
  //enum discountTypeEnum {  value,  percentage,  };
/* The amount the coupon will discount the item */
  @Property(name: 'discount_value')
  double discountValue = null;
  
/* Whether or not the item is currently displayable.  Default = true */
  @Property(name: 'displayable')
  bool displayable = null;
  
/* Whether this coupon is exclusive or not.  Default = false */
  @Property(name: 'exclusive')
  bool exclusive = null;
  
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
  
/* The id of the item the coupon is applied to.  Applies if coupon_type_hint is coupon_single_item or coupon_voucher */
  @Property(name: 'item_id')
  int itemId = null;
  
/* A long description of the item */
  @Property(name: 'long_description')
  String longDescription = null;
  
/* The maximum quantity of items the coupon can apply to, null if no limit and minimum 1 otherwise.  Applies if coupon_type_hint is coupon_single_item or coupon_voucher */
  @Property(name: 'max_quantity')
  int maxQuantity = null;
  
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
  
/* A list of tags for a coupon.  The coupon can only apply to an item that has at least one of these tags.  Applies if coupon_type_hint is coupon_tag */
  @Property(name: 'valid_for_tags')
  List<String> validForTags = [];
  
/* The vendor who provides the item */
  @Property(name: 'vendor_id')
  int vendorId = null;
  
  CouponItem();

  @override
  String toString()  {
    return 'CouponItem[additionalProperties=$additionalProperties, behaviors=$behaviors, category=$category, couponTypeHint=$couponTypeHint, createdDate=$createdDate, discountMax=$discountMax, discountMinCartValue=$discountMinCartValue, discountType=$discountType, discountValue=$discountValue, displayable=$displayable, exclusive=$exclusive, geoCountryList=$geoCountryList, geoPolicyType=$geoPolicyType, id=$id, itemId=$itemId, longDescription=$longDescription, maxQuantity=$maxQuantity, name=$name, shippingTier=$shippingTier, shortDescription=$shortDescription, skus=$skus, sort=$sort, storeEnd=$storeEnd, storeStart=$storeStart, tags=$tags, template=$template, typeHint=$typeHint, uniqueKey=$uniqueKey, updatedDate=$updatedDate, validForTags=$validForTags, vendorId=$vendorId, ]';
  }

}

