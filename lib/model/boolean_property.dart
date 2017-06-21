part of swagger.api;


@Entity()
class BooleanProperty {
  /* The type of the property. Used for polymorphic type recognition and thus must match an expected type with additional properties. */
  @Property(name: 'type')
  String type = null;
  
/* The value */
  @Property(name: 'value')
  bool value = null;
  
  BooleanProperty();

  @override
  String toString()  {
    return 'BooleanProperty[type=$type, value=$value, ]';
  }

}

