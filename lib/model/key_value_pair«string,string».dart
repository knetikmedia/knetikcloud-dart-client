part of swagger.api;


@Entity()
class KeyValuePair«string,string» {
  
  @Property(name: 'key')
  String key = null;
  

  @Property(name: 'value')
  String value = null;
  
  KeyValuePair«string,string»();

  @override
  String toString()  {
    return 'KeyValuePair«string,string»[key=$key, value=$value, ]';
  }

}

