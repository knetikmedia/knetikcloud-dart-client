part of swagger.api;


@Entity()
class LookupResource {
  
  @Property(name: 'lookup_key')
  ExpressionResource lookupKey = null;
  

  @Property(name: 'type')
  String type = null;
  

  @Property(name: 'value_type')
  String valueType = null;
  
  LookupResource();

  @override
  String toString()  {
    return 'LookupResource[lookupKey=$lookupKey, type=$type, valueType=$valueType, ]';
  }

}

