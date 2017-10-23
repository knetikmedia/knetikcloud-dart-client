part of swagger.api;


@Entity()
class TypeHintLookupResource {
  
  @Property(name: 'definition')
  String definition = null;
  

  @Property(name: 'lookup_key')
  ExpressionResource lookupKey = null;
  

  @Property(name: 'required_key_type')
  String requiredKeyType = null;
  

  @Property(name: 'type')
  String type = null;
  

  @Property(name: 'value_type')
  String valueType = null;
  
  TypeHintLookupResource();

  @override
  String toString()  {
    return 'TypeHintLookupResource[definition=$definition, lookupKey=$lookupKey, requiredKeyType=$requiredKeyType, type=$type, valueType=$valueType, ]';
  }

}

