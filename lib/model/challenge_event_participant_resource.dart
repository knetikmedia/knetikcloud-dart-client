part of swagger.api;


@Entity()
class ChallengeEventParticipantResource {
  
  @Property(name: 'email')
  String email = null;
  

  @Property(name: 'fullname')
  String fullname = null;
  

  @Property(name: 'score')
  int score = null;
  

  @Property(name: 'user_id')
  int userId = null;
  

  @Property(name: 'username')
  String username = null;
  
  ChallengeEventParticipantResource();

  @override
  String toString()  {
    return 'ChallengeEventParticipantResource[email=$email, fullname=$fullname, score=$score, userId=$userId, username=$username, ]';
  }

}

