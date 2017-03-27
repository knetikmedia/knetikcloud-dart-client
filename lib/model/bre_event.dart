part of swagger.api;


@Entity()
class BreEvent {
  /* The event name of the trigger to be fired */
  @Property(name: 'event_name')
  String eventName = null;
  
/* The parameters to the event. A Map (assosiative array) with a key for each trigger parameter name and a corrosponding value. */
  @Property(name: 'params')
  Object params = null;
  
  BreEvent();

  @override
  String toString()  {
    return 'BreEvent[eventName=$eventName, params=$params, ]';
  }

}

