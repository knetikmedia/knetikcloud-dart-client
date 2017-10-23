part of swagger.api;


@Entity()
class BehaviorDefinitionResource {
  /* Description of the behavior */
  @Property(name: 'description')
  String description = null;
  
/* Pre-requisite behaviors that an item must have in order to also have this behavior */
  @Property(name: 'prerequisite_behaviors')
  List<Behavior> prerequisiteBehaviors = [];
  
/* Configurable properties of the behavior */
  @Property(name: 'properties')
  List<PropertyFieldResource> properties = [];
  
/* The behavior type */
  @Property(name: 'type_hint')
  String typeHint = null;
  
  BehaviorDefinitionResource();

  @override
  String toString()  {
    return 'BehaviorDefinitionResource[description=$description, prerequisiteBehaviors=$prerequisiteBehaviors, properties=$properties, typeHint=$typeHint, ]';
  }

}

