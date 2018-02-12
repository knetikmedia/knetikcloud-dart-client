part of swagger.api;


@Entity()
class TemplateEmailResource {
  /* Address to attribute the outgoing message to. Optional if the config email.out_address is set. */
  @Property(name: 'from')
  String from = null;
  
/* A list of user ids to send the message to. */
  @Property(name: 'recipients')
  List<int> recipients = [];
  
/* The subject for email */
  @Property(name: 'subject')
  String subject = null;
  
/* The key for the template */
  @Property(name: 'template_key')
  String templateKey = null;
  
/* A list of variables to fill in the template */
  @Property(name: 'template_vars')
  List<KeyValuePair«string,string»> templateVars = [];
  
  TemplateEmailResource();

  @override
  String toString()  {
    return 'TemplateEmailResource[from=$from, recipients=$recipients, subject=$subject, templateKey=$templateKey, templateVars=$templateVars, ]';
  }

}

