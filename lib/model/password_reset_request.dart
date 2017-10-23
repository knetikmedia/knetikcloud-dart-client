part of swagger.api;


@Entity()
class PasswordResetRequest {
  /* The user's email address */
  @Property(name: 'email')
  String email = null;
  
/* The user's mobile phone number */
  @Property(name: 'mobile_number')
  String mobileNumber = null;
  
/* The user's username */
  @Property(name: 'username')
  String username = null;
  
  PasswordResetRequest();

  @override
  String toString()  {
    return 'PasswordResetRequest[email=$email, mobileNumber=$mobileNumber, username=$username, ]';
  }

}

