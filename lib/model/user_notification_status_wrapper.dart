part of swagger.api;


@Entity()
class UserNotificationStatusWrapper {
  
  @Property(name: 'value')
  String value = null;
  //enum valueEnum {  pending,  read,  hidden,  };
  UserNotificationStatusWrapper();

  @override
  String toString()  {
    return 'UserNotificationStatusWrapper[value=$value, ]';
  }

}

