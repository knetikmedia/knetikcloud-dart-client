part of swagger.api;


@Entity()
class BooleanResource {
  
  @Property(name: 'value')
  bool value = null;
  
  BooleanResource();

  @override
  String toString()  {
    return 'BooleanResource[value=$value, ]';
  }

}

