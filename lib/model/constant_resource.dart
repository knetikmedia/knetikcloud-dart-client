part of swagger.api;


@Entity()
class ConstantResource {
  
  @Property(name: 'definition')
  String definition = null;
  

  @Property(name: 'type')
  String type = null;
  

  @Property(name: 'value')
  Object value = null;
  

  @Property(name: 'value_type')
  String valueType = null;
  
  ConstantResource();

  @override
  String toString()  {
    return 'ConstantResource[definition=$definition, type=$type, value=$value, valueType=$valueType, ]';
  }

}

