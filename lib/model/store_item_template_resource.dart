part of swagger.api;


@Entity()
class StoreItemTemplateResource {
  /* Whether to allow additional properties beyond those specified or not */
  @Property(name: 'allow_additional')
  bool allowAdditional = null;
  
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
  
/* A template to apply to all skus on an item using this template */
  @Property(name: 'sku_template')
  TemplateResource skuTemplate = null;
  
/* The date/time this resource was last updated in seconds since unix epoch */
  @Property(name: 'updated_date')
  int updatedDate = null;
  
  StoreItemTemplateResource();

  @override
  String toString()  {
    return 'StoreItemTemplateResource[allowAdditional=$allowAdditional, behaviors=$behaviors, createdDate=$createdDate, id=$id, name=$name, properties=$properties, skuTemplate=$skuTemplate, updatedDate=$updatedDate, ]';
  }

}

