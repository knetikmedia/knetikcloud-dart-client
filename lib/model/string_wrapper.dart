part of swagger.api;


@Entity()
class StringWrapper {
  
  @Property(name: 'value')
  String value = null;
  
  StringWrapper();

  @override
  String toString()  {
    return 'StringWrapper[value=$value, ]';
  }

}

