part of swagger.api;


@Entity()
class SubscriptionPriceOverrideRequest {
  /* The recurring price that has been set to override the base price. Null if not overriding */
  @Property(name: 'new_price')
  double newPrice = null;
  
/* An explanation for the reason the price is being overridden */
  @Property(name: 'reason')
  String reason = null;
  
  SubscriptionPriceOverrideRequest();

  @override
  String toString()  {
    return 'SubscriptionPriceOverrideRequest[newPrice=$newPrice, reason=$reason, ]';
  }

}

