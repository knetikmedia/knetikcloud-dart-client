part of swagger.api;


@Entity()
class PaymentMethodDetails {
  
  @Property(name: 'default')
  bool _default = null;
  
/* The expiration date for the payment method, expressed as seconds since epoch. Typically used for credit card payment methods */
  @Property(name: 'expiration_date')
  int expirationDate = null;
  
/* The expiration month (1 - 12) for the payment method. Typically used for credit card payment methods */
  @Property(name: 'expiration_month')
  int expirationMonth = null;
  
/* The expiration year for the payment method. Typically used for credit card payment methods */
  @Property(name: 'expiration_year')
  int expirationYear = null;
  
/* The last 4 digits of the account number for the payment method. Typically used for credit card payment methods */
  @Property(name: 'last4')
  String last4 = null;
  
/* The sort value for the payment method */
  @Property(name: 'sort')
  int sort = null;
  
/* An optional unique identifier */
  @Property(name: 'unique_key')
  String uniqueKey = null;
  

  @Property(name: 'verified')
  bool verified = null;
  
  PaymentMethodDetails();

  @override
  String toString()  {
    return 'PaymentMethodDetails[_default=$_default, expirationDate=$expirationDate, expirationMonth=$expirationMonth, expirationYear=$expirationYear, last4=$last4, sort=$sort, uniqueKey=$uniqueKey, verified=$verified, ]';
  }

}

