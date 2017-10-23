part of swagger.api;


@Entity()
class ImageProperty {
  /* The type of the property. Used for polymorphic type recognition and thus must match an expected type with additional properties. */
  @Property(name: 'type')
  String type = null;
  
/* A crc value for file integrity verification */
  @Property(name: 'crc')
  String crc = null;
  
/* A description of the file */
  @Property(name: 'description')
  String description = null;
  
/* The type of file such as txt, mp3, mov or csv */
  @Property(name: 'file_type')
  String fileType = null;
  
/* The url of the file */
  @Property(name: 'url')
  String url = null;
  
  ImageProperty();

  @override
  String toString()  {
    return 'ImageProperty[type=$type, crc=$crc, description=$description, fileType=$fileType, url=$url, ]';
  }

}

