part of swagger.api;


@Entity()
class TemplatePushResource {
  /* A list of user ids to send the message to. */
  @Property(name: 'recipients')
  List<int> recipients = [];
  
/* A mustache template */
  @Property(name: 'template')
  String template = null;
  
/* A map of values to fill in the template */
  @Property(name: 'template_vars')
  Object templateVars = null;
  
  TemplatePushResource();

  @override
  String toString()  {
    return 'TemplatePushResource[recipients=$recipients, template=$template, templateVars=$templateVars, ]';
  }

}

