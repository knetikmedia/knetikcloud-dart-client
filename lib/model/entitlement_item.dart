part of swagger.api;


@Entity()
class EntitlementItem {
  /* The behaviors linked to the item, describing various options and interactions. May not be included in item lists */
  @Property(name: 'behaviors')
  List<Behavior> behaviors = [];
  
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
    return 'EntitlementItem[behaviors=$behaviors, createdDate=$createdDate, id=$id, longDescription=$longDescription, name=$name, shortDescription=$shortDescription, sort=$sort, typeHint=$typeHint, uniqueKey=$uniqueKey, updatedDate=$updatedDate, ]';
  }

}

