part of swagger.api;


@Entity()
class ItemTemplateResource {
  /* The customized behaviors that are required or default for this type of item */
  @Property(name: 'behaviors')
  List<ItemBehaviorDefinitionResource> behaviors = [];
  
/* The date/time this resource was created in seconds since unix epoch */
  @Property(name: 'created_date')
  int createdDate = null;
  
/* The id of the template */
  @Property(name: 'id')
  String id = null;
  
/* The name of the template */
  @Property(name: 'name')
  String name = null;
  
/* The customized properties that are present */
  @Property(name: 'properties')
  List<PropertyDefinitionResource> properties = [];
  
/* The date/time this resource was last updated in seconds since unix epoch */
  @Property(name: 'updated_date')
  int updatedDate = null;
  
  ItemTemplateResource();

  @override
  String toString()  {
    return 'ItemTemplateResource[behaviors=$behaviors, createdDate=$createdDate, id=$id, name=$name, properties=$properties, updatedDate=$updatedDate, ]';
  }

}

