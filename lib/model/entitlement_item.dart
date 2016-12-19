part of swagger.api;


@Entity()
class EntitlementItem {
  /* A map of additional properties, keyed on the property name.  Must match the names and types defined in the template for this item type, or be an extra not from the template */
  @Property(name: 'additional_properties')
  Map<String, Property> additionalProperties = {};
  
/* The behaviors linked to the item, describing various options and interactions. May not be included in item lists */
  @Property(name: 'behaviors')
  List<Behavior> behaviors = [];
  
/* A category for filtering items */
  @Property(name: 'category')
  String category = null;
  
/* The date the item was created, unix timestamp in seconds */
  @Property(name: 'created_date')
  int createdDate = null;
  
/* The id of the item */
  @Property(name: 'id')
  int id = null;
  
/* A long description of the item */
  @Property(name: 'long_description')
  String longDescription = null;
  
/* The name of the item */
  @Property(name: 'name')
  String name = null;
  
/* A short description of the item, max 255 chars */
  @Property(name: 'short_description')
  String shortDescription = null;
  
/* A number to use in sorting items.  Default 500 */
  @Property(name: 'sort')
  int sort = null;
  
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
  
  EntitlementItem();

  @override
  String toString()  {
    return 'EntitlementItem[additionalProperties=$additionalProperties, behaviors=$behaviors, category=$category, createdDate=$createdDate, id=$id, longDescription=$longDescription, name=$name, shortDescription=$shortDescription, sort=$sort, tags=$tags, template=$template, typeHint=$typeHint, uniqueKey=$uniqueKey, updatedDate=$updatedDate, ]';
  }

}

