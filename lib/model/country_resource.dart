part of swagger.api;


@Entity()
class CountryResource {
  /* The iso2 of the country */
  @Property(name: 'iso2')
  String iso2 = null;
  
/* The iso3 of the country */
  @Property(name: 'iso3')
  String iso3 = null;
  
/* The name of the country resource */
  @Property(name: 'name')
  String name = null;
  
  CountryResource();

  @override
  String toString()  {
    return 'CountryResource[iso2=$iso2, iso3=$iso3, name=$name, ]';
  }

}

