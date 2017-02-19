part of swagger.api;


@Entity()
class PredicateOperation {
  
  @Property(name: 'args')
  List<Expression«object»> args = [];
  

  @Property(name: 'operator')
  ModelOperator _operator = null;
  
  PredicateOperation();

  @override
  String toString()  {
    return 'PredicateOperation[args=$args, _operator=$_operator, ]';
  }

}

