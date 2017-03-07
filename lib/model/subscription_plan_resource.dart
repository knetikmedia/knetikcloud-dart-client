part of swagger.api;


@Entity()
class SubscriptionPlanResource {
  /* A map of additional properties, keyed on the property name.  Must match the names and types defined in the template for this subscription */
  @Property(name: 'additional_properties')
  Map<String, Property> additionalProperties = {};
  
/* The length of the billing cycle in number of billing cycle unit */
  @Property(name: 'billing_cycle_length')
  int billingCycleLength = null;
  
/* The time period unit to apply to the length of billing cycles */
  @Property(name: 'billing_cycle_unit')
  String billingCycleUnit = null;
  //enum billingCycleUnitEnum {  millisecond,  second,  minute,  hour,  day,  week,  month,  year,  };
/* Whether this plan will be renewed on the consolidated billing cycle */
  @Property(name: 'consolidated')
  bool consolidated = null;
  
/* The ISO3 currency code to use for the fees */
  @Property(name: 'currency_code')
  String currencyCode = null;
  
/* Used to schedule plan availability end date */
  @Property(name: 'end_date')
  int endDate = null;
  
/* Optional override for the length of the first billing cycle before the first recurring billing */
  @Property(name: 'first_billing_cycle_length')
  int firstBillingCycleLength = null;
  
/* The time period unit to apply to the length of the first billing cycle. Required when first_billing_cycle_length is specified */
  @Property(name: 'first_billing_cycle_unit')
  String firstBillingCycleUnit = null;
  //enum firstBillingCycleUnitEnum {  millisecond,  second,  minute,  hour,  day,  week,  month,  year,  };
/* The number of late payment days before a subscription is canceled */
  @Property(name: 'grace_period')
  int gracePeriod = null;
  
/* The id of the plan used to generate the SKUs */
  @Property(name: 'id')
  String id = null;
  
/* The fee charged when the subscription is purchased */
  @Property(name: 'initial_fee')
  double initialFee = null;
  
/* The SKU to be used when purchasing the subscription through the cart */
  @Property(name: 'initial_sku')
  String initialSku = null;
  
/* The fee to add to the bill when an invoice has gone unpaid passed the grace period */
  @Property(name: 'late_payment_fee')
  double latePaymentFee = null;
  
/* The SKU that will show on the invoice when the subscription is delinquent */
  @Property(name: 'late_payment_sku')
  String latePaymentSku = null;
  
/* Whether this plan is locked because it has been purchased by at least one user.  When locked, a number of properties can no longer be changed */
  @Property(name: 'locked')
  bool locked = null;
  
/* The number of charge attempts before the subscription becomes delinquent */
  @Property(name: 'max_bill_attempts')
  int maxBillAttempts = null;
  
/* Maximum number of renewals. If a migration plan is provided, the subscription will automatically switch to it when this limit is reached */
  @Property(name: 'max_cycles')
  int maxCycles = null;
  
/* Automatically migrate to the specified plan when the subscription is first renewed */
  @Property(name: 'migrate_to_plan')
  String migrateToPlan = null;
  
/* The minimum number of renewals to charge for */
  @Property(name: 'min_cycles')
  int minCycles = null;
  
/* The name of the plan used to generate the SKUs */
  @Property(name: 'name')
  String name = null;
  
/* Whether this plan is currently available */
  @Property(name: 'published')
  bool published = null;
  
/* The fee to charge when a suspended subscription is to be re-activated */
  @Property(name: 'reactivation_fee')
  double reactivationFee = null;
  
/* The SKU that will show on the invoice when the subscription is re-activated after a suspension */
  @Property(name: 'reactivation_sku')
  String reactivationSku = null;
  
/* The recurring fee to charge for each renewal */
  @Property(name: 'recurring_fee')
  double recurringFee = null;
  
/* The SKU that will show on the invoice when the subscription is activated */
  @Property(name: 'recurring_sku')
  String recurringSku = null;
  
/* Used to schedule plan availability start date */
  @Property(name: 'start_date')
  int startDate = null;
  
  SubscriptionPlanResource();

  @override
  String toString()  {
    return 'SubscriptionPlanResource[additionalProperties=$additionalProperties, billingCycleLength=$billingCycleLength, billingCycleUnit=$billingCycleUnit, consolidated=$consolidated, currencyCode=$currencyCode, endDate=$endDate, firstBillingCycleLength=$firstBillingCycleLength, firstBillingCycleUnit=$firstBillingCycleUnit, gracePeriod=$gracePeriod, id=$id, initialFee=$initialFee, initialSku=$initialSku, latePaymentFee=$latePaymentFee, latePaymentSku=$latePaymentSku, locked=$locked, maxBillAttempts=$maxBillAttempts, maxCycles=$maxCycles, migrateToPlan=$migrateToPlan, minCycles=$minCycles, name=$name, published=$published, reactivationFee=$reactivationFee, reactivationSku=$reactivationSku, recurringFee=$recurringFee, recurringSku=$recurringSku, startDate=$startDate, ]';
  }

}

