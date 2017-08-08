part of swagger.api;


@Entity()
class AmazonS3Activity {
  /* S3 action (i.e., 'PUT') associated with the activity */
  @Property(name: 'action')
  String action = null;
  
/* URL for accessing the resource via CDN if configured (will default to the main url if not) */
  @Property(name: 'cdn_url')
  String cdnUrl = null;
  
/* Date the resource was created in S3 */
  @Property(name: 'created_date')
  int createdDate = null;
  
/* Name of the file being processed as a resource in S3 */
  @Property(name: 'filename')
  String filename = null;
  
/* Unique id of the S3 activity */
  @Property(name: 'id')
  int id = null;
  
/* S3 object key for the resource */
  @Property(name: 'object_key')
  String objectKey = null;
  
/* URL for posting and later accessing the S3 resource */
  @Property(name: 'url')
  String url = null;
  
/* The id of the user that created this S3 activity */
  @Property(name: 'user_id')
  int userId = null;
  
  AmazonS3Activity();

  @override
  String toString()  {
    return 'AmazonS3Activity[action=$action, cdnUrl=$cdnUrl, createdDate=$createdDate, filename=$filename, id=$id, objectKey=$objectKey, url=$url, userId=$userId, ]';
  }

}

