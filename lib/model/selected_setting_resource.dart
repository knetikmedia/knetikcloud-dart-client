part of swagger.api;


@Entity()
class SelectedSettingResource {
  /* The unique ID for the setting */
  @Property(name: 'key')
  String key = null;
  
/* The textual name of the setting */
  @Property(name: 'key_name')
  String keyName = null;
  
/* The unique ID for the option. Must match one of the options from this setting in the activity, if not part of a challenge */
  @Property(name: 'value')
  String value = null;
  
/* The textual name of the option */
  @Property(name: 'value_name')
  String valueName = null;
  
  SelectedSettingResource();

  @override
  String toString()  {
    return 'SelectedSettingResource[key=$key, keyName=$keyName, value=$value, valueName=$valueName, ]';
  }

}

