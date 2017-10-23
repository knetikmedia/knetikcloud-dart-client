part of swagger.api;


@Entity()
class TemplateSMSResource {
  /* The phone number to attribute the outgoing message to. Optional if the config text.out_number is set. */
  @Property(name: 'from')
  String from = null;
  
/* A list of user ids to send the message to. */
  @Property(name: 'recipients')
  List<int> recipients = [];
  
/* A mustache template */
  @Property(name: 'template')
  String template = null;
  
/* A map of values to fill in the template */
  @Property(name: 'template_vars')
  Object templateVars = null;
  
  TemplateSMSResource();

  @override
  String toString()  {
    return 'TemplateSMSResource[from=$from, recipients=$recipients, template=$template, templateVars=$templateVars, ]';
  }

}

