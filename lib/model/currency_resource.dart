part of swagger.api;


@Entity()
class CurrencyResource {
  /* Whether the currency is active. Default true */
  @Property(name: 'active')
  bool active = null;
  
/* The unique id code for the currency. Maximum 5 characters */
  @Property(name: 'code')
  String code = null;
  
/* The unix timestamp in seconds the currency was added to the system */
  @Property(name: 'created_date')
  int createdDate = null;
  
/* The decimal to multiply the system base currency (from config 'currency') to localize to this one. Should be 1 for the base currency itself. */
  @Property(name: 'factor')
  double factor = null;
  
/* The url for an icon of the currency */
  @Property(name: 'icon')
  String icon = null;
  
/* The name of the currency */
  @Property(name: 'name')
  String name = null;
  
/* The type of currency. Default 'real' */
  @Property(name: 'type')
  String type = null;
  //enum typeEnum {  real,  virtual,  };
/* The unix timestamp in seconds the currency was last updated in the system. */
  @Property(name: 'updated_date')
  int updatedDate = null;
  
  CurrencyResource();

  @override
  String toString()  {
    return 'CurrencyResource[active=$active, code=$code, createdDate=$createdDate, factor=$factor, icon=$icon, name=$name, type=$type, updatedDate=$updatedDate, ]';
  }

}

