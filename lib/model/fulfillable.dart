part of swagger.api;


@Entity()
class Fulfillable {
  
  @Property(name: 'description')
  String description = null;
  
/* Used for polymorphic type recognition and thus must match an expected type with additional properties */
  @Property(name: 'type_hint')
  String typeHint = null;
  
/* The name of the fulfillment type that describes how the item should be fulfilled.  Examples: inventory, wallet, amazon */
  @Property(name: 'type_name')
  String typeName = null;
  
  Fulfillable();

  @override
  String toString()  {
    return 'Fulfillable[description=$description, typeHint=$typeHint, typeName=$typeName, ]';
  }

}

