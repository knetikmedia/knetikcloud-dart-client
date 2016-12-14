part of swagger.api;


@Entity()
class ItemBehaviorDefinitionResource {
  /* The default version of the behavior */
  @Property(name: 'behavior')
  Behavior behavior = null;
  
/* Whether the behavior's values can be modified */
  @Property(name: 'modifiable')
  bool modifiable = null;
  
/* Whether the behavior can be removed */
  @Property(name: 'required')
  bool required = null;
  
  ItemBehaviorDefinitionResource();

  @override
  String toString()  {
    return 'ItemBehaviorDefinitionResource[behavior=$behavior, modifiable=$modifiable, required=$required, ]';
  }

}

