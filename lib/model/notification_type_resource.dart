part of swagger.api;


@Entity()
class NotificationTypeResource {
  /* The date the type was created, as a unix timestamp in seconds */
  @Property(name: 'created_date')
  int createdDate = null;
  
/* Whether the email body should be resolved. If true, the external email delivery system will be expected to handle the templating (Mandrill/Mailchimp). default: false */
  @Property(name: 'email_body_template_external')
  bool emailBodyTemplateExternal = null;
  
/* The id of a message template to resolve the email body. If null, no websocket message wil be sent */
  @Property(name: 'email_body_template_id')
  String emailBodyTemplateId = null;
  
/* The id of a message template to resolve the email subject. If null, no websocket message wil be sent */
  @Property(name: 'email_subject_template_id')
  String emailSubjectTemplateId = null;
  
/* The id of the notification type. Default: random */
  @Property(name: 'id')
  String id = null;
  
/* The name of the notification type */
  @Property(name: 'name')
  String name = null;
  
/* The id of a message template to resolve the SMS message. If null, no sms message wil be sent */
  @Property(name: 'sms_template_id')
  String smsTemplateId = null;
  
/* The date the type was last updated, as a unix timestamp in seconds */
  @Property(name: 'updated_date')
  int updatedDate = null;
  
  NotificationTypeResource();

  @override
  String toString()  {
    return 'NotificationTypeResource[createdDate=$createdDate, emailBodyTemplateExternal=$emailBodyTemplateExternal, emailBodyTemplateId=$emailBodyTemplateId, emailSubjectTemplateId=$emailSubjectTemplateId, id=$id, name=$name, smsTemplateId=$smsTemplateId, updatedDate=$updatedDate, ]';
  }

}

