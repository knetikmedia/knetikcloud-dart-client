part of swagger.api;


@Entity()
class BillingReport {
  
  @Property(name: 'created')
  int created = null;
  

  @Property(name: 'id')
  String id = null;
  

  @Property(name: 'last_known_failures')
  List<String> lastKnownFailures = [];
  

  @Property(name: 'scheduled')
  int scheduled = null;
  

  @Property(name: 'statistics')
  Map<String, int> statistics = {};
  
  BillingReport();

  @override
  String toString()  {
    return 'BillingReport[created=$created, id=$id, lastKnownFailures=$lastKnownFailures, scheduled=$scheduled, statistics=$statistics, ]';
  }

}

