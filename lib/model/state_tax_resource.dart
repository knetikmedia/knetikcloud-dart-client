part of swagger.api;


@Entity()
class StateTaxResource {
  /* The iso3 code of the country, cannot be changed */
  @Property(name: 'country_iso3')
  String countryIso3 = null;
  
/* Whether the state is exempt from paying the country tax */
  @Property(name: 'federally_exempt')
  bool federallyExempt = null;
  
/* The name of the tax */
  @Property(name: 'name')
  String name = null;
  
/* The tax rate as a percentage to a maximum of two decimal places (1.5 means 1.5%) */
  @Property(name: 'rate')
  double rate = null;
  
/* The code of the state, cannot be changed */
  @Property(name: 'state_code')
  String stateCode = null;
  
/* Whether the tax applies to shipping costs */
  @Property(name: 'tax_shipping')
  bool taxShipping = null;
  
  StateTaxResource();

  @override
  String toString()  {
    return 'StateTaxResource[countryIso3=$countryIso3, federallyExempt=$federallyExempt, name=$name, rate=$rate, stateCode=$stateCode, taxShipping=$taxShipping, ]';
  }

}

