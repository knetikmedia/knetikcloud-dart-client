part of swagger.api;


@Entity()
class ImagePropertyDefinitionResource {
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
  
/* If provided, the maximum height of the image */
  @Property(name: 'max_height')
  int maxHeight = null;
  
/* If provided, the maximum width of the image */
  @Property(name: 'max_width')
  int maxWidth = null;
  
/* If provided, the minimum height of the image */
  @Property(name: 'min_height')
  int minHeight = null;
  
/* If provided, the minimum width of the image */
  @Property(name: 'min_width')
  int minWidth = null;
  
  ImagePropertyDefinitionResource();

  @override
  String toString()  {
    return 'ImagePropertyDefinitionResource[fieldList=$fieldList, name=$name, required=$required, type=$type, fileType=$fileType, maxHeight=$maxHeight, maxWidth=$maxWidth, minHeight=$minHeight, minWidth=$minWidth, ]';
  }

}

