part of swagger.api;


@Entity()
class Country {
  
  @Property(name: 'id')
  int id = null;
  

  @Property(name: 'iso2')
  String iso2 = null;
  

  @Property(name: 'iso3')
  String iso3 = null;
  

  @Property(name: 'name')
  String name = null;
  
  Country();

  @override
  String toString()  {
    return 'Country[id=$id, iso2=$iso2, iso3=$iso3, name=$name, ]';
  }

}

