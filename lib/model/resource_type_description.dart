part of swagger.api;


@Entity()
class ResourceTypeDescription {
  /* The field on the resource that the id is in */
  @Property(name: 'id_field')
  String idField = null;
  
/* The unique name for the resource in swagger. This serves as the unique identifier. Cannot be changed after creation */
  @Property(name: 'name')
  String name = null;
  
/* The base path of the service */
  @Property(name: 'service_path')
  String servicePath = null;
  
  ResourceTypeDescription();

  @override
  String toString()  {
    return 'ResourceTypeDescription[idField=$idField, name=$name, servicePath=$servicePath, ]';
  }

}

