part of swagger.api;


@Entity()
class PreReqEntitlement {
  
  @Property(name: 'description')
  String description = null;
  
/* Used for polymorphic type recognition and thus must match an expected type with additional properties */
  @Property(name: 'type_hint')
  String typeHint = null;
  
/* The item ids that must already be in the user's inventory */
  @Property(name: 'item_ids')
  List<int> itemIds = [];
  
  PreReqEntitlement();

  @override
  String toString()  {
    return 'PreReqEntitlement[description=$description, typeHint=$typeHint, itemIds=$itemIds, ]';
  }

}

