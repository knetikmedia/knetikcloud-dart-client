part of swagger.api;


@Entity()
class CityResource {
  /* The iso3 of the country this city is in */
  @Property(name: 'country_code_iso3')
  String countryCodeIso3 = null;
  
/* The unique ID for this city */
  @Property(name: 'id')
  int id = null;
  
/* The name of the city */
  @Property(name: 'name')
  String name = null;
  
/* The code for the state this city is in */
  @Property(name: 'state_code')
  String stateCode = null;
  
  CityResource();

  @override
  String toString()  {
    return 'CityResource[countryCodeIso3=$countryCodeIso3, id=$id, name=$name, stateCode=$stateCode, ]';
  }

}

