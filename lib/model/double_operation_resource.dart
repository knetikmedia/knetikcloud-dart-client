part of swagger.api;


@Entity()
class DoubleOperationResource {
  
  @Property(name: 'args')
  List<ExpressionResource> args = [];
  

  @Property(name: 'op')
  String op = null;
  

  @Property(name: 'type')
  String type = null;
  
  DoubleOperationResource();

  @override
  String toString()  {
    return 'DoubleOperationResource[args=$args, op=$op, type=$type, ]';
  }

}

