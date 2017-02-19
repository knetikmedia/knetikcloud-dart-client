part of swagger.api;


@Entity()
class InvoiceCreateRequest {
  /* The guid of a cart to create a new invoice for */
  @Property(name: 'cart_guid')
  String cartGuid = null;
  
  InvoiceCreateRequest();

  @override
  String toString()  {
    return 'InvoiceCreateRequest[cartGuid=$cartGuid, ]';
  }

}

