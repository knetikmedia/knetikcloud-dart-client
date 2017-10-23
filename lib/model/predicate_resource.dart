part of swagger.api;


@Entity()
class PredicateResource {
  /* The arguments the operator apply to. See notes for details. */
  @Property(name: 'args')
  List<ExpressionResource> args = [];
  

  @Property(name: 'definition')
  String definition = null;
  
/* The operator to be used in this predicate. See notes for details. */
  @Property(name: 'op')
  String op = null;
  

  @Property(name: 'return_type')
  String returnType = null;
  
/* The operators supported by this expression */
  @Property(name: 'supported_operators')
  List<OperationDefinitionResource> supportedOperators = [];
  

  @Property(name: 'type')
  String type = null;
  
  PredicateResource();

  @override
  String toString()  {
    return 'PredicateResource[args=$args, definition=$definition, op=$op, returnType=$returnType, supportedOperators=$supportedOperators, type=$type, ]';
  }

}

