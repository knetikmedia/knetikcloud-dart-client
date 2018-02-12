part of swagger.api;


@Entity()
class NotificationUserTypeResource {
  /* Whether the user has muted direct notification of this type. Notifications can still be retrieved via the api */
  @Property(name: 'silenced')
  bool silenced = null;
  
/* The notification type id */
  @Property(name: 'type')
  String type = null;
  
/* The user's id */
  @Property(name: 'user_id')
  int userId = null;
  
  NotificationUserTypeResource();

  @override
  String toString()  {
    return 'NotificationUserTypeResource[silenced=$silenced, type=$type, userId=$userId, ]';
  }

}

