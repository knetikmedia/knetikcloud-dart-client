part of swagger.api;


@Entity()
class MessageTemplateResource {
  /* The content of the template. See Apache Velocity documentation for formatting */
  @Property(name: 'content')
  String content = null;
  
/* The id of the template. Cannot be changed after creation. default: auto generated */
  @Property(name: 'id')
  String id = null;
  
/* The name of the template */
  @Property(name: 'name')
  String name = null;
  
/* A list of tags for search purposes. Will be converted to lower case */
  @Property(name: 'tags')
  List<String> tags = [];
  
  MessageTemplateResource();

  @override
  String toString()  {
    return 'MessageTemplateResource[content=$content, id=$id, name=$name, tags=$tags, ]';
  }

}

