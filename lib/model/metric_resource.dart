part of swagger.api;


@Entity()
class MetricResource {
  /* The id of the activity occurence where this score/metric occurred */
  @Property(name: 'activity_occurence_id')
  int activityOccurenceId = null;
  
/* Any tags for the metric. Each unique tag will translate into a unique leaderboard. Maximum 10 tags and 50 characters each */
  @Property(name: 'tags')
  List<String> tags = [];
  
/* The id of the user this metric is for. Default to caller and requires METRICS_ADMIN permission to specify another */
  @Property(name: 'user_id')
  int userId = null;
  
/* The value/score of the metric */
  @Property(name: 'value')
  int value = null;
  
  MetricResource();

  @override
  String toString()  {
    return 'MetricResource[activityOccurenceId=$activityOccurenceId, tags=$tags, userId=$userId, value=$value, ]';
  }

}

