part of swagger.api;


@Entity()
class ExpressionResource {
  
  @Property(name: 'definition')
  String definition = null;
  

  @Property(name: 'type')
  String type = null;
  
  ExpressionResource();

  @override
  String toString()  {
    return 'ExpressionResource[definition=$definition, type=$type, ]';
  }

}

