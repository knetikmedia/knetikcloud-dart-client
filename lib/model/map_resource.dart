part of swagger.api;


@Entity()
class MapResource {
  
  @Property(name: 'definition')
  String definition = null;
  

  @Property(name: 'map')
  Map<String, ExpressionResource> map = {};
  

  @Property(name: 'type')
  String type = null;
  
  MapResource();

  @override
  String toString()  {
    return 'MapResource[definition=$definition, map=$map, type=$type, ]';
  }

}

