part of swagger.api;


@Entity()
class Language {
  
  @Property(name: 'code')
  String code = null;
  

  @Property(name: 'date_created')
  int dateCreated = null;
  

  @Property(name: 'date_updated')
  int dateUpdated = null;
  

  @Property(name: 'description')
  String description = null;
  

  @Property(name: 'direction')
  String direction = null;
  

  @Property(name: 'id')
  int id = null;
  

  @Property(name: 'is_primary')
  bool isPrimary = null;
  

  @Property(name: 'name')
  String name = null;
  
  Language();

  @override
  String toString()  {
    return 'Language[code=$code, dateCreated=$dateCreated, dateUpdated=$dateUpdated, description=$description, direction=$direction, id=$id, isPrimary=$isPrimary, name=$name, ]';
  }

}

