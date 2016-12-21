part of swagger.api;


@Entity()
class Group {
  
  @Property(name: 'additional_properties')
  Map<String, Property> additionalProperties = {};
  

  @Property(name: 'description')
  String description = null;
  

  @Property(name: 'id')
  int id = null;
  

  @Property(name: 'member_count')
  int memberCount = null;
  

  @Property(name: 'message_of_the_day')
  String messageOfTheDay = null;
  

  @Property(name: 'name')
  String name = null;
  

  @Property(name: 'parent')
  Group parent = null;
  

  @Property(name: 'properties_string')
  String propertiesString = null;
  

  @Property(name: 'status')
  String status = null;
  //enum statusEnum {  open,  closed,  };

  @Property(name: 'sub_member_count')
  int subMemberCount = null;
  

  @Property(name: 'template')
  String template = null;
  

  @Property(name: 'unique_name')
  String uniqueName = null;
  
  Group();

  @override
  String toString()  {
    return 'Group[additionalProperties=$additionalProperties, description=$description, id=$id, memberCount=$memberCount, messageOfTheDay=$messageOfTheDay, name=$name, parent=$parent, propertiesString=$propertiesString, status=$status, subMemberCount=$subMemberCount, template=$template, uniqueName=$uniqueName, ]';
  }

}

