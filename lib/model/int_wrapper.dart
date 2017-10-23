part of swagger.api;


@Entity()
class IntWrapper {
  
  @Property(name: 'value')
  int value = null;
  
  IntWrapper();

  @override
  String toString()  {
    return 'IntWrapper[value=$value, ]';
  }

}

