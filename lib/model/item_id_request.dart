part of swagger.api;


@Entity()
class ItemIdRequest {
  
  @Property(name: 'item_id')
  int itemId = null;
  
  ItemIdRequest();

  @override
  String toString()  {
    return 'ItemIdRequest[itemId=$itemId, ]';
  }

}

