part of swagger.api;


@Entity()
class AvailableSettingResource {
  /* Whether the setting is advanced. Default: false */
  @Property(name: 'advanced_option')
  bool advancedOption = null;
  
/* The default value of the setting (must be in options array). Ex: easy */
  @Property(name: 'default_value')
  String defaultValue = null;
  
/* The description of the setting: Ex: Choose the difficulty level to show more or less complicated questions (for a trivia activity) */
  @Property(name: 'description')
  String description = null;
  
/* The unique ID for the setting: Ex: difficulty */
  @Property(name: 'key')
  String key = null;
  
/* The textual name of the setting: Ex: Difficulty Level */
  @Property(name: 'name')
  String name = null;
  
/* The set of options available for this setting, Ex: easy, medium, hard */
  @Property(name: 'options')
  List<SettingOption> options = [];
  
/* The type of the setting value: Ex: TEXT */
  @Property(name: 'type')
  String type = null;
  
  AvailableSettingResource();

  @override
  String toString()  {
    return 'AvailableSettingResource[advancedOption=$advancedOption, defaultValue=$defaultValue, description=$description, key=$key, name=$name, options=$options, type=$type, ]';
  }

}

