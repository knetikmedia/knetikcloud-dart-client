part of swagger.api;


@Entity()
class MapResource {
  
  @Property(name: 'map')
  Map<String, ExpressionResource> map = {};
  

  @Property(name: 'type')
  String type = null;
  
  MapResource();

  @override
  String toString()  {
    return 'MapResource[map=$map, type=$type, ]';
  }

}

