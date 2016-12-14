part of swagger.api;


@Entity()
class MetricResource {
  /* The id of the activity occurence where this score/metric occured */
  @Property(name: 'activity_occurence_id')
  int activityOccurenceId = null;
  
/* The name of the metric */
  @Property(name: 'name')
  String name = null;
  
/* Any tags for the metric. Each unique tag will translate into a unique leaderboard. Maximum 5 tags and 50 characters each */
  @Property(name: 'tags')
  List<String> tags = [];
  
/* The value/score of the metric */
  @Property(name: 'value')
  int value = null;
  
  MetricResource();

  @override
  String toString()  {
    return 'MetricResource[activityOccurenceId=$activityOccurenceId, name=$name, tags=$tags, value=$value, ]';
  }

}

