part of swagger.api;


@Entity()
class RefundRequest {
  /* The amount to refund. If left off, will refund the remaining balance of the transaction or specific item balance (if SKU provided), whichever is less. */
  @Property(name: 'amount')
  num amount = null;
  
/* The SKU of a bundle item from the invoice that the target item is within. */
  @Property(name: 'bundle_sku')
  String bundleSku = null;
  
/* Notes about or reason for the refund */
  @Property(name: 'notes')
  String notes = null;
  
/* The SKU of a specific item from the invoice to refund. Affects the maximum refund amount (not to exceed the price of this item times quantity on invoice). Transaction must be tied to an invoice if used. */
  @Property(name: 'sku')
  String sku = null;
  
  RefundRequest();

  @override
  String toString()  {
    return 'RefundRequest[amount=$amount, bundleSku=$bundleSku, notes=$notes, sku=$sku, ]';
  }

}

