part of swagger.api;


@Entity()
class VideoContribution {
  
  @Property(name: 'artist')
  Artist artist = null;
  

  @Property(name: 'id')
  int id = null;
  

  @Property(name: 'media')
  Video media = null;
  

  @Property(name: 'role')
  String role = null;
  
  VideoContribution();

  @override
  String toString()  {
    return 'VideoContribution[artist=$artist, id=$id, media=$media, role=$role, ]';
  }

}

