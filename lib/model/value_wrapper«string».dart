part of swagger.api;


@Entity()
class ValueWrapper«string» {
  
  @Property(name: 'value')
  String value = null;
  //enum valueEnum {  pending,  read,  hidden,  };
  ValueWrapper«string»();

  @override
  String toString()  {
    return 'ValueWrapper«string»[value=$value, ]';
  }

}

