part of swagger.api;


@Entity()
class DateProperty {
  /* The type of the property. Used for polymorphic type recognition and thus must match an expected type with additional properties. */
  @Property(name: 'type')
  String type = null;
  
/* The value */
  @Property(name: 'value')
  int value = null;
  
  DateProperty();

  @override
  String toString()  {
    return 'DateProperty[type=$type, value=$value, ]';
  }

}

