part of swagger.api;


@Entity()
class RawSMSResource {
  /* The phone number to attribute the outgoing message to. Optional if the config text.out_number is set. */
  @Property(name: 'from')
  String from = null;
  
/* A list of user ids to send the message to. */
  @Property(name: 'recipients')
  List<int> recipients = [];
  
/* The body of the outgoing text message. */
  @Property(name: 'text')
  String text = null;
  
  RawSMSResource();

  @override
  String toString()  {
    return 'RawSMSResource[from=$from, recipients=$recipients, text=$text, ]';
  }

}

