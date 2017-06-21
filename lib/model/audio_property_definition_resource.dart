part of swagger.api;


@Entity()
class AudioPropertyDefinitionResource {
  /* A list of the fields on both the property definition and property of this type */
  @Property(name: 'field_list')
  PropertyFieldListResource fieldList = null;
  
/* The name of the property */
  @Property(name: 'name')
  String name = null;
  
/* Whether the property is required */
  @Property(name: 'required')
  bool required = null;
  
/* The type of the property. Used for polymorphic type recognition and thus must match an expected type with additional properties. */
  @Property(name: 'type')
  String type = null;
  
/* If provided, a file type the property must match */
  @Property(name: 'file_type')
  String fileType = null;
  
/* If provided, the maximum length of the audio */
  @Property(name: 'max_length')
  int maxLength = null;
  
/* If provided, the minimum length of the audio */
  @Property(name: 'min_length')
  int minLength = null;
  
  AudioPropertyDefinitionResource();

  @override
  String toString()  {
    return 'AudioPropertyDefinitionResource[fieldList=$fieldList, name=$name, required=$required, type=$type, fileType=$fileType, maxLength=$maxLength, minLength=$minLength, ]';
  }

}

