part of swagger.api;


@Entity()
class PredicateResource {
  /* The arguments the operator apply to. See notes for details. */
  @Property(name: 'args')
  List<ExpressionResource> args = [];
  
/* The operator to be used in this predicate. See notes for details. */
  @Property(name: 'op')
  String op = null;
  

  @Property(name: 'type')
  String type = null;
  
  PredicateResource();

  @override
  String toString()  {
    return 'PredicateResource[args=$args, op=$op, type=$type, ]';
  }

}

