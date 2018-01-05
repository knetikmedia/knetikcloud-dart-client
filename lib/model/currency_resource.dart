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
  
/* Whether this is the default currency. All real money wallets will be in this currency, and the 'factor' on each currency is in relation to the default. There must be one default currency and the current will be changed if you set another as the default. Cannot be combined with virtual currency. Take extreme caution when changing */
  @Property(name: 'default_currency')
  bool defaultCurrency = null;
  
/* The decimal to multiply the default currency to localize to this one. Should be 1 for the default currency itself. */
  @Property(name: 'factor')
  num factor = null;
  
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
    return 'CurrencyResource[active=$active, code=$code, createdDate=$createdDate, defaultCurrency=$defaultCurrency, factor=$factor, icon=$icon, name=$name, type=$type, updatedDate=$updatedDate, ]';
  }

}

