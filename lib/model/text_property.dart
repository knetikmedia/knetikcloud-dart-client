part of swagger.api;


@Entity()
class TextProperty {
  /* The type of the property. Used for polymorphic type recognition and thus must match an expected type with additional properties. */
  @Property(name: 'type')
  String type = null;
  
/* The value */
  @Property(name: 'value')
  String value = null;
  
  TextProperty();

  @override
  String toString()  {
    return 'TextProperty[type=$type, value=$value, ]';
  }

}

