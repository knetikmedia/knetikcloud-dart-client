part of swagger.api;


@Entity()
class AvailableSettingResource {
  /* Whether the setting is advanced. Default: false */
  @Property(name: 'advanced_option')
  bool advancedOption = null;
  
/* The value of the default option (must be in options array) */
  @Property(name: 'default_value')
  String defaultValue = null;
  
/* The description of the setting */
  @Property(name: 'description')
  String description = null;
  
/* The unique ID for the setting */
  @Property(name: 'key')
  String key = null;
  
/* The textual name of the setting */
  @Property(name: 'name')
  String name = null;
  
/* The set of options available for this setting */
  @Property(name: 'options')
  List<SettingOption> options = [];
  
  AvailableSettingResource();

  @override
  String toString()  {
    return 'AvailableSettingResource[advancedOption=$advancedOption, defaultValue=$defaultValue, description=$description, key=$key, name=$name, options=$options, ]';
  }

}

