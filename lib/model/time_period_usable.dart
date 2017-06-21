part of swagger.api;


@Entity()
class TimePeriodUsable {
  
  @Property(name: 'description')
  String description = null;
  
/* Used for polymorphic type recognition and thus must match an expected type with additional properties */
  @Property(name: 'type_hint')
  String typeHint = null;
  
/* The amount of times it can be used */
  @Property(name: 'max_use')
  int maxUse = null;
  
/* The length of time */
  @Property(name: 'time_length')
  int timeLength = null;
  
/* The unit of time */
  @Property(name: 'unit_of_time')
  String unitOfTime = null;
  
  TimePeriodUsable();

  @override
  String toString()  {
    return 'TimePeriodUsable[description=$description, typeHint=$typeHint, maxUse=$maxUse, timeLength=$timeLength, unitOfTime=$unitOfTime, ]';
  }

}

