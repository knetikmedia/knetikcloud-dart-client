part of swagger.api;


@Entity()
class DeltaResource {
  /* The id of the category for question */
  @Property(name: 'category_id')
  String categoryId = null;
  
/* The media type of the question */
  @Property(name: 'media_type')
  String mediaType = null;
  
/* The id of the question */
  @Property(name: 'question_id')
  String questionId = null;
  
/* Whether the question was updated or removed */
  @Property(name: 'state')
  String state = null;
  //enum stateEnum {  UPDATED,  REMOVED,  };
/* The tags for the question */
  @Property(name: 'tags')
  List<String> tags = [];
  
/* The date this question was last updated in seconds since unix epoch */
  @Property(name: 'updated_date')
  int updatedDate = null;
  
  DeltaResource();

  @override
  String toString()  {
    return 'DeltaResource[categoryId=$categoryId, mediaType=$mediaType, questionId=$questionId, state=$state, tags=$tags, updatedDate=$updatedDate, ]';
  }

}

