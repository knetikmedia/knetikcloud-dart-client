part of swagger.api;


@Entity()
class ExpressionResource {
  
  @Property(name: 'type')
  String type = null;
  
  ExpressionResource();

  @override
  String toString()  {
    return 'ExpressionResource[type=$type, ]';
  }

}

