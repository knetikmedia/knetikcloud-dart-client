part of swagger.api;


@Entity()
class GooglePaymentRequest {
  /* The json payload exactly as sent from Google */
  @Property(name: 'json_payload')
  String jsonPayload = null;
  
/* The signature from Google to verify the payload */
  @Property(name: 'signature')
  String signature = null;
  
  GooglePaymentRequest();

  @override
  String toString()  {
    return 'GooglePaymentRequest[jsonPayload=$jsonPayload, signature=$signature, ]';
  }

}

