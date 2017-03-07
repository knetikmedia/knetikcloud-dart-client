part of swagger.api;


@Entity()
class UsageInfo {
  /* The number of requests within the range */
  @Property(name: 'count')
  int count = null;
  
/* The date at the start of the range (see granularity) */
  @Property(name: 'date')
  int date = null;
  
/* The http method */
  @Property(name: 'method')
  String method = null;
  
/* The url path */
  @Property(name: 'url')
  String url = null;
  
  UsageInfo();

  @override
  String toString()  {
    return 'UsageInfo[count=$count, date=$date, method=$method, url=$url, ]';
  }

}

