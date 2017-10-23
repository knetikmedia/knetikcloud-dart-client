part of swagger.api;


@Entity()
class CustomerConfig {
  
  @Property(name: 'aliases')
  String aliases = null;
  

  @Property(name: 'database')
  DatabaseConfig database = null;
  

  @Property(name: 'io')
  IOConfig io = null;
  

  @Property(name: 'name')
  String name = null;
  

  @Property(name: 's3_config')
  S3Config s3Config = null;
  
  CustomerConfig();

  @override
  String toString()  {
    return 'CustomerConfig[aliases=$aliases, database=$database, io=$io, name=$name, s3Config=$s3Config, ]';
  }

}

