part of swagger.api;


@Entity()
class UserInventoryResource {
  /* A map of data for behaviors */
  @Property(name: 'behavior_data')
  Object behaviorData = null;
  
/* The date/time this resource was created in seconds since epoch */
  @Property(name: 'created_date')
  int createdDate = null;
  
/* The date/time this resource exires in seconds since epoch. Null for no expiration. For subscriptions, this is the end of the 'grace period' if left unpaid */
  @Property(name: 'expires')
  int expires = null;
  
/* The id of the inventory */
  @Property(name: 'id')
  int id = null;
  
/* The id of the invoice that resulted in this inventory, if any */
  @Property(name: 'invoice_id')
  int invoiceId = null;
  
/* The id of the item */
  @Property(name: 'item_id')
  int itemId = null;
  
/* The name of the item */
  @Property(name: 'item_name')
  String itemName = null;
  
/* The type hint of the item */
  @Property(name: 'item_type_hint')
  String itemTypeHint = null;
  
/* The status of the inventory. Pending inventory is not yet ready for use. Inactive inventory has expired or been used up */
  @Property(name: 'status')
  String status = null;
  //enum statusEnum {  pending,  active,  inactive,  };
/* The date/time this resource was last updated in seconds since epoch */
  @Property(name: 'updated_date')
  int updatedDate = null;
  
/* The id of the user this inventory belongs to */
  @Property(name: 'user')
  SimpleUserResource user = null;
  
  UserInventoryResource();

  @override
  String toString()  {
    return 'UserInventoryResource[behaviorData=$behaviorData, createdDate=$createdDate, expires=$expires, id=$id, invoiceId=$invoiceId, itemId=$itemId, itemName=$itemName, itemTypeHint=$itemTypeHint, status=$status, updatedDate=$updatedDate, user=$user, ]';
  }

}

