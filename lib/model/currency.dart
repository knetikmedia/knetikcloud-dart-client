part of swagger.api;


@Entity()
class Currency {
  
  @Property(name: 'active')
  bool active = null;
  

  @Property(name: 'code')
  String code = null;
  

  @Property(name: 'date_created')
  int dateCreated = null;
  

  @Property(name: 'date_updated')
  int dateUpdated = null;
  

  @Property(name: 'factor')
  double factor = null;
  

  @Property(name: 'icon')
  String icon = null;
  

  @Property(name: 'id')
  int id = null;
  

  @Property(name: 'name')
  String name = null;
  

  @Property(name: 'type')
  String type = null;
  //enum typeEnum {  real,  virtual,  };

  @Property(name: 'virtual')
  bool virtual = null;
  
  Currency();

  @override
  String toString()  {
    return 'Currency[active=$active, code=$code, dateCreated=$dateCreated, dateUpdated=$dateUpdated, factor=$factor, icon=$icon, id=$id, name=$name, type=$type, virtual=$virtual, ]';
  }

}

