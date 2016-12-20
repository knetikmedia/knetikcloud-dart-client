part of swagger.api;


@Entity()
class Maintenance {
  /* Whether access to the system has been locked */
  @Property(name: 'access_locked')
  bool accessLocked = null;
  
/* A simple object of any schema for client side use and processing */
  @Property(name: 'details')
  Object details = null;
  
/* User displayable message about the maintenance */
  @Property(name: 'message')
  String message = null;
  
  Maintenance();

  @override
  String toString()  {
    return 'Maintenance[accessLocked=$accessLocked, details=$details, message=$message, ]';
  }

}

