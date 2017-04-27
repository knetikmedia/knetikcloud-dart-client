part of swagger.api;


@Entity()
class CartShippingAddressRequest {
  /* The city of the user */
  @Property(name: 'city')
  String city = null;
  
/* The country code of the user */
  @Property(name: 'country_code_iso3')
  String countryCodeIso3 = null;
  
/* The email of the user */
  @Property(name: 'email')
  String email = null;
  
/* The first name of the user */
  @Property(name: 'first_name')
  String firstName = null;
  
/* The last name of the user */
  @Property(name: 'last_name')
  String lastName = null;
  

  @Property(name: 'name_prefix')
  String namePrefix = null;
  
/* The order notes the user */
  @Property(name: 'order_notes')
  String orderNotes = null;
  
/* The phone number of the user */
  @Property(name: 'phone_number')
  String phoneNumber = null;
  
/* The postal state code of the user */
  @Property(name: 'postal_state_code')
  String postalStateCode = null;
  
/* The shipping address of the user, first line */
  @Property(name: 'shipping_address_line1')
  String shippingAddressLine1 = null;
  
/* The shipping address of the user, second line */
  @Property(name: 'shipping_address_line2')
  String shippingAddressLine2 = null;
  
/* The zipcode of the user */
  @Property(name: 'zip')
  String zip = null;
  
  CartShippingAddressRequest();

  @override
  String toString()  {
    return 'CartShippingAddressRequest[city=$city, countryCodeIso3=$countryCodeIso3, email=$email, firstName=$firstName, lastName=$lastName, namePrefix=$namePrefix, orderNotes=$orderNotes, phoneNumber=$phoneNumber, postalStateCode=$postalStateCode, shippingAddressLine1=$shippingAddressLine1, shippingAddressLine2=$shippingAddressLine2, zip=$zip, ]';
  }

}

