part of swagger.api;


@Entity()
class ListProperty {
  /* The type of the property. Used for polymorphic type recognition and thus must match an expected type with additional properties. */
  @Property(name: 'type')
  String type = null;
  
/* The list of properties */
  @Property(name: 'values')
  List<Property> values = [];
  
  ListProperty();

  @override
  String toString()  {
    return 'ListProperty[type=$type, values=$values, ]';
  }

}

