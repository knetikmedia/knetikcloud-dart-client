part of swagger.api;


@Entity()
class CountryTaxResource {
  /* The iso3 code of the country, cannot be changed */
  @Property(name: 'country_iso3')
  String countryIso3 = null;
  
/* The name of the tax */
  @Property(name: 'name')
  String name = null;
  
/* The tax rate as a percentage to a maximum of two decimal places (1.5 means 1.5%) */
  @Property(name: 'rate')
  double rate = null;
  
/* Whether the tax applies to shipping costs */
  @Property(name: 'tax_shipping')
  bool taxShipping = null;
  
  CountryTaxResource();

  @override
  String toString()  {
    return 'CountryTaxResource[countryIso3=$countryIso3, name=$name, rate=$rate, taxShipping=$taxShipping, ]';
  }

}

