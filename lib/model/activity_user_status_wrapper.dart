part of swagger.api;


@Entity()
class ActivityUserStatusWrapper {
  
  @Property(name: 'value')
  String value = null;
  //enum valueEnum {  present,  ready,  left,  surrendered,  disconnected,  };
  ActivityUserStatusWrapper();

  @override
  String toString()  {
    return 'ActivityUserStatusWrapper[value=$value, ]';
  }

}

