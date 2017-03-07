part of swagger.api;


@Entity()
class NewPasswordRequest {
  /* The new password in plain text */
  @Property(name: 'password')
  String password = null;
  
/* The secret provided after the password reset */
  @Property(name: 'secret')
  String secret = null;
  
  NewPasswordRequest();

  @override
  String toString()  {
    return 'NewPasswordRequest[password=$password, secret=$secret, ]';
  }

}

