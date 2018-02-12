part of swagger.api;


@Entity()
class NotificationResource {
  /* The data to send to websockets. Also used to fill in the templates */
  @Property(name: 'data')
  Object data = null;
  
/* The id of this individual notification. Default: random */
  @Property(name: 'notification_id')
  String notificationId = null;
  
/* The id of the notification type which will define message templates */
  @Property(name: 'notification_type_id')
  String notificationTypeId = null;
  
/* The id of the recipient, dependent on the recipient_type. The user's id or the topic's id */
  @Property(name: 'recipient')
  String recipient = null;
  
/* The type of recipient for the notification. Either a user, or all users in a topic */
  @Property(name: 'recipient_type')
  String recipientType = null;
  //enum recipientTypeEnum {  user,  topic,  };
/* The date this notification was sent */
  @Property(name: 'send_date')
  int sendDate = null;
  
  NotificationResource();

  @override
  String toString()  {
    return 'NotificationResource[data=$data, notificationId=$notificationId, notificationTypeId=$notificationTypeId, recipient=$recipient, recipientType=$recipientType, sendDate=$sendDate, ]';
  }

}

