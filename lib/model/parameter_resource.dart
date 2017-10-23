part of swagger.api;


@Entity()
class ParameterResource {
  
  @Property(name: 'definition')
  String definition = null;
  

  @Property(name: 'of')
  String of = null;
  

  @Property(name: 'type')
  String type = null;
  

  @Property(name: 'value')
  Object value = null;
  
  ParameterResource();

  @override
  String toString()  {
    return 'ParameterResource[definition=$definition, of=$of, type=$type, value=$value, ]';
  }

}

