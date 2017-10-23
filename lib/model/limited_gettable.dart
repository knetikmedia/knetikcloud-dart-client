part of swagger.api;


@Entity()
class LimitedGettable {
  
  @Property(name: 'description')
  String description = null;
  
/* Used for polymorphic type recognition and thus must match an expected type with additional properties */
  @Property(name: 'type_hint')
  String typeHint = null;
  

  @Property(name: 'group')
  LimitedGettableGroup group = null;
  
  LimitedGettable();

  @override
  String toString()  {
    return 'LimitedGettable[description=$description, typeHint=$typeHint, group=$group, ]';
  }

}

