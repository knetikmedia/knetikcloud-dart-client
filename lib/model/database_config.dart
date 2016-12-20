part of swagger.api;


@Entity()
class DatabaseConfig {
  
  @Property(name: 'mongo')
  MongoDatabaseConfig mongo = null;
  

  @Property(name: 'sql')
  SqlDatabaseConfig sql = null;
  
  DatabaseConfig();

  @override
  String toString()  {
    return 'DatabaseConfig[mongo=$mongo, sql=$sql, ]';
  }

}

