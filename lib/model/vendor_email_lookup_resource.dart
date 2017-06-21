part of swagger.api;


@Entity()
class VendorEmailLookupResource {
  
  @Property(name: 'lookup_key')
  ExpressionResource lookupKey = null;
  

  @Property(name: 'type')
  String type = null;
  

  @Property(name: 'value_type')
  String valueType = null;
  
  VendorEmailLookupResource();

  @override
  String toString()  {
    return 'VendorEmailLookupResource[lookupKey=$lookupKey, type=$type, valueType=$valueType, ]';
  }

}

