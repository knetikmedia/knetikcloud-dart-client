part of swagger.api;


@Entity()
class ArgumentResource {
  
  @Property(name: 'name')
  String name = null;
  

  @Property(name: 'type')
  String type = null;
  
  ArgumentResource();

  @override
  String toString()  {
    return 'ArgumentResource[name=$name, type=$type, ]';
  }

}

