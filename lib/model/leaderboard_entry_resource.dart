part of swagger.api;


@Entity()
class LeaderboardEntryResource {
  /* The position of the user in the leaderboard. Null means non-compete or disqualification */
  @Property(name: 'rank')
  int rank = null;
  
/* The raw score in this leaderboard. Null means non-compete or disqualification */
  @Property(name: 'score')
  int score = null;
  
/* The date this score was recorded or updated. Unix timestamp in seconds */
  @Property(name: 'updated_date')
  int updatedDate = null;
  
/* The player for this entry */
  @Property(name: 'user')
  SimpleUserResource user = null;
  
  LeaderboardEntryResource();

  @override
  String toString()  {
    return 'LeaderboardEntryResource[rank=$rank, score=$score, updatedDate=$updatedDate, user=$user, ]';
  }

}

