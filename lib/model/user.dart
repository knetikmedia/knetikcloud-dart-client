part of swagger.api;


@Entity()
class User {
  
  @Property(name: 'additional_properties')
  Map<String, Property> additionalProperties = {};
  

  @Property(name: 'address')
  String address = null;
  

  @Property(name: 'address2')
  String address2 = null;
  

  @Property(name: 'affiliate')
  Affiliate affiliate = null;
  

  @Property(name: 'avatar_url')
  String avatarUrl = null;
  

  @Property(name: 'city')
  String city = null;
  

  @Property(name: 'country')
  Country country = null;
  

  @Property(name: 'currency')
  Currency currency = null;
  

  @Property(name: 'date_created')
  int dateCreated = null;
  

  @Property(name: 'date_of_birth')
  int dateOfBirth = null;
  

  @Property(name: 'date_updated')
  int dateUpdated = null;
  

  @Property(name: 'description')
  String description = null;
  

  @Property(name: 'display_name')
  String displayName = null;
  

  @Property(name: 'email')
  String email = null;
  

  @Property(name: 'first_name')
  String firstName = null;
  

  @Property(name: 'fullname')
  String fullname = null;
  

  @Property(name: 'gender')
  String gender = null;
  

  @Property(name: 'guest')
  bool guest = null;
  

  @Property(name: 'id')
  int id = null;
  

  @Property(name: 'invite_token')
  String inviteToken = null;
  

  @Property(name: 'lang')
  Language lang = null;
  

  @Property(name: 'last_activity')
  int lastActivity = null;
  

  @Property(name: 'last_login')
  int lastLogin = null;
  

  @Property(name: 'last_name')
  String lastName = null;
  

  @Property(name: 'lockout_attempts')
  int lockoutAttempts = null;
  

  @Property(name: 'lockout_date')
  int lockoutDate = null;
  

  @Property(name: 'mobile_number')
  String mobileNumber = null;
  

  @Property(name: 'old_id')
  int oldId = null;
  

  @Property(name: 'password')
  String password = null;
  

  @Property(name: 'postal_code')
  String postalCode = null;
  

  @Property(name: 'properties_string')
  String propertiesString = null;
  

  @Property(name: 'roles')
  List<Role> roles = [];
  

  @Property(name: 'state')
  String state = null;
  

  @Property(name: 'status')
  String status = null;
  

  @Property(name: 'template')
  String template = null;
  

  @Property(name: 'timezone')
  Timezone timezone = null;
  

  @Property(name: 'token')
  String token = null;
  

  @Property(name: 'type_hint')
  String typeHint = null;
  

  @Property(name: 'username')
  String username = null;
  
  User();

  @override
  String toString()  {
    return 'User[additionalProperties=$additionalProperties, address=$address, address2=$address2, affiliate=$affiliate, avatarUrl=$avatarUrl, city=$city, country=$country, currency=$currency, dateCreated=$dateCreated, dateOfBirth=$dateOfBirth, dateUpdated=$dateUpdated, description=$description, displayName=$displayName, email=$email, firstName=$firstName, fullname=$fullname, gender=$gender, guest=$guest, id=$id, inviteToken=$inviteToken, lang=$lang, lastActivity=$lastActivity, lastLogin=$lastLogin, lastName=$lastName, lockoutAttempts=$lockoutAttempts, lockoutDate=$lockoutDate, mobileNumber=$mobileNumber, oldId=$oldId, password=$password, postalCode=$postalCode, propertiesString=$propertiesString, roles=$roles, state=$state, status=$status, template=$template, timezone=$timezone, token=$token, typeHint=$typeHint, username=$username, ]';
  }

}

