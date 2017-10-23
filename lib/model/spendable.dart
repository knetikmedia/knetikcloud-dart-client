part of swagger.api;


@Entity()
class Spendable {
  
  @Property(name: 'description')
  String description = null;
  
/* Used for polymorphic type recognition and thus must match an expected type with additional properties */
  @Property(name: 'type_hint')
  String typeHint = null;
  
/* The code of the currency */
  @Property(name: 'currency_code')
  String currencyCode = null;
  
/* The spendable value */
  @Property(name: 'value')
  int value = null;
  
  Spendable();

  @override
  String toString()  {
    return 'Spendable[description=$description, typeHint=$typeHint, currencyCode=$currencyCode, value=$value, ]';
  }

}

