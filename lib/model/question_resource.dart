part of swagger.api;


@Entity()
class QuestionResource {
  /* A map of additional properties, keyed on the property name.  Must match the names and types defined in the template for this item type */
  @Property(name: 'additional_properties')
  Map<String, Property> additionalProperties = {};
  
/* The list of available answers */
  @Property(name: 'answers')
  List<AnswerResource> answers = [];
  
/* The category for the question */
  @Property(name: 'category')
  NestedCategory category = null;
  
/* The date/time this resource was created in seconds since unix epoch */
  @Property(name: 'created_date')
  int createdDate = null;
  
/* The difficulty of the question */
  @Property(name: 'difficulty')
  int difficulty = null;
  
/* The unique ID for that resource */
  @Property(name: 'id')
  String id = null;
  
/* The id of the import job that created the question, or null if not from an import */
  @Property(name: 'import_id')
  int importId = null;
  
/* When the question becomes available, null for never, in seconds since epoch */
  @Property(name: 'published_date')
  int publishedDate = null;
  
/* The question. Different 'type' values indicate different structures as the question may be test, image, etc. See information on additional properties for the list and their structures */
  @Property(name: 'question')
  Property question = null;
  
/* The first source of the question */
  @Property(name: 'source1')
  String source1 = null;
  
/* The second source of the question */
  @Property(name: 'source2')
  String source2 = null;
  
/* The list of tags */
  @Property(name: 'tags')
  List<String> tags = [];
  
/* A question template this question is validated against (private). May be null and no validation of additional_properties will be done */
  @Property(name: 'template')
  String template = null;
  
/* The date/time this resource was last updated in seconds since unix epoch */
  @Property(name: 'updated_date')
  int updatedDate = null;
  
/* The supplier of the question */
  @Property(name: 'vendor')
  String vendor = null;
  
  QuestionResource();

  @override
  String toString()  {
    return 'QuestionResource[additionalProperties=$additionalProperties, answers=$answers, category=$category, createdDate=$createdDate, difficulty=$difficulty, id=$id, importId=$importId, publishedDate=$publishedDate, question=$question, source1=$source1, source2=$source2, tags=$tags, template=$template, updatedDate=$updatedDate, vendor=$vendor, ]';
  }

}

