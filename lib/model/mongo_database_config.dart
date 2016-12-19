part of swagger.api;


@Entity()
class MongoDatabaseConfig {
  
  @Property(name: 'db_name')
  String dbName = null;
  

  @Property(name: 'options')
  String options = null;
  

  @Property(name: 'password')
  String password = null;
  

  @Property(name: 'servers')
  String servers = null;
  

  @Property(name: 'username')
  String username = null;
  
  MongoDatabaseConfig();

  @override
  String toString()  {
    return 'MongoDatabaseConfig[dbName=$dbName, options=$options, password=$password, servers=$servers, username=$username, ]';
  }

}

