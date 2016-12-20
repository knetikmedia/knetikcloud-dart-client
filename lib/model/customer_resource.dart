part of swagger.api;


@Entity()
class CustomerResource {
  
  @Property(name: 'aliases')
  String aliases = null;
  

  @Property(name: 'database')
  DatabaseConfig database = null;
  

  @Property(name: 'name')
  String name = null;
  
  CustomerResource();

  @override
  String toString()  {
    return 'CustomerResource[aliases=$aliases, database=$database, name=$name, ]';
  }

}

