part of swagger.api;


@Entity()
class UserItemLogResource {
  /* The log entry id */
  @Property(name: 'id')
  int id = null;
  
/* Additional information defined by the type */
  @Property(name: 'info')
  String info = null;
  
/* The item interacted with */
  @Property(name: 'item')
  SimpleReferenceResource«int» item = null;
  
/* The date/time this event occurred in seconds since epoch */
  @Property(name: 'log_date')
  int logDate = null;
  
/* The type of event */
  @Property(name: 'type')
  String type = null;
  
/* The user making the interaction */
  @Property(name: 'user')
  SimpleUserResource user = null;
  
/* The id of the inventory entry this event is related to, if any */
  @Property(name: 'user_inventory')
  int userInventory = null;
  
  UserItemLogResource();

  @override
  String toString()  {
    return 'UserItemLogResource[id=$id, info=$info, item=$item, logDate=$logDate, type=$type, user=$user, userInventory=$userInventory, ]';
  }

}

