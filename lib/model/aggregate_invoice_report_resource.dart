part of swagger.api;


@Entity()
class AggregateInvoiceReportResource {
  
  @Property(name: 'count')
  int count = null;
  

  @Property(name: 'date')
  String date = null;
  

  @Property(name: 'revenue')
  num revenue = null;
  

  @Property(name: 'user_count')
  int userCount = null;
  
  AggregateInvoiceReportResource();

  @override
  String toString()  {
    return 'AggregateInvoiceReportResource[count=$count, date=$date, revenue=$revenue, userCount=$userCount, ]';
  }

}

