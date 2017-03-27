part of swagger.api;


@Entity()
class SettingOption {
  /* The textual name of the option */
  @Property(name: 'name')
  String name = null;
  
/* The unique ID for the option */
  @Property(name: 'value')
  String value = null;
  
  SettingOption();

  @override
  String toString()  {
    return 'SettingOption[name=$name, value=$value, ]';
  }

}

