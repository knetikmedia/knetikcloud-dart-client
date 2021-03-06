part of swagger.api;


@Entity()
class PollResource {
  /* Whether the poll is active */
  @Property(name: 'active')
  bool active = null;
  
/* A map of additional properties, keyed on the property name.  Must match the names and types defined in the template for this item type */
  @Property(name: 'additional_properties')
  Map<String, Property> additionalProperties = {};
  
/* The answers to the poll */
  @Property(name: 'answers')
  List<PollAnswerResource> answers = [];
  
/* The category for the poll */
  @Property(name: 'category')
  NestedCategory category = null;
  
/* The date/time this resource was created in seconds since unix epoch */
  @Property(name: 'created_date')
  int createdDate = null;
  
/* The id of the poll */
  @Property(name: 'id')
  String id = null;
  
/* The tags for the poll */
  @Property(name: 'tags')
  List<String> tags = [];
  
/* A poll template this poll is validated against (private). May be null and no validation of additional_properties will be done */
  @Property(name: 'template')
  String template = null;
  
/* The text of the poll */
  @Property(name: 'text')
  String text = null;
  
/* The media type of the poll */
  @Property(name: 'type')
  String type = null;
  //enum typeEnum {  TEXT,  IMAGE,  VIDEO,  AUDIO,  };
/* The date/time this resource was last updated in seconds since unix epoch */
  @Property(name: 'updated_date')
  int updatedDate = null;
  
  PollResource();

  @override
  String toString()  {
    return 'PollResource[active=$active, additionalProperties=$additionalProperties, answers=$answers, category=$category, createdDate=$createdDate, id=$id, tags=$tags, template=$template, text=$text, type=$type, updatedDate=$updatedDate, ]';
  }

}

