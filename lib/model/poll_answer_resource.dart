part of swagger.api;


@Entity()
class PollAnswerResource {
  /* The number of users that selected this answer */
  @Property(name: 'count')
  int count = null;
  
/* The key to the answer (for code reference) */
  @Property(name: 'key')
  String key = null;
  
/* The text of the answer (for user display) */
  @Property(name: 'text')
  String text = null;
  
  PollAnswerResource();

  @override
  String toString()  {
    return 'PollAnswerResource[count=$count, key=$key, text=$text, ]';
  }

}

