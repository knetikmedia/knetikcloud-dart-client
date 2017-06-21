part of swagger.api;


@Entity()
class UsernameLookupResource {
  
  @Property(name: 'lookup_key')
  ExpressionResource lookupKey = null;
  

  @Property(name: 'type')
  String type = null;
  

  @Property(name: 'value_type')
  String valueType = null;
  
  UsernameLookupResource();

  @override
  String toString()  {
    return 'UsernameLookupResource[lookupKey=$lookupKey, type=$type, valueType=$valueType, ]';
  }

}

