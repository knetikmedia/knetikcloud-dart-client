part of swagger.api;


@Entity()
class VideoTag {
  
  @Property(name: 'id')
  int id = null;
  

  @Property(name: 'tag')
  String tag = null;
  

  @Property(name: 'video')
  Video video = null;
  
  VideoTag();

  @override
  String toString()  {
    return 'VideoTag[id=$id, tag=$tag, video=$video, ]';
  }

}

