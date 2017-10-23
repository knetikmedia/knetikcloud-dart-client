part of swagger.api;


@Entity()
class RevenueProductReportResource {
  
  @Property(name: 'item_id')
  int itemId = null;
  

  @Property(name: 'item_name')
  String itemName = null;
  

  @Property(name: 'revenue')
  num revenue = null;
  

  @Property(name: 'volume')
  int volume = null;
  
  RevenueProductReportResource();

  @override
  String toString()  {
    return 'RevenueProductReportResource[itemId=$itemId, itemName=$itemName, revenue=$revenue, volume=$volume, ]';
  }

}

