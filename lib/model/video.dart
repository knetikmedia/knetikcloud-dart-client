part of swagger.api;


@Entity()
class Video {
  
  @Property(name: 'active')
  bool active = null;
  

  @Property(name: 'author')
  Artist author = null;
  

  @Property(name: 'authored')
  int authored = null;
  

  @Property(name: 'banned')
  bool banned = null;
  

  @Property(name: 'category_id')
  String categoryId = null;
  

  @Property(name: 'category_name')
  String categoryName = null;
  

  @Property(name: 'contributors')
  Collection«VideoContribution» contributors = null;
  

  @Property(name: 'created')
  int created = null;
  

  @Property(name: 'embed')
  String embed = null;
  

  @Property(name: 'extension')
  String extension = null;
  

  @Property(name: 'height')
  int height = null;
  

  @Property(name: 'id')
  int id = null;
  

  @Property(name: 'length')
  int length = null;
  

  @Property(name: 'location')
  String location = null;
  

  @Property(name: 'long_description')
  String longDescription = null;
  

  @Property(name: 'mime_type')
  String mimeType = null;
  

  @Property(name: 'name')
  String name = null;
  

  @Property(name: 'priority')
  int priority = null;
  

  @Property(name: 'privacy')
  String privacy = null;
  //enum privacyEnum {  private,  friends,  public,  };

  @Property(name: 'published')
  bool published = null;
  

  @Property(name: 'short_description')
  String shortDescription = null;
  

  @Property(name: 'size')
  int size = null;
  

  @Property(name: 'tags')
  List<VideoTag> tags = [];
  

  @Property(name: 'thumbnail')
  String thumbnail = null;
  

  @Property(name: 'updated')
  int updated = null;
  

  @Property(name: 'uploader')
  User uploader = null;
  

  @Property(name: 'views')
  int views = null;
  

  @Property(name: 'whitelist')
  List<User> whitelist = [];
  

  @Property(name: 'width')
  int width = null;
  
  Video();

  @override
  String toString()  {
    return 'Video[active=$active, author=$author, authored=$authored, banned=$banned, categoryId=$categoryId, categoryName=$categoryName, contributors=$contributors, created=$created, embed=$embed, extension=$extension, height=$height, id=$id, length=$length, location=$location, longDescription=$longDescription, mimeType=$mimeType, name=$name, priority=$priority, privacy=$privacy, published=$published, shortDescription=$shortDescription, size=$size, tags=$tags, thumbnail=$thumbnail, updated=$updated, uploader=$uploader, views=$views, whitelist=$whitelist, width=$width, ]';
  }

}

