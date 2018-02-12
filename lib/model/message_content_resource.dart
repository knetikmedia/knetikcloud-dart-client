part of swagger.api;


@Entity()
class MessageContentResource {
  /* The content of the email */
  @Property(name: 'email')
  String email = null;
  
/* The content of the mobile app push notification */
  @Property(name: 'push')
  String push = null;
  
/* The content of the sms */
  @Property(name: 'sms')
  String sms = null;
  
/* The content of the templated email */
  @Property(name: 'templated_email')
  TemplatedEmail templatedEmail = null;
  
/* The content of the websocket message */
  @Property(name: 'websocket')
  Object websocket = null;
  
  MessageContentResource();

  @override
  String toString()  {
    return 'MessageContentResource[email=$email, push=$push, sms=$sms, templatedEmail=$templatedEmail, websocket=$websocket, ]';
  }

}

