part of swagger.api;


@Entity()
class VideoResource {
  /* Whether the video is available, based on various factors */
  @Property(name: 'active')
  bool active = null;
  
/* The original artist of the media. */
  @Property(name: 'author')
  SimpleReferenceResource«long» author = null;
  
/* The date the media was created as a unix timestamp in seconds. */
  @Property(name: 'authored')
  int authored = null;
  
/* Whether the video has been banned or not */
  @Property(name: 'banned')
  bool banned = null;
  
/* The category of the video */
  @Property(name: 'category')
  SimpleReferenceResource«string» category = null;
  
/* The comments of the video */
  @Property(name: 'comments')
  List<CommentResource> comments = [];
  
/* Artists that contributed to the creation. See separate endpoint to add to list */
  @Property(name: 'contributors')
  List<ContributionResource> contributors = [];
  
/* The date/time this resource was created in seconds since unix epoch */
  @Property(name: 'created_date')
  int createdDate = null;
  
/* The country of an embedable version. */
  @Property(name: 'embed')
  String embed = null;
  
/* The file extension of the media file. 1-5 characters. */
  @Property(name: 'extension')
  String extension = null;
  
/* The height of the video in px */
  @Property(name: 'height')
  int height = null;
  
/* The unique ID for that resource */
  @Property(name: 'id')
  int id = null;
  
/* The length of the video in seconds */
  @Property(name: 'length')
  int length = null;
  
/* The country of the media. Typically a url. Cannot be blank. */
  @Property(name: 'location')
  String location = null;
  
/* The user friendly name of that resource. Defaults to blank string */
  @Property(name: 'long_description')
  String longDescription = null;
  
/* The mime-type of the media. */
  @Property(name: 'mime_type')
  String mimeType = null;
  
/* The user friendly name of that resource */
  @Property(name: 'name')
  String name = null;
  
/* The sort order of the video. default: 100 */
  @Property(name: 'priority')
  int priority = null;
  
/* The privacy setting. default: private */
  @Property(name: 'privacy')
  String privacy = null;
  //enum privacyEnum {  private,  friends,  public,  };
/* Whether the video has been made public. Default true */
  @Property(name: 'published')
  bool published = null;
  
/* The user friendly name of that resource. Defaults to blank string */
  @Property(name: 'short_description')
  String shortDescription = null;
  
/* The size of the media. Minimum 0 if supplied */
  @Property(name: 'size')
  int size = null;
  
/* The tags for the video */
  @Property(name: 'tags')
  List<String> tags = [];
  
/* The country of a thumbnail version. Typically a url. */
  @Property(name: 'thumbnail')
  String thumbnail = null;
  
/* The date/time this resource was last updated in seconds since unix epoch */
  @Property(name: 'updated_date')
  int updatedDate = null;
  
/* The user the media was uploaded by. May be null for system uploaded media. May only be set to a user other than the current caller if VIDEOS_ADMIN permission. Null will mean the caller is the uploader unless the caller has VIDEOS_ADMIN permission, in which case it will be set to null. */
  @Property(name: 'uploader')
  SimpleUserResource uploader = null;
  
/* The view count of the video */
  @Property(name: 'views')
  int views = null;
  
/* The width of the video in px */
  @Property(name: 'width')
  int width = null;
  
  VideoResource();

  @override
  String toString()  {
    return 'VideoResource[active=$active, author=$author, authored=$authored, banned=$banned, category=$category, comments=$comments, contributors=$contributors, createdDate=$createdDate, embed=$embed, extension=$extension, height=$height, id=$id, length=$length, location=$location, longDescription=$longDescription, mimeType=$mimeType, name=$name, priority=$priority, privacy=$privacy, published=$published, shortDescription=$shortDescription, size=$size, tags=$tags, thumbnail=$thumbnail, updatedDate=$updatedDate, uploader=$uploader, views=$views, width=$width, ]';
  }

}

