part of swagger.api;


@Entity()
class Consumable {
  
  @Property(name: 'description')
  String description = null;
  
/* Used for polymorphic type recognition and thus must match an expected type with additional properties */
  @Property(name: 'type_hint')
  String typeHint = null;
  
/* The maximum number of times an item can be used */
  @Property(name: 'max_use')
  int maxUse = null;
  
  Consumable();

  @override
  String toString()  {
    return 'Consumable[description=$description, typeHint=$typeHint, maxUse=$maxUse, ]';
  }

}

