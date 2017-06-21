part of swagger.api;


@Entity()
class ConfigLookupResource {
  
  @Property(name: 'lookup_key')
  ExpressionResource lookupKey = null;
  

  @Property(name: 'type')
  String type = null;
  

  @Property(name: 'value_type')
  String valueType = null;
  
  ConfigLookupResource();

  @override
  String toString()  {
    return 'ConfigLookupResource[lookupKey=$lookupKey, type=$type, valueType=$valueType, ]';
  }

}

