part of swagger.api;


@Entity()
class GlobalResource {
  
  @Property(name: 'definition')
  String definition = null;
  

  @Property(name: 'global_def_id')
  String globalDefId = null;
  

  @Property(name: 'scopes')
  Map<String, ExpressionResource> scopes = {};
  

  @Property(name: 'type')
  String type = null;
  
  GlobalResource();

  @override
  String toString()  {
    return 'GlobalResource[definition=$definition, globalDefId=$globalDefId, scopes=$scopes, type=$type, ]';
  }

}

