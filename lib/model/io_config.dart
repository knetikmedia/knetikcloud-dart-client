part of swagger.api;


@Entity()
class IOConfig {
  
  @Property(name: 'customer')
  String customer = null;
  

  @Property(name: 'enabled')
  bool enabled = null;
  

  @Property(name: 'environment')
  String environment = null;
  

  @Property(name: 'product')
  String product = null;
  
  IOConfig();

  @override
  String toString()  {
    return 'IOConfig[customer=$customer, enabled=$enabled, environment=$environment, product=$product, ]';
  }

}

