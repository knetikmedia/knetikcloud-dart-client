part of swagger.api;


@Entity()
class PayBySavedMethodRequest {
  /* The id of the payment method to use. Must belong to the caller, be public or have PAYMENTS_ADMIN permission */
  @Property(name: 'payment_method')
  int paymentMethod = null;
  
  PayBySavedMethodRequest();

  @override
  String toString()  {
    return 'PayBySavedMethodRequest[paymentMethod=$paymentMethod, ]';
  }

}

