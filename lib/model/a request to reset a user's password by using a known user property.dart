part of swagger.api;


@Entity()
class A request to reset a user&#39;s password by using a known user property {
  /* The user's email address */
  @Property(name: 'email')
  String email = null;
  
/* The user's mobile phone number */
  @Property(name: 'mobile_number')
  String mobileNumber = null;
  
/* The user's username */
  @Property(name: 'username')
  String username = null;
  
  A request to reset a user&#39;s password by using a known user property();

  @override
  String toString()  {
    return 'A request to reset a user&#39;s password by using a known user property[email=$email, mobileNumber=$mobileNumber, username=$username, ]';
  }

}

