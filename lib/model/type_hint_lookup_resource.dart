part of swagger.api;


@Entity()
class TypeHintLookupResource {
  
  @Property(name: 'lookup_key')
  ExpressionResource lookupKey = null;
  

  @Property(name: 'type')
  String type = null;
  

  @Property(name: 'value_type')
  String valueType = null;
  
  TypeHintLookupResource();

  @override
  String toString()  {
    return 'TypeHintLookupResource[lookupKey=$lookupKey, type=$type, valueType=$valueType, ]';
  }

}

