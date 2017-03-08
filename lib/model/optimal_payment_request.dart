part of swagger.api;


@Entity()
class OptimalPaymentRequest {
  /* The email address of the user */
  @Property(name: 'email')
  String email = null;
  
/* The first name of the user */
  @Property(name: 'first_name')
  String firstName = null;
  
/* The id of the invoice to pay */
  @Property(name: 'invoice_id')
  int invoiceId = null;
  
/* The last name of the user */
  @Property(name: 'last_name')
  String lastName = null;
  
/* The url to redirect the user to after declining payment */
  @Property(name: 'on_decline')
  String onDecline = null;
  
/* The url to redirect the user to after an error in payment */
  @Property(name: 'on_error')
  String onError = null;
  
/* The url to redirect the user to after successful payment */
  @Property(name: 'on_success')
  String onSuccess = null;
  
  OptimalPaymentRequest();

  @override
  String toString()  {
    return 'OptimalPaymentRequest[email=$email, firstName=$firstName, invoiceId=$invoiceId, lastName=$lastName, onDecline=$onDecline, onError=$onError, onSuccess=$onSuccess, ]';
  }

}

