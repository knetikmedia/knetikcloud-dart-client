part of swagger.api;


@Entity()
class PaymentMethodResource {
  /* The date/time this resource was created in seconds since unix epoch */
  @Property(name: 'created_date')
  int createdDate = null;
  

  @Property(name: 'default')
  bool _default = null;
  
/* Whether this payment method is disabled or not */
  @Property(name: 'disabled')
  bool disabled = null;
  
/* The expiration date for the payment method, expressed as seconds since epoch. Typically used for credit card payment methods */
  @Property(name: 'expiration_date')
  int expirationDate = null;
  
/* The expiration month (1 - 12) for the payment method. Typically used for credit card payment methods */
  @Property(name: 'expiration_month')
  int expirationMonth = null;
  
/* The expiration year for the payment method. Typically used for credit card payment methods */
  @Property(name: 'expiration_year')
  int expirationYear = null;
  
/* The unique ID for that resource */
  @Property(name: 'id')
  int id = null;
  
/* The last 4 digits of the account number for the payment method. Typically used for credit card payment methods */
  @Property(name: 'last4')
  String last4 = null;
  
/* The user friendly name of that resource. Defaults to blank string */
  @Property(name: 'long_description')
  String longDescription = null;
  
/* The user friendly name of that resource */
  @Property(name: 'name')
  String name = null;
  
/* The type of payment method. Must be a pre-existing value */
  @Property(name: 'payment_method_type')
  PaymentMethodTypeResource paymentMethodType = null;
  
/* The generic payment type. Default is card */
  @Property(name: 'payment_type')
  String paymentType = null;
  //enum paymentTypeEnum {  card,  bank_account,  };
/* The user friendly name of that resource. Defaults to blank string */
  @Property(name: 'short_description')
  String shortDescription = null;
  
/* The sort value for the payment method */
  @Property(name: 'sort')
  int sort = null;
  
/* The unique token for the payment method */
  @Property(name: 'token')
  String token = null;
  
/* An optional unique identifier */
  @Property(name: 'unique_key')
  String uniqueKey = null;
  
/* The date/time this resource was last updated in seconds since unix epoch */
  @Property(name: 'updated_date')
  int updatedDate = null;
  
/* The user's id. If null, indicates a shared payment method that any user can use (i.e., 'wallet') */
  @Property(name: 'user_id')
  int userId = null;
  

  @Property(name: 'verified')
  bool verified = null;
  
  PaymentMethodResource();

  @override
  String toString()  {
    return 'PaymentMethodResource[createdDate=$createdDate, _default=$_default, disabled=$disabled, expirationDate=$expirationDate, expirationMonth=$expirationMonth, expirationYear=$expirationYear, id=$id, last4=$last4, longDescription=$longDescription, name=$name, paymentMethodType=$paymentMethodType, paymentType=$paymentType, shortDescription=$shortDescription, sort=$sort, token=$token, uniqueKey=$uniqueKey, updatedDate=$updatedDate, userId=$userId, verified=$verified, ]';
  }

}

