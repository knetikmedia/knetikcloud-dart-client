part of swagger.api;


@Entity()
class ObjectResource {
  /* The behaviors linked to the item, describing various options and interactions. May not be included in item lists */
  @Property(name: 'behaviors')
  List<Behavior> behaviors = [];
  
/* A category for filtering items */
  @Property(name: 'category')
  String category = null;
  
/* The date the item was created, unix timestamp in seconds */
  @Property(name: 'created_date')
  int createdDate = null;
  
/* A map of additional data. The template will define requirements for the object */
  @Property(name: 'data')
  Object data = null;
  
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
  
/* The unique key for the item */
  @Property(name: 'unique_key')
  String uniqueKey = null;
  
/* The date the item was last updated, unix timestamp in seconds */
  @Property(name: 'updated_date')
  int updatedDate = null;
  
  ObjectResource();

  @override
  String toString()  {
    return 'ObjectResource[behaviors=$behaviors, category=$category, createdDate=$createdDate, data=$data, id=$id, longDescription=$longDescription, name=$name, shortDescription=$shortDescription, sort=$sort, tags=$tags, uniqueKey=$uniqueKey, updatedDate=$updatedDate, ]';
  }

}

