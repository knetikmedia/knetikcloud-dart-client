part of swagger.api;


@Entity()
class UserNotificationResource {
  /* The data to send and fill templates */
  @Property(name: 'data')
  Object data = null;
  
/* The id of the notification */
  @Property(name: 'notification_id')
  String notificationId = null;
  
/* The id of the notification type */
  @Property(name: 'notification_type_id')
  String notificationTypeId = null;
  
/* The id of the recipient, dependent on the recipient_type. The user's id or the topic's id */
  @Property(name: 'recipient')
  String recipient = null;
  
/* The type of recipient for the notification. Either a user, or all users in a topic */
  @Property(name: 'recipient_type')
  String recipientType = null;
  //enum recipientTypeEnum {  user,  topic,  };
/* The date this notification was first retrieved */
  @Property(name: 'retrieve_date')
  int retrieveDate = null;
  
/* The date this notification was sent */
  @Property(name: 'send_date')
  int sendDate = null;
  
/* The user's status for this notification */
  @Property(name: 'status')
  String status = null;
  //enum statusEnum {  pending,  read,  hidden,  };
/* The id of the user */
  @Property(name: 'user_id')
  int userId = null;
  
  UserNotificationResource();

  @override
  String toString()  {
    return 'UserNotificationResource[data=$data, notificationId=$notificationId, notificationTypeId=$notificationTypeId, recipient=$recipient, recipientType=$recipientType, retrieveDate=$retrieveDate, sendDate=$sendDate, status=$status, userId=$userId, ]';
  }

}

