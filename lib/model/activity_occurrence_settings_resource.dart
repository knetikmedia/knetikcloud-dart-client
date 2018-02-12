part of swagger.api;


@Entity()
class ActivityOccurrenceSettingsResource {
  /* Defines core settings about the activity occurrence that affect how it behaves in the system. Validated against core settings in activity/challenge-activity. */
  @Property(name: 'core_settings')
  CoreActivityOccurrenceSettings coreSettings = null;
  
/* The values selected from the available settings defined for the activity. Ex: difficulty: hard. Can be left out if the activity is played during an event and the settings are already set at the event level. Ex: every monday, difficulty: hard, number of questions: 10, category: sport. Otherwise, the set must exactly match those of the activity. */
  @Property(name: 'settings')
  List<SelectedSettingRequest> settings = [];
  
  ActivityOccurrenceSettingsResource();

  @override
  String toString()  {
    return 'ActivityOccurrenceSettingsResource[coreSettings=$coreSettings, settings=$settings, ]';
  }

}

