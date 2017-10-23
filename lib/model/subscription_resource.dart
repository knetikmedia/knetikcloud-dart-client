part of swagger.api;


@Entity()
class SubscriptionResource {
  /* The additional properties for the subscription */
  @Property(name: 'additional_properties')
  Map<String, Property> additionalProperties = {};
  
/* Who can purchase this subscription */
  @Property(name: 'availability')
  String availability = null;
  //enum availabilityEnum {  all,  new_subscribers,  };
/* The behaviors linked to the item, describing various options and interactions. May not be included in item lists */
  @Property(name: 'behaviors')
  List<Behavior> behaviors = [];
  
/* The category of the subscription */
  @Property(name: 'category')
  String category = null;
  
/* The day of the month 1..31 this subscription will renew */
  @Property(name: 'consolidation_day_of_month')
  int consolidationDayOfMonth = null;
  
/* The date the item was created, unix timestamp in seconds */
  @Property(name: 'created_date')
  int createdDate = null;
  
/* Whether or not the item is currently visible to users. Does not block purchase; Use store_start or store_end to block purchase.  Default = true */
  @Property(name: 'displayable')
  bool displayable = null;
  
/* The geo country list for the subscription */
  @Property(name: 'geo_country_list')
  List<String> geoCountryList = [];
  
/* The geo policy type for the subscription */
  @Property(name: 'geo_policy_type')
  String geoPolicyType = null;
  //enum geoPolicyTypeEnum {  whitelist,  blacklist,  };
/* The id of the item */
  @Property(name: 'id')
  int id = null;
  
/* A long description of the subscription */
  @Property(name: 'long_description')
  String longDescription = null;
  
/* The name of the item */
  @Property(name: 'name')
  String name = null;
  
/* The billing options for this subscription */
  @Property(name: 'plans')
  List<SubscriptionPlanResource> plans = [];
  
/* A short description of the subscription.  Max 255 characters */
  @Property(name: 'short_description')
  String shortDescription = null;
  
/* A number to use in sorting items.  Default 500 */
  @Property(name: 'sort')
  int sort = null;
  
/* Used to schedule removal from store.  Null means the subscription will never be removed */
  @Property(name: 'store_end')
  int storeEnd = null;
  
/* Used to schedule appearance in store.  Null means the subscription will appear now */
  @Property(name: 'store_start')
  int storeStart = null;
  
/* The tags for the subscription */
  @Property(name: 'tags')
  List<String> tags = [];
  
/* The template being used */
  @Property(name: 'template')
  String template = null;
  
/* The unique key of the subscription */
  @Property(name: 'unique_key')
  String uniqueKey = null;
  
/* The date the item was last updated */
  @Property(name: 'updated_date')
  int updatedDate = null;
  
/* The id of the vendor */
  @Property(name: 'vendor_id')
  int vendorId = null;
  
  SubscriptionResource();

  @override
  String toString()  {
    return 'SubscriptionResource[additionalProperties=$additionalProperties, availability=$availability, behaviors=$behaviors, category=$category, consolidationDayOfMonth=$consolidationDayOfMonth, createdDate=$createdDate, displayable=$displayable, geoCountryList=$geoCountryList, geoPolicyType=$geoPolicyType, id=$id, longDescription=$longDescription, name=$name, plans=$plans, shortDescription=$shortDescription, sort=$sort, storeEnd=$storeEnd, storeStart=$storeStart, tags=$tags, template=$template, uniqueKey=$uniqueKey, updatedDate=$updatedDate, vendorId=$vendorId, ]';
  }

}

