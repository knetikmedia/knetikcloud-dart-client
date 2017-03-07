part of swagger.api;


@Entity()
class AnswerResource {
  /* The answer to the question. Different 'type' values indicate different structures as the answer may be test, image, etc. See information on additional properties for the list and their structures */
  @Property(name: 'answer')
  Property answer = null;
  
/* Whether the answer is correct or not */
  @Property(name: 'correct')
  bool correct = null;
  
/* The unique ID for that resource */
  @Property(name: 'id')
  String id = null;
  
  AnswerResource();

  @override
  String toString()  {
    return 'AnswerResource[answer=$answer, correct=$correct, id=$id, ]';
  }

}

