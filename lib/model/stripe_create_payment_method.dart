part of swagger.api;


@Entity()
class StripeCreatePaymentMethod {
  /* Additional optional details to store on the payment method. If included, all fields in the details will override any defaults */
  @Property(name: 'details')
  PaymentMethodDetails details = null;
  
/* A token from Stripe to identify payment info to be tied to the customer */
  @Property(name: 'token')
  String token = null;
  
/* The id of the user, if null the logged in user is used. Admin privilege need to specify other users */
  @Property(name: 'user_id')
  int userId = null;
  
  StripeCreatePaymentMethod();

  @override
  String toString()  {
    return 'StripeCreatePaymentMethod[details=$details, token=$token, userId=$userId, ]';
  }

}

