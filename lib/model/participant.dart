part of swagger.api;


@Entity()
class Participant {
  /* Whether this user is the 'host' of the occurrence and has increased access to settings/etc (default: false) */
  @Property(name: 'host')
  bool host = null;
  
/* The current status of the user in the occurrence (default: present) */
  @Property(name: 'status')
  String status = null;
  //enum statusEnum {  present,  ready,  left,  surrendered,  disconnected,  };
/* The user */
  @Property(name: 'user')
  IdRef user = null;
  
  Participant();

  @override
  String toString()  {
    return 'Participant[host=$host, status=$status, user=$user, ]';
  }

}

