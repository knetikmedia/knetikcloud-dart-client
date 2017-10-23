part of swagger.api;


@Entity()
class VideoPropertyDefinitionResource {
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
  
/* If provided, a file type that teh property must match */
  @Property(name: 'file_type')
  String fileType = null;
  
/* If provided, the maximum height of the video */
  @Property(name: 'max_height')
  int maxHeight = null;
  
/* If provided, the maximum length of the video */
  @Property(name: 'max_length')
  int maxLength = null;
  
/* If provided, the maximum width of the video */
  @Property(name: 'max_width')
  int maxWidth = null;
  
/* If provided, the minimum height of the video */
  @Property(name: 'min_height')
  int minHeight = null;
  
/* If provided, the minimum length of the video */
  @Property(name: 'min_length')
  int minLength = null;
  
/* If provided, the minimum width of the video */
  @Property(name: 'min_width')
  int minWidth = null;
  
  VideoPropertyDefinitionResource();

  @override
  String toString()  {
    return 'VideoPropertyDefinitionResource[fieldList=$fieldList, name=$name, required=$required, type=$type, fileType=$fileType, maxHeight=$maxHeight, maxLength=$maxLength, maxWidth=$maxWidth, minHeight=$minHeight, minLength=$minLength, minWidth=$minWidth, ]';
  }

}

