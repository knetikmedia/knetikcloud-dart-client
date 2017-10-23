part of swagger.api;


@Entity()
class Expirable {
  
  @Property(name: 'description')
  String description = null;
  
/* Used for polymorphic type recognition and thus must match an expected type with additional properties */
  @Property(name: 'type_hint')
  String typeHint = null;
  
/* The length of time */
  @Property(name: 'time_length')
  int timeLength = null;
  
/* The unit of time */
  @Property(name: 'unit_of_time')
  String unitOfTime = null;
  
  Expirable();

  @override
  String toString()  {
    return 'Expirable[description=$description, typeHint=$typeHint, timeLength=$timeLength, unitOfTime=$unitOfTime, ]';
  }

}

