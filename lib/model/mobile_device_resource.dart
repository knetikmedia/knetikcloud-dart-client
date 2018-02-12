part of swagger.api;


@Entity()
class MobileDeviceResource {
  /* A map of additional properties, keyed on the property name.  Must match the names and types defined in the template if one is specified */
  @Property(name: 'additional_properties')
  Map<String, Property> additionalProperties = {};
  
/* The date the device log was created */
  @Property(name: 'created_date')
  int createdDate = null;
  
/* The description of the device */
  @Property(name: 'description')
  String description = null;
  
/* The type of device. Use mobile_device to specifically register mobile devices. This particular type will be used to send and receive notifications */
  @Property(name: 'device_type')
  String deviceType = null;
  
/* The unique ID for this device. Cannot be changed after creation. Default: random */
  @Property(name: 'id')
  String id = null;
  
/* The physical location of the device, coordinates or named place (office, living room, etc) */
  @Property(name: 'location')
  String location = null;
  
/* The MAC (media access control) address of the device */
  @Property(name: 'mac_address')
  String macAddress = null;
  
/* The make of the device */
  @Property(name: 'make')
  String make = null;
  
/* The model of the device */
  @Property(name: 'model')
  String model = null;
  
/* The name of the device */
  @Property(name: 'name')
  String name = null;
  
/* The OS (operating system) on the device */
  @Property(name: 'os')
  String os = null;
  
/* The user that owns the device */
  @Property(name: 'owner')
  SimpleUserResource owner = null;
  
/* The serial number of the device */
  @Property(name: 'serial')
  String serial = null;
  
/* Random tags to facilitate search */
  @Property(name: 'tags')
  List<String> tags = [];
  
/* Use to describe and validate custom properties (custom schema). May be null and no validation of additional_properties will be done */
  @Property(name: 'template')
  String template = null;
  
/* The date the device log was updated */
  @Property(name: 'updated_date')
  int updatedDate = null;
  
/* The users currently using the device */
  @Property(name: 'users')
  List<SimpleUserResource> users = [];
  
/* The authorization code for push notifications provided by the provider platform (APNS, GCM, etc). */
  @Property(name: 'authorization')
  String authorization = null;
  

  @Property(name: 'imei')
  String imei = null;
  
/* The platform used for push notifications. Only Apple and Android are supported at the moment. */
  @Property(name: 'notification_platform')
  String notificationPlatform = null;
  //enum notificationPlatformEnum {  APNS,  GCM,  };
/* The phone number associated with this device if applicable, in international format */
  @Property(name: 'number')
  String number = null;
  
  MobileDeviceResource();

  @override
  String toString()  {
    return 'MobileDeviceResource[additionalProperties=$additionalProperties, createdDate=$createdDate, description=$description, deviceType=$deviceType, id=$id, location=$location, macAddress=$macAddress, make=$make, model=$model, name=$name, os=$os, owner=$owner, serial=$serial, tags=$tags, template=$template, updatedDate=$updatedDate, users=$users, authorization=$authorization, imei=$imei, notificationPlatform=$notificationPlatform, number=$number, ]';
  }

}

