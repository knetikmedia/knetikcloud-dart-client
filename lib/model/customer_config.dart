part of swagger.api;


@Entity()
class CustomerConfig {
  
  @Property(name: 'aliases')
  String aliases = null;
  

  @Property(name: 'database')
  DatabaseConfig database = null;
  

  @Property(name: 'name')
  String name = null;
  

  @Property(name: 'upload_bucket')
  String uploadBucket = null;
  
  CustomerConfig();

  @override
  String toString()  {
    return 'CustomerConfig[aliases=$aliases, database=$database, name=$name, uploadBucket=$uploadBucket, ]';
  }

}

