part of swagger.api;


@Entity()
class RawEmailResource {
  /* The body of the outgoing message. */
  @Property(name: 'body')
  String body = null;
  
/* Address to attribute the outgoing message to. Optional if the config email.out_address is set. */
  @Property(name: 'from')
  String from = null;
  
/* Whether the body is to be treated as html. Default false. */
  @Property(name: 'html')
  bool html = null;
  
/* A list of user ids to send the message to. */
  @Property(name: 'recipients')
  List<int> recipients = [];
  
/* The subject of the outgoing message. */
  @Property(name: 'subject')
  String subject = null;
  
  RawEmailResource();

  @override
  String toString()  {
    return 'RawEmailResource[body=$body, from=$from, html=$html, recipients=$recipients, subject=$subject, ]';
  }

}

