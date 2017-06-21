part of swagger.api;


@Entity()
class FileGroupProperty {
  /* The type of the property. Used for polymorphic type recognition and thus must match an expected type with additional properties. */
  @Property(name: 'type')
  String type = null;
  
/* The list of files */
  @Property(name: 'files')
  List<FileProperty> files = [];
  
  FileGroupProperty();

  @override
  String toString()  {
    return 'FileGroupProperty[type=$type, files=$files, ]';
  }

}

