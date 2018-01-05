part of swagger.api;


@Entity()
class VideoGroupPropertyDefinitionResource {
  /* The description of the property */
  @Property(name: 'description')
  String description = null;
  
/* A list of the fields on both the property definition and property of this type */
  @Property(name: 'field_list')
  PropertyFieldListResource fieldList = null;
  
/* The friendly front-facing name of the property */
  @Property(name: 'friendly_name')
  String friendlyName = null;
  
/* The name of the property */
  @Property(name: 'name')
  String name = null;
  
/* The JSON path to the option label */
  @Property(name: 'option_label_path')
  String optionLabelPath = null;
  
/* The JSON path to the option value */
  @Property(name: 'option_value_path')
  String optionValuePath = null;
  
/* URL of service containing the property options (assumed JSON array) */
  @Property(name: 'options_url')
  String optionsUrl = null;
  
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
  
/* If provided, the maximum height of each video */
  @Property(name: 'max_height')
  int maxHeight = null;
  
/* If provided, the maximum length of each video */
  @Property(name: 'max_length')
  int maxLength = null;
  
/* If provided, the maximum width of each video */
  @Property(name: 'max_width')
  int maxWidth = null;
  
/* If provided, the minimum height of each video */
  @Property(name: 'min_height')
  int minHeight = null;
  
/* If provided, the minimum length of each video */
  @Property(name: 'min_length')
  int minLength = null;
  
/* If provided, the minimum width of each video */
  @Property(name: 'min_width')
  int minWidth = null;
  
  VideoGroupPropertyDefinitionResource();

  @override
  String toString()  {
    return 'VideoGroupPropertyDefinitionResource[description=$description, fieldList=$fieldList, friendlyName=$friendlyName, name=$name, optionLabelPath=$optionLabelPath, optionValuePath=$optionValuePath, optionsUrl=$optionsUrl, required=$required, type=$type, fileType=$fileType, maxCount=$maxCount, maxFileSize=$maxFileSize, minCount=$minCount, maxHeight=$maxHeight, maxLength=$maxLength, maxWidth=$maxWidth, minHeight=$minHeight, minLength=$minLength, minWidth=$minWidth, ]';
  }

}

