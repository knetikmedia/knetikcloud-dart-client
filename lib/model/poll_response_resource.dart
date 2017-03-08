part of swagger.api;


@Entity()
class PollResponseResource {
  /* The answer to the poll */
  @Property(name: 'answer')
  String answer = null;
  
/* The date the poll was answered, in seconds since unix epoc */
  @Property(name: 'answered_date')
  int answeredDate = null;
  
/* The id of the poll response */
  @Property(name: 'id')
  String id = null;
  
/* The id of the poll */
  @Property(name: 'poll_id')
  String pollId = null;
  
/* The user */
  @Property(name: 'user')
  SimpleUserResource user = null;
  
  PollResponseResource();

  @override
  String toString()  {
    return 'PollResponseResource[answer=$answer, answeredDate=$answeredDate, id=$id, pollId=$pollId, user=$user, ]';
  }

}

