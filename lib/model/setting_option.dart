part of swagger.api;


@Entity()
class SettingOption {
  /* The textual name of the option: Ex: Hard (level 10) */
  @Property(name: 'name')
  String name = null;
  
/* The value of the option. Ex: 10 */
  @Property(name: 'value')
  String value = null;
  
  SettingOption();

  @override
  String toString()  {
    return 'SettingOption[name=$name, value=$value, ]';
  }

}

