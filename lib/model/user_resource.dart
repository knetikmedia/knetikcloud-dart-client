part of swagger.api;


@Entity()
class UserResource {
  /* A map of additional properties, keyed on the property name (private). Must match the names and types defined in the template for this user type, or be an extra not from the template */
  @Property(name: 'additional_properties')
  Map<String, Property> additionalProperties = {};
  
/* The first line of the user's address (private) */
  @Property(name: 'address')
  String address = null;
  
/* The second line of user's address (private) */
  @Property(name: 'address2')
  String address2 = null;
  
/* The url of the user's avatar image */
  @Property(name: 'avatar_url')
  String avatarUrl = null;
  
/* Relationships where this user is the parent. Read-Only, manage through separate endpoints */
  @Property(name: 'children')
  List<UserRelationshipReferenceResource> children = [];
  
/* The user's city (private) */
  @Property(name: 'city')
  String city = null;
  
/* The ISO3 code for the country from the user's address (private). Will be filled in based on GeoIP country at registration if not provided. */
  @Property(name: 'country_code')
  String countryCode = null;
  
/* The code for the user's real money currency (private) */
  @Property(name: 'currency_code')
  String currencyCode = null;
  
/* The user's date of birth (private) as a unix timestamp */
  @Property(name: 'date_of_birth')
  int dateOfBirth = null;
  
/* The user's self description (private) */
  @Property(name: 'description')
  String description = null;
  
/* The chosen display name of the user, defaults to username if not present */
  @Property(name: 'display_name')
  String displayName = null;
  
/* The user's email address (private). May be required and/or unique depending on system configuration (both on by default). Must match standard email requirements if provided (RFC 2822) */
  @Property(name: 'email')
  String email = null;
  
/* The user's first name (private) */
  @Property(name: 'first_name')
  String firstName = null;
  
/* The user's full name (private) */
  @Property(name: 'fullname')
  String fullname = null;
  
/* The user's gender (private) */
  @Property(name: 'gender')
  String gender = null;
  
/* The id of the user */
  @Property(name: 'id')
  int id = null;
  
/* The ISO3 code for the user's currency (private) */
  @Property(name: 'language_code')
  String languageCode = null;
  
/* The user's last name (private) */
  @Property(name: 'last_name')
  String lastName = null;
  
/* The date the user's info was last updated as a unix timestamp */
  @Property(name: 'last_updated')
  int lastUpdated = null;
  
/* The user's date of registration as a unix timestamp */
  @Property(name: 'member_since')
  int memberSince = null;
  
/* The user's mobile phone number (private) */
  @Property(name: 'mobile_number')
  String mobileNumber = null;
  
/* Relationships where this user is the child. Read-Only, manage through separate endpoints */
  @Property(name: 'parents')
  List<UserRelationshipReferenceResource> parents = [];
  
/* The plain text password for the new user account. Required for registration; ignored on profile update.  Use password specific endpoints for editing */
  @Property(name: 'password')
  String password = null;
  
/* The user's postal code (private) */
  @Property(name: 'postal_code')
  String postalCode = null;
  
/* The user's state (private) */
  @Property(name: 'state')
  String state = null;
  
/* Tags on the user. Can only be set by admin. Max length per tag is 64 characters */
  @Property(name: 'tags')
  List<String> tags = [];
  
/* A user template this user is validated against (private). May be null and no validation of properties will be done */
  @Property(name: 'template')
  String template = null;
  
/* The code for the user's timezone (private) */
  @Property(name: 'timezone_code')
  String timezoneCode = null;
  
/* The login username for the user (private). May be set to match email if system does not require usernames separately. */
  @Property(name: 'username')
  String username = null;
  
  UserResource();

  @override
  String toString()  {
    return 'UserResource[additionalProperties=$additionalProperties, address=$address, address2=$address2, avatarUrl=$avatarUrl, children=$children, city=$city, countryCode=$countryCode, currencyCode=$currencyCode, dateOfBirth=$dateOfBirth, description=$description, displayName=$displayName, email=$email, firstName=$firstName, fullname=$fullname, gender=$gender, id=$id, languageCode=$languageCode, lastName=$lastName, lastUpdated=$lastUpdated, memberSince=$memberSince, mobileNumber=$mobileNumber, parents=$parents, password=$password, postalCode=$postalCode, state=$state, tags=$tags, template=$template, timezoneCode=$timezoneCode, username=$username, ]';
  }

}

