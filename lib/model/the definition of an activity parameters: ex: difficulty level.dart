part of swagger.api;


@Entity()
class The definition of an activity parameters: ex: difficulty level {
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
  
  The definition of an activity parameters: ex: difficulty level();

  @override
  String toString()  {
    return 'The definition of an activity parameters: ex: difficulty level[advancedOption=$advancedOption, defaultValue=$defaultValue, description=$description, key=$key, name=$name, options=$options, ]';
  }

}

