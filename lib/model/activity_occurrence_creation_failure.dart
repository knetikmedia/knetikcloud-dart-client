part of swagger.api;


@Entity()
class ActivityOccurrenceCreationFailure {
  /* The details of each user's entry, or just the current user's if not run with ACTIVITIES_ADMIN permission */
  @Property(name: 'user_results')
  List<ActivityOccurrenceJoinResult> userResults = [];
  
  ActivityOccurrenceCreationFailure();

  @override
  String toString()  {
    return 'ActivityOccurrenceCreationFailure[userResults=$userResults, ]';
  }

}

