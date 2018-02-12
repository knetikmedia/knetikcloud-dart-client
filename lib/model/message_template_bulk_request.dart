part of swagger.api;


@Entity()
class MessageTemplateBulkRequest {
  /* The data to fill the templates with */
  @Property(name: 'data')
  Object data = null;
  
/* A list of message template ids */
  @Property(name: 'ids')
  List<String> ids = [];
  
  MessageTemplateBulkRequest();

  @override
  String toString()  {
    return 'MessageTemplateBulkRequest[data=$data, ids=$ids, ]';
  }

}

