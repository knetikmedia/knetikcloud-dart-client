part of swagger.api;


@Entity()
class StateResource {
  /* The code of the state */
  @Property(name: 'code')
  String code = null;
  
/* The iso3 of the country this state is in */
  @Property(name: 'country_code_iso3')
  String countryCodeIso3 = null;
  
/* The unique ID for the state */
  @Property(name: 'id')
  int id = null;
  
/* The name of the state */
  @Property(name: 'name')
  String name = null;
  
  StateResource();

  @override
  String toString()  {
    return 'StateResource[code=$code, countryCodeIso3=$countryCodeIso3, id=$id, name=$name, ]';
  }

}

