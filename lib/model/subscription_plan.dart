part of swagger.api;


@Entity()
class SubscriptionPlan {
  
  @Property(name: 'additional_properties')
  Map<String, Property> additionalProperties = {};
  

  @Property(name: 'availability')
  String availability = null;
  //enum availabilityEnum {  all,  new_subscribers,  };

  @Property(name: 'bill_grace_days')
  int billGraceDays = null;
  

  @Property(name: 'consolidated')
  bool consolidated = null;
  

  @Property(name: 'first_bill')
  int firstBill = null;
  

  @Property(name: 'first_bill_unit_of_time')
  String firstBillUnitOfTime = null;
  //enum firstBillUnitOfTimeEnum {  millisecond,  second,  minute,  hour,  day,  week,  month,  year,  };

  @Property(name: 'id')
  String id = null;
  

  @Property(name: 'late_payment_sku')
  String latePaymentSku = null;
  

  @Property(name: 'locked')
  bool locked = null;
  

  @Property(name: 'max_auto_renew')
  int maxAutoRenew = null;
  

  @Property(name: 'max_bill_attempts')
  int maxBillAttempts = null;
  

  @Property(name: 'migration_plan')
  String migrationPlan = null;
  

  @Property(name: 'minimum_term')
  int minimumTerm = null;
  

  @Property(name: 'name')
  String name = null;
  

  @Property(name: 'primary_sku')
  String primarySku = null;
  

  @Property(name: 'reactivation_sku')
  String reactivationSku = null;
  

  @Property(name: 'recurring_sku')
  String recurringSku = null;
  

  @Property(name: 'renew_period')
  int renewPeriod = null;
  

  @Property(name: 'renew_period_unit_of_time')
  String renewPeriodUnitOfTime = null;
  //enum renewPeriodUnitOfTimeEnum {  millisecond,  second,  minute,  hour,  day,  week,  month,  year,  };

  @Property(name: 'subscription_id')
  int subscriptionId = null;
  
  SubscriptionPlan();

  @override
  String toString()  {
    return 'SubscriptionPlan[additionalProperties=$additionalProperties, availability=$availability, billGraceDays=$billGraceDays, consolidated=$consolidated, firstBill=$firstBill, firstBillUnitOfTime=$firstBillUnitOfTime, id=$id, latePaymentSku=$latePaymentSku, locked=$locked, maxAutoRenew=$maxAutoRenew, maxBillAttempts=$maxBillAttempts, migrationPlan=$migrationPlan, minimumTerm=$minimumTerm, name=$name, primarySku=$primarySku, reactivationSku=$reactivationSku, recurringSku=$recurringSku, renewPeriod=$renewPeriod, renewPeriodUnitOfTime=$renewPeriodUnitOfTime, subscriptionId=$subscriptionId, ]';
  }

}

