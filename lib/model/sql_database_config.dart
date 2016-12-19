part of swagger.api;


@Entity()
class SqlDatabaseConfig {
  
  @Property(name: 'connection_pool_size')
  int connectionPoolSize = null;
  

  @Property(name: 'connection_string')
  String connectionString = null;
  

  @Property(name: 'db_name')
  String dbName = null;
  

  @Property(name: 'hostname')
  String hostname = null;
  

  @Property(name: 'password')
  String password = null;
  

  @Property(name: 'port')
  int port = null;
  

  @Property(name: 'username')
  String username = null;
  
  SqlDatabaseConfig();

  @override
  String toString()  {
    return 'SqlDatabaseConfig[connectionPoolSize=$connectionPoolSize, connectionString=$connectionString, dbName=$dbName, hostname=$hostname, password=$password, port=$port, username=$username, ]';
  }

}

