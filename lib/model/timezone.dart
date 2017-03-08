part of swagger.api;


@Entity()
class Timezone {
  
  @Property(name: 'code')
  String code = null;
  

  @Property(name: 'id')
  int id = null;
  

  @Property(name: 'name')
  String name = null;
  

  @Property(name: 'offset')
  double offset = null;
  
  Timezone();

  @override
  String toString()  {
    return 'Timezone[code=$code, id=$id, name=$name, offset=$offset, ]';
  }

}

