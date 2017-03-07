part of swagger.api;


@Entity()
class Discount {
  
  @Property(name: 'description')
  String description = null;
  

  @Property(name: 'name')
  String name = null;
  

  @Property(name: 'sku')
  String sku = null;
  

  @Property(name: 'value')
  double value = null;
  
  Discount();

  @override
  String toString()  {
    return 'Discount[description=$description, name=$name, sku=$sku, value=$value, ]';
  }

}

