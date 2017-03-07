part of swagger.api;


@Entity()
class TemplateResource {
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
  
  TemplateResource();

  @override
  String toString()  {
    return 'TemplateResource[createdDate=$createdDate, id=$id, name=$name, properties=$properties, updatedDate=$updatedDate, ]';
  }

}

