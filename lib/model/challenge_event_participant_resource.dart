part of swagger.api;


@Entity()
class ChallengeEventParticipantResource {
  /* The email address of the user */
  @Property(name: 'email')
  String email = null;
  
/* The full name of the user */
  @Property(name: 'fullname')
  String fullname = null;
  
/* The user's score */
  @Property(name: 'score')
  int score = null;
  
/* The id of the user */
  @Property(name: 'user_id')
  int userId = null;
  
/* The username of the user */
  @Property(name: 'username')
  String username = null;
  
  ChallengeEventParticipantResource();

  @override
  String toString()  {
    return 'ChallengeEventParticipantResource[email=$email, fullname=$fullname, score=$score, userId=$userId, username=$username, ]';
  }

}

