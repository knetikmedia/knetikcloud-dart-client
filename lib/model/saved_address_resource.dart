part of swagger.api;


@Entity()
class SavedAddressResource {
  /* The first line of the address */
  @Property(name: 'address1')
  String address1 = null;
  
/* A second line of the address */
  @Property(name: 'address2')
  String address2 = null;
  
/* The city */
  @Property(name: 'city')
  String city = null;
  
/* The iso3 code for the country */
  @Property(name: 'country_code')
  String countryCode = null;
  

  @Property(name: 'default')
  bool _default = null;
  
/* The first name of the user */
  @Property(name: 'first_name')
  String firstName = null;
  
/* The id of the address */
  @Property(name: 'id')
  int id = null;
  
/* The last name of the user */
  @Property(name: 'last_name')
  String lastName = null;
  
/* The name of the address */
  @Property(name: 'name')
  String name = null;
  
/* The first phone number of the user */
  @Property(name: 'phone1')
  String phone1 = null;
  
/* The second phone number of the user */
  @Property(name: 'phone2')
  String phone2 = null;
  
/* The postal code */
  @Property(name: 'postal_code')
  String postalCode = null;
  
/* The code for the state. Required if the country has states/provinces/equivalent */
  @Property(name: 'state_code')
  String stateCode = null;
  
  SavedAddressResource();

  @override
  String toString()  {
    return 'SavedAddressResource[address1=$address1, address2=$address2, city=$city, countryCode=$countryCode, _default=$_default, firstName=$firstName, id=$id, lastName=$lastName, name=$name, phone1=$phone1, phone2=$phone2, postalCode=$postalCode, stateCode=$stateCode, ]';
  }

}

