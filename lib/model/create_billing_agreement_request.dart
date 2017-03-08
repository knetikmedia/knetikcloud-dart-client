part of swagger.api;


@Entity()
class CreateBillingAgreementRequest {
  /* The endpoint URL to which PayPal should forward the user if they cancel (do not accept) the agreement */
  @Property(name: 'cancel_url')
  String cancelUrl = null;
  
/* The endpoint URL to which PayPal should forward the user after they accept the agreement. This endpoint will receive information needed for the next step */
  @Property(name: 'return_url')
  String returnUrl = null;
  
/* The ID of the user. Defaults to the logged in user */
  @Property(name: 'user_id')
  int userId = null;
  
  CreateBillingAgreementRequest();

  @override
  String toString()  {
    return 'CreateBillingAgreementRequest[cancelUrl=$cancelUrl, returnUrl=$returnUrl, userId=$userId, ]';
  }

}

