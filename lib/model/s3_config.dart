part of swagger.api;


@Entity()
class S3Config {
  
  @Property(name: 'bucket_name')
  String bucketName = null;
  

  @Property(name: 'cdn_url')
  String cdnUrl = null;
  

  @Property(name: 'region')
  String region = null;
  

  @Property(name: 'upload_prefix')
  String uploadPrefix = null;
  
  S3Config();

  @override
  String toString()  {
    return 'S3Config[bucketName=$bucketName, cdnUrl=$cdnUrl, region=$region, uploadPrefix=$uploadPrefix, ]';
  }

}

