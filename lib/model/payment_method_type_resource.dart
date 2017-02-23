part of swagger.api;


@Entity()
class PaymentMethodTypeResource {
  /* The id of the payment method type */
  @Property(name: 'id')
  int id = null;
  
/* The name of the payment method type */
  @Property(name: 'name')
  String name = null;
  
  PaymentMethodTypeResource();

  @override
  String toString()  {
    return 'PaymentMethodTypeResource[id=$id, name=$name, ]';
  }

}

