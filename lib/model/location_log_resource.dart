part of swagger.api;


@Entity()
class LocationLogResource {
  
  @Property(name: 'country')
  String country = null;
  

  @Property(name: 'ip')
  String ip = null;
  

  @Property(name: 'time')
  int time = null;
  
  LocationLogResource();

  @override
  String toString()  {
    return 'LocationLogResource[country=$country, ip=$ip, time=$time, ]';
  }

}

