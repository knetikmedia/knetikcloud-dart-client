part of swagger.api;


@Entity()
class OperationDefinitionResource {
  
  @Property(name: 'arguments')
  List<ArgumentResource> arguments = [];
  

  @Property(name: 'description')
  String description = null;
  

  @Property(name: 'operator')
  ModelOperator _operator = null;
  

  @Property(name: 'return_type')
  String returnType = null;
  

  @Property(name: 'template')
  String template = null;
  
  OperationDefinitionResource();

  @override
  String toString()  {
    return 'OperationDefinitionResource[arguments=$arguments, description=$description, _operator=$_operator, returnType=$returnType, template=$template, ]';
  }

}

