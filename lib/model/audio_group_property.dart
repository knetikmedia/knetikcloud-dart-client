part of swagger.api;


@Entity()
class AudioGroupProperty {
  /* The type of the property. Used for polymorphic type recognition and thus must match an expected type with additional properties. */
  @Property(name: 'type')
  String type = null;
  
/* The list of files */
  @Property(name: 'files')
  List<FileProperty> files = [];
  
  AudioGroupProperty();

  @override
  String toString()  {
    return 'AudioGroupProperty[type=$type, files=$files, ]';
  }

}

