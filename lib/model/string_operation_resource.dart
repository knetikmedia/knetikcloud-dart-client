part of swagger.api;


@Entity()
class StringOperationResource {
  
  @Property(name: 'args')
  List<ExpressionResource> args = [];
  

  @Property(name: 'op')
  String op = null;
  

  @Property(name: 'type')
  String type = null;
  
  StringOperationResource();

  @override
  String toString()  {
    return 'StringOperationResource[args=$args, op=$op, type=$type, ]';
  }

}

