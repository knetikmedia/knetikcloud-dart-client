part of swagger.api;


@Entity()
class AggregateCountResource {
  
  @Property(name: 'count')
  int count = null;
  

  @Property(name: 'date')
  String date = null;
  
  AggregateCountResource();

  @override
  String toString()  {
    return 'AggregateCountResource[count=$count, date=$date, ]';
  }

}

