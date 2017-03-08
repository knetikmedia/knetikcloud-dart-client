part of swagger.api;


@Entity()
class InvoiceResource {
  /* Line one of the customer's billing address */
  @Property(name: 'billing_address1')
  String billingAddress1 = null;
  
/* Line two of the customer's billing address */
  @Property(name: 'billing_address2')
  String billingAddress2 = null;
  
/* The city for the customer's billing address */
  @Property(name: 'billing_city_name')
  String billingCityName = null;
  
/* The country for the customer's billing address */
  @Property(name: 'billing_country_name')
  String billingCountryName = null;
  
/* The customer's name for the billing address */
  @Property(name: 'billing_full_name')
  String billingFullName = null;
  
/* The postal code for the customer's billing address */
  @Property(name: 'billing_postal_code')
  String billingPostalCode = null;
  
/* The state for the customer's billing address */
  @Property(name: 'billing_state_name')
  String billingStateName = null;
  
/* The guid of the cart this invoice came from */
  @Property(name: 'cart_id')
  String cartId = null;
  
/* The date the invoice was created, unix timestamp in seconds */
  @Property(name: 'created_date')
  int createdDate = null;
  
/* The code for the currency invoice prices are in */
  @Property(name: 'currency')
  String currency = null;
  
/* The fulfillment status of the invoice */
  @Property(name: 'current_fulfillment_status')
  String currentFulfillmentStatus = null;
  
/* The payment status of the invoice */
  @Property(name: 'current_payment_status')
  String currentPaymentStatus = null;
  
/* The amount of money saved through coupons */
  @Property(name: 'discount')
  double discount = null;
  
/* The customer's email address */
  @Property(name: 'email')
  String email = null;
  
/* An external reference to filter on */
  @Property(name: 'external_ref')
  String externalRef = null;
  
/* The amount of federal tax added */
  @Property(name: 'fed_tax')
  double fedTax = null;
  
/* The final price of the invoice */
  @Property(name: 'grand_total')
  double grandTotal = null;
  
/* The id of the invoice */
  @Property(name: 'id')
  int id = null;
  
/* A reference number for the invoice */
  @Property(name: 'invoice_number')
  String invoiceNumber = null;
  
/* A list of items within the invoice */
  @Property(name: 'items')
  List<InvoiceItemResource> items = [];
  
/* The customer's name prefix */
  @Property(name: 'name_prefix')
  String namePrefix = null;
  
/* Notes about the order */
  @Property(name: 'order_notes')
  String orderNotes = null;
  
/* The id of an invoice this is a child of */
  @Property(name: 'parent_invoice_id')
  int parentInvoiceId = null;
  
/* The id of a saved payment method used to pay for the invoice */
  @Property(name: 'payment_method_id')
  int paymentMethodId = null;
  
/* The customer's phone number */
  @Property(name: 'phone')
  String phone = null;
  
/* The customer's phone number */
  @Property(name: 'phone_number')
  String phoneNumber = null;
  
/* The shipping cost */
  @Property(name: 'shipping')
  double shipping = null;
  
/* Line one of the customer's shipping address */
  @Property(name: 'shipping_address1')
  String shippingAddress1 = null;
  
/* Line two of the customer's shipping address */
  @Property(name: 'shipping_address2')
  String shippingAddress2 = null;
  
/* The city for the customer's shipping address */
  @Property(name: 'shipping_city_name')
  String shippingCityName = null;
  
/* The country for the customer's shipping address */
  @Property(name: 'shipping_country_name')
  String shippingCountryName = null;
  
/* The customer's name for the shipping address */
  @Property(name: 'shipping_full_name')
  String shippingFullName = null;
  
/* The postal code for the customer's shipping address */
  @Property(name: 'shipping_postal_code')
  String shippingPostalCode = null;
  
/* The state for the customer's shipping address */
  @Property(name: 'shipping_state_name')
  String shippingStateName = null;
  
/* A number to use in sorting items. default 500. */
  @Property(name: 'sort')
  int sort = null;
  
/* The amount of state tax added */
  @Property(name: 'state_tax')
  double stateTax = null;
  
/* The sum price of all items before shipping, coupons and tax */
  @Property(name: 'subtotal')
  double subtotal = null;
  
/* The date the invoice was last updated, unix timestamp in seconds */
  @Property(name: 'updated_date')
  int updatedDate = null;
  
/* The owner of the invoice */
  @Property(name: 'user')
  SimpleUserResource user = null;
  
/* The id of the vendor */
  @Property(name: 'vendor_id')
  int vendorId = null;
  
/* The name of the invoice */
  @Property(name: 'vendor_name')
  String vendorName = null;
  
  InvoiceResource();

  @override
  String toString()  {
    return 'InvoiceResource[billingAddress1=$billingAddress1, billingAddress2=$billingAddress2, billingCityName=$billingCityName, billingCountryName=$billingCountryName, billingFullName=$billingFullName, billingPostalCode=$billingPostalCode, billingStateName=$billingStateName, cartId=$cartId, createdDate=$createdDate, currency=$currency, currentFulfillmentStatus=$currentFulfillmentStatus, currentPaymentStatus=$currentPaymentStatus, discount=$discount, email=$email, externalRef=$externalRef, fedTax=$fedTax, grandTotal=$grandTotal, id=$id, invoiceNumber=$invoiceNumber, items=$items, namePrefix=$namePrefix, orderNotes=$orderNotes, parentInvoiceId=$parentInvoiceId, paymentMethodId=$paymentMethodId, phone=$phone, phoneNumber=$phoneNumber, shipping=$shipping, shippingAddress1=$shippingAddress1, shippingAddress2=$shippingAddress2, shippingCityName=$shippingCityName, shippingCountryName=$shippingCountryName, shippingFullName=$shippingFullName, shippingPostalCode=$shippingPostalCode, shippingStateName=$shippingStateName, sort=$sort, stateTax=$stateTax, subtotal=$subtotal, updatedDate=$updatedDate, user=$user, vendorId=$vendorId, vendorName=$vendorName, ]';
  }

}

