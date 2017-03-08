part of swagger.api;


@Entity()
class LeaderboardResource {
  /* The paginated list of user results, in order from best to worst */
  @Property(name: 'entries')
  List<LeaderboardEntryResource> entries = [];
  
/* The id of the leaderboard */
  @Property(name: 'id')
  int id = null;
  
/* The name of the strategy that defines how entries are stored and compared */
  @Property(name: 'strategy')
  String strategy = null;
  
  LeaderboardResource();

  @override
  String toString()  {
    return 'LeaderboardResource[entries=$entries, id=$id, strategy=$strategy, ]';
  }

}

