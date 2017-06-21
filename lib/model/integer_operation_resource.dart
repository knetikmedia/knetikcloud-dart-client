part of swagger.api;


@Entity()
class IntegerOperationResource {
  
  @Property(name: 'args')
  List<ExpressionResource> args = [];
  

  @Property(name: 'op')
  String op = null;
  

  @Property(name: 'type')
  String type = null;
  
  IntegerOperationResource();

  @override
  String toString()  {
    return 'IntegerOperationResource[args=$args, op=$op, type=$type, ]';
  }

}

