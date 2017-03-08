part of swagger.api;


@Entity()
class TemplateSMSResource {
  /* The phone number to attribute the outgoing message to. Optional if the config text.out_number is set. */
  @Property(name: 'from')
  String from = null;
  

  @Property(name: 'localizer')
  Localizer localizer = null;
  
/* A list of user ids to send the message to. */
  @Property(name: 'recipients')
  List<int> recipients = [];
  
/* The key for the template. */
  @Property(name: 'template_key')
  String templateKey = null;
  
/* A list of values to fill in the template. Order matters. */
  @Property(name: 'template_vars')
  List<String> templateVars = [];
  
  TemplateSMSResource();

  @override
  String toString()  {
    return 'TemplateSMSResource[from=$from, localizer=$localizer, recipients=$recipients, templateKey=$templateKey, templateVars=$templateVars, ]';
  }

}

