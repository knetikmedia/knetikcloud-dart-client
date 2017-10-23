part of swagger.api;


@Entity()
class FilePropertyDefinitionResource {
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
  
/* If provided, the maximum allowed file size in bytes */
  @Property(name: 'max_file_size')
  int maxFileSize = null;
  
  FilePropertyDefinitionResource();

  @override
  String toString()  {
    return 'FilePropertyDefinitionResource[fieldList=$fieldList, name=$name, required=$required, type=$type, fileType=$fileType, maxFileSize=$maxFileSize, ]';
  }

}

