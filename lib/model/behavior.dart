part of swagger.api;


@Entity()
class Behavior {
  /* Used for polymorphic type recognition and thus must match an expected type with additional properties */
  @Property(name: 'type_hint')
  String typeHint = null;
  
  Behavior();

  @override
  String toString()  {
    return 'Behavior[typeHint=$typeHint, ]';
  }

}

