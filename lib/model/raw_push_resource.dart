part of swagger.api;


@Entity()
class RawPushResource {
  /* A list of user ids to send the message to. */
  @Property(name: 'recipients')
  List<int> recipients = [];
  
/* The body of the outgoing message. */
  @Property(name: 'text')
  String text = null;
  
  RawPushResource();

  @override
  String toString()  {
    return 'RawPushResource[recipients=$recipients, text=$text, ]';
  }

}

