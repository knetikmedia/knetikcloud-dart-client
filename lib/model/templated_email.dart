part of swagger.api;


@Entity()
class TemplatedEmail {
  /* The external template ID used by the email provider */
  @Property(name: 'external_template_id')
  String externalTemplateId = null;
  
/* The map of data used by the template */
  @Property(name: 'template_data')
  Object templateData = null;
  
  TemplatedEmail();

  @override
  String toString()  {
    return 'TemplatedEmail[externalTemplateId=$externalTemplateId, templateData=$templateData, ]';
  }

}

