part of swagger.api;


@Entity()
class PriceOverridable {
  
  @Property(name: 'description')
  String description = null;
  
/* Used for polymorphic type recognition and thus must match an expected type with additional properties */
  @Property(name: 'type_hint')
  String typeHint = null;
  
/* The maximum price allowed */
  @Property(name: 'max_price')
  int maxPrice = null;
  
/* The minimum price allowed */
  @Property(name: 'min_price')
  int minPrice = null;
  
  PriceOverridable();

  @override
  String toString()  {
    return 'PriceOverridable[description=$description, typeHint=$typeHint, maxPrice=$maxPrice, minPrice=$minPrice, ]';
  }

}

