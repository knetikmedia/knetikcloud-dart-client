part of swagger.api;


@Entity()
class LimitedGettableGroup {
  /* Whether to get active items only */
  @Property(name: 'active_only')
  bool activeOnly = null;
  
/* The name of the group. Multiple items with the same group name will be limited together, leave null to be assigned a random unique name. It is typical that owned_limit and active_only will be the same for all, but this is not enforced and the item being recieved will use its settings. */
  @Property(name: 'name')
  String name = null;
  
/* The max number of items that can be purchased */
  @Property(name: 'owned_limit')
  int ownedLimit = null;
  
  LimitedGettableGroup();

  @override
  String toString()  {
    return 'LimitedGettableGroup[activeOnly=$activeOnly, name=$name, ownedLimit=$ownedLimit, ]';
  }

}

