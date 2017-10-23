part of swagger.api;


@Entity()
class PropertyFieldResource {
  /* A description of the field */
  @Property(name: 'description')
  String description = null;
  
/* The type of values within a 'list' type field */
  @Property(name: 'inner_type')
  String innerType = null;
  //enum innerTypeEnum {  integer,  number,  bool,  string,  enumeration,  list,  object,  definition,  };
/* A description of fields within objects within a 'list' type field, when inner_type is 'object' */
  @Property(name: 'inner_type_fields')
  List<PropertyFieldResource> innerTypeFields = [];
  
/* The name of the field */
  @Property(name: 'name')
  String name = null;
  
/* Whether the field is required */
  @Property(name: 'required')
  bool required = null;
  
/* The type of the field */
  @Property(name: 'type')
  String type = null;
  //enum typeEnum {  integer,  number,  bool,  string,  enumeration,  list,  object,  definition,  };
/* A list of valid values for 'enum' type fields */
  @Property(name: 'valid_values')
  List<String> validValues = [];
  
  PropertyFieldResource();

  @override
  String toString()  {
    return 'PropertyFieldResource[description=$description, innerType=$innerType, innerTypeFields=$innerTypeFields, name=$name, required=$required, type=$type, validValues=$validValues, ]';
  }

}

