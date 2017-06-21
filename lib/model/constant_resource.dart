part of swagger.api;


@Entity()
class ConstantResource {
  
  @Property(name: 'type')
  String type = null;
  

  @Property(name: 'value')
  Object value = null;
  

  @Property(name: 'value_type')
  String valueType = null;
  
  ConstantResource();

  @override
  String toString()  {
    return 'ConstantResource[type=$type, value=$value, valueType=$valueType, ]';
  }

}

