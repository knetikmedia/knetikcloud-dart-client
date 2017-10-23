part of swagger.api;


@Entity()
class QuestionTemplateResource {
  /* Whether to allow additional properties beyond those specified or not */
  @Property(name: 'allow_additional')
  bool allowAdditional = null;
  
/* A property definition for all answers. If included each answer must match this definition's type and be valid */
  @Property(name: 'answer_property')
  PropertyDefinitionResource answerProperty = null;
  
/* The date/time this resource was created in seconds since unix epoch */
  @Property(name: 'created_date')
  int createdDate = null;
  
/* The id of the template */
  @Property(name: 'id')
  String id = null;
  
/* The name of the template */
  @Property(name: 'name')
  String name = null;
  
/* The customized properties that are present */
  @Property(name: 'properties')
  List<PropertyDefinitionResource> properties = [];
  
/* A property definition for the question itself. If included the answer must match this definition's type and be valid */
  @Property(name: 'question_property')
  PropertyDefinitionResource questionProperty = null;
  
/* The date/time this resource was last updated in seconds since unix epoch */
  @Property(name: 'updated_date')
  int updatedDate = null;
  
  QuestionTemplateResource();

  @override
  String toString()  {
    return 'QuestionTemplateResource[allowAdditional=$allowAdditional, answerProperty=$answerProperty, createdDate=$createdDate, id=$id, name=$name, properties=$properties, questionProperty=$questionProperty, updatedDate=$updatedDate, ]';
  }

}

