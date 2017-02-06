part of swagger.api;


@Entity()
class ActivityUserResource {
  /* Whether this user is the 'host' of the occurrence and has increased access to settings/etc (default: false) */
  @Property(name: 'host')
  bool host = null;
  
/* The id of the activity user entry */
  @Property(name: 'id')
  int id = null;
  
/* The date this user last joined the occurrence, unix timestamp in seconds */
  @Property(name: 'joined_date')
  int joinedDate = null;
  
/* The date this user last left the occurrence, unix timestamp in seconds. Null if still present */
  @Property(name: 'left_date')
  int leftDate = null;
  
/* The metric for the user's results, after the game is over */
  @Property(name: 'metric')
  MetricResource metric = null;
  
/* The current status of the user in the occurrence (default: present) */
  @Property(name: 'status')
  String status = null;
  //enum statusEnum {  present,  ready,  left,  surrendered,  disconnected,  };
/* The user */
  @Property(name: 'user')
  SimpleUserResource user = null;
  
  ActivityUserResource();

  @override
  String toString()  {
    return 'ActivityUserResource[host=$host, id=$id, joinedDate=$joinedDate, leftDate=$leftDate, metric=$metric, status=$status, user=$user, ]';
  }

}

