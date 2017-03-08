part of swagger.api;


@Entity()
class Property {
  /* The type of the property. Used for polymorphic type recognition and thus must match an expected type with additional properties. */
  @Property(name: 'type')
  String type = null;
  
  Property();

  @override
  String toString()  {
    return 'Property[type=$type, ]';
  }

}

