part of swagger.api;


@Entity()
class VendorEmailLookupResource {
  
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
  
  VendorEmailLookupResource();

  @override
  String toString()  {
    return 'VendorEmailLookupResource[definition=$definition, lookupKey=$lookupKey, requiredKeyType=$requiredKeyType, type=$type, valueType=$valueType, ]';
  }

}

