part of swagger.api;


@Entity()
class AddressResource {
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
  
/* The postal code */
  @Property(name: 'postal_code')
  String postalCode = null;
  
/* The code for the state. Required if the country has states/provinces/equivalent */
  @Property(name: 'state_code')
  String stateCode = null;
  
  AddressResource();

  @override
  String toString()  {
    return 'AddressResource[address1=$address1, address2=$address2, city=$city, countryCode=$countryCode, postalCode=$postalCode, stateCode=$stateCode, ]';
  }

}

