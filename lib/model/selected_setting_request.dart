part of swagger.api;


@Entity()
class SelectedSettingRequest {
  /* The unique ID for the setting */
  @Property(name: 'key')
  String key = null;
  
/* The unique ID for the option. Must match one of the options from this setting in the activity, if not part of a challenge */
  @Property(name: 'value')
  String value = null;
  
  SelectedSettingRequest();

  @override
  String toString()  {
    return 'SelectedSettingRequest[key=$key, value=$value, ]';
  }

}

