part of swagger.api;


@Entity()
class AchievementProgressUpdateRequest {
  /* Whether to add one to the current progress instead of setting it to progress_value. Default: false */
  @Property(name: 'increment_value')
  bool incrementValue = null;
  
/* The amount of progress towards earning the achievement. The max/target depends on the achievement. Required if increment_value is false/missing. */
  @Property(name: 'progress_value')
  int progressValue = null;
  
  AchievementProgressUpdateRequest();

  @override
  String toString()  {
    return 'AchievementProgressUpdateRequest[incrementValue=$incrementValue, progressValue=$progressValue, ]';
  }

}

