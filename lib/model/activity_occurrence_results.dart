part of swagger.api;


@Entity()
class ActivityOccurrenceResults {
  /* The game results for each user. Include all users that played (paid to get in) even if they were eliminated without a result. A null metric is allowed */
  @Property(name: 'users')
  List<UserActivityResults> users = [];
  
  ActivityOccurrenceResults();

  @override
  String toString()  {
    return 'ActivityOccurrenceResults[users=$users, ]';
  }

}

