part of swagger.api;


@Entity()
class Version {
  
  @Property(name: 'version')
  String version = null;
  
  Version();

  @override
  String toString()  {
    return 'Version[version=$version, ]';
  }

}

