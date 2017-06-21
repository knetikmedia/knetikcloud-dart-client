part of swagger.api;


@Entity()
class DateOperationResource {
  
  @Property(name: 'args')
  List<ExpressionResource> args = [];
  

  @Property(name: 'op')
  String op = null;
  

  @Property(name: 'type')
  String type = null;
  
  DateOperationResource();

  @override
  String toString()  {
    return 'DateOperationResource[args=$args, op=$op, type=$type, ]';
  }

}

