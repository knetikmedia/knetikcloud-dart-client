part of swagger.api;


@Entity()
class ValueWrapper«boolean» {
  
  @Property(name: 'value')
  bool value = null;
  
  ValueWrapper«boolean»();

  @override
  String toString()  {
    return 'ValueWrapper«boolean»[value=$value, ]';
  }

}

