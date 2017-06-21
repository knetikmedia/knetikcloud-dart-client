part of swagger.api;


@Entity()
class AudioGroupPropertyDefinitionResource {
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
  
/* If provided, a file type that the property must match */
  @Property(name: 'file_type')
  String fileType = null;
  
/* If provided, the maximum number of files in the group */
  @Property(name: 'max_count')
  int maxCount = null;
  
/* If provided, the maximum allowed size per file in bytes */
  @Property(name: 'max_file_size')
  int maxFileSize = null;
  
/* If provided, the minimum number of files in the group */
  @Property(name: 'min_count')
  int minCount = null;
  
/* If provided, the maximum length of the audio */
  @Property(name: 'max_length')
  int maxLength = null;
  
/* If provided, the minimum length of the audio */
  @Property(name: 'min_length')
  int minLength = null;
  
  AudioGroupPropertyDefinitionResource();

  @override
  String toString()  {
    return 'AudioGroupPropertyDefinitionResource[fieldList=$fieldList, name=$name, required=$required, type=$type, fileType=$fileType, maxCount=$maxCount, maxFileSize=$maxFileSize, minCount=$minCount, maxLength=$maxLength, minLength=$minLength, ]';
  }

}

