part of swagger.api;


@Entity()
class GlobalCheckAndIncrementResource {
  
  @Property(name: 'check_value_resource')
  ExpressionResource checkValueResource = null;
  

  @Property(name: 'global_resource')
  ExpressionResource globalResource = null;
  

  @Property(name: 'type')
  String type = null;
  
  GlobalCheckAndIncrementResource();

  @override
  String toString()  {
    return 'GlobalCheckAndIncrementResource[checkValueResource=$checkValueResource, globalResource=$globalResource, type=$type, ]';
  }

}

