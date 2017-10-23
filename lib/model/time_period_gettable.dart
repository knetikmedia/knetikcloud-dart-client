part of swagger.api;


@Entity()
class TimePeriodGettable {
  
  @Property(name: 'description')
  String description = null;
  
/* Used for polymorphic type recognition and thus must match an expected type with additional properties */
  @Property(name: 'type_hint')
  String typeHint = null;
  
/* The time period limit */
  @Property(name: 'get_limit')
  int getLimit = null;
  
/* The name of a group of items. Multiple items with the same group name will be limited together, leave null to be assigned a random unique name. It is typical that the other properties here will be the same for all, but this is not enforced and the item being recieved will use its settings. */
  @Property(name: 'group_name')
  String groupName = null;
  
/* The length of time */
  @Property(name: 'time_length')
  int timeLength = null;
  
/* The unit of time */
  @Property(name: 'unit_of_time')
  String unitOfTime = null;
  
  TimePeriodGettable();

  @override
  String toString()  {
    return 'TimePeriodGettable[description=$description, typeHint=$typeHint, getLimit=$getLimit, groupName=$groupName, timeLength=$timeLength, unitOfTime=$unitOfTime, ]';
  }

}

