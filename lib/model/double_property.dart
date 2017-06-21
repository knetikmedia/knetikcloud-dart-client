part of swagger.api;


@Entity()
class DoubleProperty {
  /* The type of the property. Used for polymorphic type recognition and thus must match an expected type with additional properties. */
  @Property(name: 'type')
  String type = null;
  
/* The value */
  @Property(name: 'value')
  double value = null;
  
  DoubleProperty();

  @override
  String toString()  {
    return 'DoubleProperty[type=$type, value=$value, ]';
  }

}

