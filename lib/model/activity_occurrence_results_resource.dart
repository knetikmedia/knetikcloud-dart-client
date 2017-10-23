part of swagger.api;


@Entity()
class ActivityOccurrenceResultsResource {
  /* The game results for each user. Include all users that played (paid to get in) even if they were eliminated without a result. A null metric is allowed */
  @Property(name: 'users')
  List<UserActivityResultsResource> users = [];
  
  ActivityOccurrenceResultsResource();

  @override
  String toString()  {
    return 'ActivityOccurrenceResultsResource[users=$users, ]';
  }

}

