part of swagger.api;


@Entity()
class RevenueCountryReportResource {
  
  @Property(name: 'country')
  String country = null;
  

  @Property(name: 'revenue')
  num revenue = null;
  

  @Property(name: 'volume')
  int volume = null;
  
  RevenueCountryReportResource();

  @override
  String toString()  {
    return 'RevenueCountryReportResource[country=$country, revenue=$revenue, volume=$volume, ]';
  }

}

