part of swagger.api;


@Entity()
class MapProperty {
  /* The type of the property. Used for polymorphic type recognition and thus must match an expected type with additional properties. */
  @Property(name: 'type')
  String type = null;
  
/* A map/object of string to sub-property */
  @Property(name: 'map')
  Map<String, Property> map = {};
  
  MapProperty();

  @override
  String toString()  {
    return 'MapProperty[type=$type, map=$map, ]';
  }

}

