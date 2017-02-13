part of swagger.api;


@Entity()
class SubscriptionTemplateResource {
  /* The date/time this resource was created in seconds since unix epoch */
  @Property(name: 'created_date')
  int createdDate = null;
  
/* The id of the template */
  @Property(name: 'id')
  String id = null;
  
/* The name of the template */
  @Property(name: 'name')
  String name = null;
  
/* A template to apply to all plans on a subscription using this template */
  @Property(name: 'plan_template')
  TemplateResource planTemplate = null;
  
/* The customized properties that are present */
  @Property(name: 'properties')
  List<PropertyDefinitionResource> properties = [];
  
/* The date/time this resource was last updated in seconds since unix epoch */
  @Property(name: 'updated_date')
  int updatedDate = null;
  
  SubscriptionTemplateResource();

  @override
  String toString()  {
    return 'SubscriptionTemplateResource[createdDate=$createdDate, id=$id, name=$name, planTemplate=$planTemplate, properties=$properties, updatedDate=$updatedDate, ]';
  }

}

