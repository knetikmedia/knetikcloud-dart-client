part of swagger.api;


@Entity()
class SubscriptionStatusWrapper {
  
  @Property(name: 'value')
  String value = null;
  //enum valueEnum {  current,  canceled,  stopped,  payment_failed,  suspended,  };
  SubscriptionStatusWrapper();

  @override
  String toString()  {
    return 'SubscriptionStatusWrapper[value=$value, ]';
  }

}

