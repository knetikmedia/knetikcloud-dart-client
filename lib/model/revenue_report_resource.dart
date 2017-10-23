part of swagger.api;


@Entity()
class RevenueReportResource {
  
  @Property(name: 'customer_count')
  int customerCount = null;
  

  @Property(name: 'sale_count')
  int saleCount = null;
  

  @Property(name: 'sales_average')
  num salesAverage = null;
  

  @Property(name: 'sales_total')
  num salesTotal = null;
  
  RevenueReportResource();

  @override
  String toString()  {
    return 'RevenueReportResource[customerCount=$customerCount, saleCount=$saleCount, salesAverage=$salesAverage, salesTotal=$salesTotal, ]';
  }

}

