part of swagger.api;


@Entity()
class LongProperty {
  /* The type of the property. Used for polymorphic type recognition and thus must match an expected type with additional properties. */
  @Property(name: 'type')
  String type = null;
  
/* The value */
  @Property(name: 'value')
  int value = null;
  
  LongProperty();

  @override
  String toString()  {
    return 'LongProperty[type=$type, value=$value, ]';
  }

}

