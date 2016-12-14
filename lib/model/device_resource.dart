part of swagger.api;


@Entity()
class DeviceResource {
  /* The authorization code for the device */
  @Property(name: 'authorization')
  String authorization = null;
  
/* The current condition of the device (New, Defective, Reconditioned) */
  @Property(name: 'condition')
  String condition = null;
  //enum conditionEnum {  New,  Defective,  Reconditioned,  };
/* The date the device log was created */
  @Property(name: 'created_date')
  int createdDate = null;
  
/* The key/value pairs for extended data */
  @Property(name: 'data')
  Map<String, String> data = {};
  
/* The description of the device */
  @Property(name: 'description')
  String description = null;
  
/* The type of the device */
  @Property(name: 'device_type')
  String deviceType = null;
  
/* The unique ID for this device */
  @Property(name: 'id')
  int id = null;
  
/* The OS (operating system) on the device */
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
  
/* The name of the user */
  @Property(name: 'name')
  String name = null;
  
/* The OS (operating system) on the device */
  @Property(name: 'os')
  String os = null;
  
/* The serial number of the device */
  @Property(name: 'serial')
  String serial = null;
  
/* The current status the device (Active, Pending Active, Inactive, Repair */
  @Property(name: 'status')
  String status = null;
  //enum statusEnum {  Active,  PendingActive,  Inactive,  Repair,  };
/* The date the device log was updated */
  @Property(name: 'updated_date')
  int updatedDate = null;
  
/* The user that owns the device */
  @Property(name: 'user')
  SimpleUserResource user = null;
  
  DeviceResource();

  @override
  String toString()  {
    return 'DeviceResource[authorization=$authorization, condition=$condition, createdDate=$createdDate, data=$data, description=$description, deviceType=$deviceType, id=$id, location=$location, macAddress=$macAddress, make=$make, model=$model, name=$name, os=$os, serial=$serial, status=$status, updatedDate=$updatedDate, user=$user, ]';
  }

}

